# ATSAMA5D27-WLSOM1 Evaluation Kit

https://www.microchip.com/DevelopmentTools/ProductDetails/PartNO/DM320117

![ATSAMA5D27-WLSOM1 Evaluation Kit image](assets/images/ATSAMA5D27-WLSOM1.jpg)
<br><sup>[Image credit](https://www.microchip.com/_ImagedCopy/191126-MPU-PHOTO-ATSAMA5D27-WLSOM1-EK1%20Evaluation%20Kit-Angle-5x7.jpg)</sup>

| Feature              | Description                     |
| -------------------- | ------------------------------- |
| CPU                  | 500 MHz ARM Cortex-A5           |
| Memory               | 256M DDR2                       |
| Storage              | MicroSD                         |
| GPIO, I2C, SPI       | Yes - [Elixir Circuits](https://github.com/elixir-circuits) |
| UART                 | ttyS0                           |
| Ethernet             | Yes                             |
| Video                | Yes                             |
| Camera Interface     | Yes - Parallel ISC              |

# Using

The most common way of using this Nerves System is create a project with `mix
nerves.new` and to export `MIX_TARGET=sama5d27_wlsom1_ek`. See the [Getting started
guide](https://hexdocs.pm/nerves/getting-started.html#creating-a-new-nerves-app)
for more information.

If you need custom modifications to this system for your device, clone this
repository and update as described in [Making custom
systems](https://hexdocs.pm/nerves/systems.html#customizing-your-own-nerves-system)

# Wifi

The WLSOM1 contains a ATWILC3000 Wifi / Bluetooth module. Wifi can be enabled
by loading the kernel module.

```text
iex> System.cmd("modprobe", ["wilc-sdio"])
```

# Ethernet

A unique hardware address for the eth0 interface is programmed into the QSPI
flash memory from the factory and is read set by U-Boot. Inorder to read from
the flash memory, you will need to ensure the QSPI flash is being powered by
removing the shunt from jumper J8 labeled "Disable Boot".

The hardware address of the interface can also be forced by setting the U-Boot
environment variable `ethaddr`. If neither of these locations are accessible,
Linux will assign a random hardware address to the interface on every boot.

# Supported USB WiFi Devices

The base image includes drivers and firmware for Ralink RT53xx (rt2800usb
driver) and RealTek RTL8712U (r8712u driver) devices.

We are still working out which subset of all possible WiFi dongles to support in
our images. At some point, we may have the option to support all dongles and
selectively install modules at packaging time, but until then, these drivers and
their associated firmware blobs add significantly to Nerves release images.

If you are unsure what driver your WiFi dongle requires, run Debian and
configure WiFi for your device. At a shell prompt, run lsmod to see which
drivers are loaded. Running dmesg may also give a clue. When using dmesg,
reinsert the USB dongle to generate new log messages if you don't see them.

## Provisioning devices

This system supports storing provisioning information in a small key-value store
outside of any filesystem. Provisioning is an optional step and reasonable
defaults are provided if this is missing.

Provisioning information can be queried using the Nerves.Runtime KV store's
[`Nerves.Runtime.KV.get/1`](https://hexdocs.pm/nerves_runtime/Nerves.Runtime.KV.html#get/1)
function.

Keys used by this system are:

Key                    | Example Value     | Description
:--------------------- | :---------------- | :----------
`nerves_serial_number` | `"12345678"`      | By default, this string is used to create unique hostnames and Erlang node names.

The normal procedure would be to set these keys once in manufacturing or before
deployment and then leave them alone.

For example, to provision a serial number on a running device, run the following
and reboot:

```elixir
iex> cmd("fw_setenv nerves_serial_number 12345678")
```

This system supports setting the serial number offline. To do this, set the
`NERVES_SERIAL_NUMBER` environment variable when burning the firmware. If you're
programming MicroSD cards using `fwup`, the commandline is:

```sh
sudo NERVES_SERIAL_NUMBER=12345678 fwup path_to_firmware.fw
```

Serial numbers are stored on the MicroSD card so if the MicroSD card is
replaced, the serial number will need to be reprogrammed. The numbers are stored
in a U-boot environment block. This is a special region that is separate from
the application partition so reformatting the application partition will not
lose the serial number or any other data stored in this block.

Additional key value pairs can be provisioned by overriding the default provisioning.conf
file location by setting the environment variable
`NERVES_PROVISIONING=/path/to/provisioning.conf`. The default provisioning.conf
will set the `nerves_serial_number`, if you override the location to this file,
you will be responsible for setting this yourself.

