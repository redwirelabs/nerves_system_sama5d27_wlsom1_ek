# Changelog

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
