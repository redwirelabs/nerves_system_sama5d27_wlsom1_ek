# Changelog

## v0.4.3

This release fixes issues with the WILC3000 Wi-Fi module becoming unresponsive
and potentially triggering the watchdog in access point (AP) mode. After
reconfiguring the interface at runtime when it's in AP mode, reset the
module with:

```elixir
cmd "rmmod wilc-sdio"
cmd "modprobe wilc-sdio"
```

* Changes
  * Switch to the mainline Linux WILC driver

## v0.4.2

* Changes
  * Add support for WILC3000 Wi-Fi + Bluetooth module
  * Update U-Boot to [linux4sam-2022.10](https://github.com/linux4sam/u-boot-at91/releases/tag/linux4sam-2022.10)

## v0.4.1

Update your application's [nerves_runtime](https://hex.pm/packages/nerves_runtime) to `0.13.3` or greater if you
need the fix for `Nerves.Runtime.poweroff`.

* Changes
  * Enable the U-Boot console
  * Update `nerves_system_br` for:
    * `nerves_heart` changes to the watchdog for reboots and poweroff
    * Buildroot bug/security fixes

* Updated dependencies
  * [nerves_system_br: v1.21.4](https://github.com/nerves-project/nerves_system_br/releases/tag/v1.21.4)

**Known Issues**

The WILC3000 Wi-Fi / BLE module does not appear to be working in this version.
The `wilc-sdio` driver loads, but the module doesn't show up as `wlan0`.

## v0.4.0

This version brings several dependencies up to date:
- Erlang `OTP 25`
- Linux kernel `linux4microchip-2022.10`
- AT bootloader `v4.0.5`
- Toolchain `1.6.1`
- GCC 11

The logical GPIO numbers have been updated to be compatible with [Circuits.GPIO](https://github.com/elixir-circuits/circuits_gpio).
For example, pin `PA1` is logically `gpio1`. See the [GPIO section](https://github.com/amclain/nerves_system_sama5d27_wlsom1_ek#gpio)
in the readme for a full chart of the mappings.

* Dependencies
  * [nerves_system_br: v1.21.2](https://github.com/nerves-project/nerves_system_br/releases/tag/v1.21.2)
  * [Erlang/OTP 25.1.2](https://erlang.org/download/OTP-25.1.2.README)

**Known Issues**

The WILC3000 Wi-Fi / BLE module does not appear to be working in this version.
The `wilc-sdio` driver loads, but the module doesn't show up as `wlan0`.

## v0.3.0

This version bumps the toolchain to v1.4.3 which includes updates to GCC 10.

* Dependencies
  * [linux](https://github.com/linux4sam/linux-at91/releases/tag/linux4sam-2021.04)
  * [nerves_system_br: v1.16.3](https://github.com/nerves-project/nerves_system_br/releases/tag/v1.16.3)
  * [Erlang/OTP 24.0.4](https://erlang.org/download/OTP-24.0.4.README)

## v0.2.0

The device tree and linux kernel are now loaded from the squashfs root file
system. 

* Bug fixes
  * `wlan0` could encouter an error indicated by the error `cfg_indicate_rx: Receive unknown message`
    when transferring firmware or large file streams. The SDIO interface speed was reduced from 
    50Mhz to 48Mhz. 

* Dependencies
  * [nerves_system_br: v1.14.0](https://github.com/nerves-project/nerves_system_br/releases/tag/v1.14.4)
  * [Erlang/OTP 23.2.4](https://erlang.org/download/OTP-23.2.4.README)


## v0.1.0

Initial release

* Dependencies
  * [nerves_system_br: v1.14.0](https://github.com/nerves-project/nerves_system_br/releases/tag/v1.14.0)
  * [Erlang/OTP 23.2.1](https://erlang.org/download/OTP-23.2.1.README)
