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

### Docs

- [ATSAMA5D27-WLSOM1-EK1 dev kit user guide](https://ww1.microchip.com/downloads/en/DeviceDoc/SAMA5D2-Wireless-SOM1-Kit-User's-Guide-50002931d.pdf)
- [ATSAMA5D27-WLSOM1 datasheet](http://ww1.microchip.com/downloads/en/DeviceDoc/ATSAMA5D27-WLSOM1-Datasheet-60001590b.pdf)
- [SAMA5D2 series datasheet](https://ww1.microchip.com/downloads/en/DeviceDoc/DS60001476B.pdf)

# Using

The most common way of using this Nerves System is create a project with `mix
nerves.new` and to export `MIX_TARGET=sama5d27_wlsom1_ek`. See the [Getting started
guide](https://hexdocs.pm/nerves/getting-started.html#creating-a-new-nerves-app)
for more information.

If you need custom modifications to this system for your device, clone this
repository and update as described in [Making custom
systems](https://hexdocs.pm/nerves/systems.html#customizing-your-own-nerves-system)

# GPIO

The WLSOM1 exposes four banks of GPIO: `A`, `B`, `C`, `D`. The physical GPIO
pins are numbered logically in sequence from `PA0` (`gpio0`) to
`PD31` (`gpio127`) when exposed via sysfs or [`Circuits.GPIO`](https://hex.pm/packages/circuits_gpio).

|  Pin  |  GPIO  |   |  Pin  |  GPIO  |   |  Pin  |  GPIO  |   |  Pin  |  GPIO  |
|  ---  |  ----  | - |  ---  |  ----  | - |  ---  |  ----  | - |  ---  |  ----  |
|  PA0  |  0  | |  PB0  |  32  | |  PC0  |  64  | |  PD0  |  96  |
|  PA1  |  1  | |  PB1  |  33  | |  PC1  |  65  | |  PD1  |  97  |
|  PA2  |  2  | |  PB2  |  34  | |  PC2  |  66  | |  PD2  |  98  |
|  PA3  |  3  | |  PB3  |  35  | |  PC3  |  67  | |  PD3  |  99  |
|  PA4  |  4  | |  PB4  |  36  | |  PC4  |  68  | |  PD4  |  100  |
|  PA5  |  5  | |  PB5  |  37  | |  PC5  |  69  | |  PD5  |  101  |
|  PA6  |  6  | |  PB6  |  38  | |  PC6  |  70  | |  PD6  |  102  |
|  PA7  |  7  | |  PB7  |  39  | |  PC7  |  71  | |  PD7  |  103  |
|  PA8  |  8  | |  PB8  |  40  | |  PC8  |  72  | |  PD8  |  104  |
|  PA9  |  9  | |  PB9  |  41  | |  PC9  |  73  | |  PD9  |  105  |
|  PA10  |  10  | |  PB10  |  42  | |  PC10  |  74  | |  PD10  |  106  |
|  PA11  |  11  | |  PB11  |  43  | |  PC11  |  75  | |  PD11  |  107  |
|  PA12  |  12  | |  PB12  |  44  | |  PC12  |  76  | |  PD12  |  108  |
|  PA13  |  13  | |  PB13  |  45  | |  PC13  |  77  | |  PD13  |  109  |
|  PA14  |  14  | |  PB14  |  46  | |  PC14  |  78  | |  PD14  |  110  |
|  PA15  |  15  | |  PB15  |  47  | |  PC15  |  79  | |  PD15  |  111  |
|  PA16  |  16  | |  PB16  |  48  | |  PC16  |  80  | |  PD16  |  112  |
|  PA17  |  17  | |  PB17  |  49  | |  PC17  |  81  | |  PD17  |  113  |
|  PA18  |  18  | |  PB18  |  50  | |  PC18  |  82  | |  PD18  |  114  |
|  PA19  |  19  | |  PB19  |  51  | |  PC19  |  83  | |  PD19  |  115  |
|  PA20  |  20  | |  PB20  |  52  | |  PC20  |  84  | |  PD20  |  116  |
|  PA21  |  21  | |  PB21  |  53  | |  PC21  |  85  | |  PD21  |  117  |
|  PA22  |  22  | |  PB22  |  54  | |  PC22  |  86  | |  PD22  |  118  |
|  PA23  |  23  | |  PB23  |  55  | |  PC23  |  87  | |  PD23  |  119  |
|  PA24  |  24  | |  PB24  |  56  | |  PC24  |  88  | |  PD24  |  120  |
|  PA25  |  25  | |  PB25  |  57  | |  PC25  |  89  | |  PD25  |  121  |
|  PA26  |  26  | |  PB26  |  58  | |  PC26  |  90  | |  PD26  |  122  |
|  PA27  |  27  | |  PB27  |  59  | |  PC27  |  91  | |  PD27  |  123  |
|  PA28  |  28  | |  PB28  |  60  | |  PC28  |  92  | |  PD28  |  124  |
|  PA29  |  29  | |  PB29  |  61  | |  PC29  |  93  | |  PD29  |  125  |
|  PA30  |  30  | |  PB30  |  62  | |  PC30  |  94  | |  PD30  |  126  |
|  PA31  |  31  | |  PB31  |  63  | |  PC31  |  95  | |  PD31  |  127  |

# UART

|  Header  |  Device  |
|  ------  |  ------  |
|  mikro BUS 1  |  `ttyS3`  |
|  mikro BUS 2  |  `ttyS2`  |

# Wi-Fi

The WLSOM1 contains a ATWILC3000 Wi-Fi / Bluetooth module. Wi-Fi can be enabled
by loading the kernel module.

```elixir
iex> cmd "modprobe wilc-sdio"
```

If the Wi-Fi module is set to access point (AP) mode, it will need to be reset
if its VintageNet configuration is updated at runtime.

```elixir
cmd "rmmod wilc-sdio"
cmd "modprobe wilc-sdio"
```

*The Wi-Fi module supports 8 connected devices in access point (AP) mode.*

# Bluetooth

The ATWILC3000 includes Bluetooth Low Energy capabilities that can be utilized
after following a specific configuration and startup sequence. In general, there
are two routes that can be taken to make use of Bluetooth in Nerves: [BlueZ](http://www.bluez.org/)
and [BlueHeron](https://github.com/blue-heron/blue_heron). So far, only BlueZ
has been tested on the WLSOM1.

## BlueZ

In order to use the BlueZ stack, there are a number of config options and
packages that are required.

Add these config options to the Linux defconfig:
```
CONFIG_BT_HCIUART=m
CONFIG_BT_HCIUART_H4=y
```

Add these packages to `nerves_defconfig`:
```
BR2_PACKAGE_BLUEZ5_UTILS=y
BR2_PACKAGE_BLUEZ5_UTILS_CLIENT=y
BR2_PACKAGE_BLUEZ5_UTILS_TOOLS=y
BR2_PACKAGE_BLUEZ5_UTILS_DEPRECATED=y
```

**Note:** The Bluetooth power up sequence requires _both_ `dbus-daemon`
and `bluetoothd`. It is recommended to use either [MuonTrap](https://github.com/fhunleth/muontrap)
or [Ports](https://hexdocs.pm/elixir/main/Port.html) for running them as
background processes.

Here is an example that uses Ports for the startup sequence:

```elixir
System.cmd("modprobe", ["wilc-sdio"])
Process.sleep(5000)

File.write("/dev/wilc_bt", "BT_POWER_UP")
Process.sleep(1000)

File.write("/dev/wilc_bt", "BT_DOWNLOAD_FW")
Process.sleep(100)

File.rm_rf("/run/messagebus.pid")
File.mkdir_p("/run/dbus")

Port.open(
  {:spawn_executable, "/usr/bin/dbus-daemon"},
  [:binary, :exit_status, :stderr_to_stdout,
    args: ["--system", "--nofork"]]
)

System.cmd("hciattach", ["/dev/ttyS1", "any", "115200", "noflow", "nosleep"])
Process.sleep(300)

System.cmd("hciconfig", ["hci0", "up"])

File.mkdir_p("/data/bluetooth")

Port.open(
  {:spawn_executable, "/usr/libexec/bluetooth/bluetoothd"},
  [:binary, :exit_status, :stderr_to_stdout,
    args: ["-p", "time", "-n", "-C", "--localstatedir=/data"]]
)
```

`bluetoothctl` can be used to run various Bluetooth Low Energy operations.
Here is an example of how to open a port for running `bluetoothctl`:

```elixir
bluetoothctl = Port.open(
  {:spawn_executable, "/usr/bin/bluetoothctl"},
  [:binary, :exit_status, :stderr_to_stdout]
)
```

# Ethernet

A unique hardware address for the eth0 interface is programmed into the QSPI
flash memory from the factory and is read set by U-Boot. Inorder to read from
the flash memory, you will need to ensure the QSPI flash is being powered by
removing the shunt from jumper J8 labeled "Disable Boot".

The hardware address of the interface can also be forced by setting the U-Boot
environment variable `ethaddr`. If neither of these locations are accessible,
Linux will assign a random hardware address to the interface on every boot.

# Supported USB Wi-Fi Devices

The base image includes drivers and firmware for Ralink RT53xx (rt2800usb
driver) and RealTek RTL8712U (r8712u driver) devices.

We are still working out which subset of all possible Wi-Fi dongles to support
in our images. At some point, we may have the option to support all dongles and
selectively install modules at packaging time, but until then, these drivers and
their associated firmware blobs add significantly to Nerves release images.

If you are unsure what driver your Wi-Fi dongle requires, run Debian and
configure Wi-Fi for your device. At a shell prompt, run lsmod to see which
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

## Hostname

By default the hostname will only include the last 4 digits of the board
identifier. If you would rather use the entire identifier, set the following
in your `config/target.exs` file:

```elixir
config :nerves,
  erlinit: [
    uniqueid_exec: "boardid"
  ]
```
