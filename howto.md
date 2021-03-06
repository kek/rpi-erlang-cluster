# How To

## wpa-supplicant.conf

```
country=GB
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1

network={
    ssid="your wifi name"
    psk="your wifi password"
}
```

## secrets.yml

Needs to contain the keys `erlang_cookie` and `secret_key_base`. The provided
key contains the values for my particular project, encrypted with ansible-vault.

## ~/.rpi_vault_pass

```sh
#!/bin/sh

echo "the password that I use for storing secrets in secrets.yml (example)"
```

## You need to download the nginx role

`ansible-galaxy install -r requirements.yml`

## Change keyboard layout

To do: Configure /etc/defaults/keyboard via the Ansible scripts

## Configure locales

To do: Do the equivalent of `dpkg-reconfigure locales` via the Ansible scripts

## X

apt-get install --install-recommends lxde lightdm xinit xorg

## Bluetooth audio

sudo apt-get install bluez pulseaudio-module-bluetooth python-gobject python-gobject-2 bluez-tools

http://www.instructables.com/id/Turn-your-Raspberry-Pi-into-a-Portable-Bluetooth-A/

bt-speaker
https://github.com/lukasjapan/bt-speaker

install-netatalk.sh

## Todo

- Add a status page with system metrics
- Extract app name to variable
- Move all ansible stuff into a directory
