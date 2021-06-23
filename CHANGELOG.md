# Changelog

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
