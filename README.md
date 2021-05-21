# i3-config-iso
My archiso profile for i3. Just a vanilla Arch installation with my custom i3 config files.

Note: My keyboard is ```pt```, so all the keymaps are ```pt```. To change that please look at ```/etc/vconsole.conf``` and ```airootfs/root/customize_airootfs.sh```.

### How to use
Using ~/iso as an example:
```
cd ~/iso
git clone https://github.com/rtxx/i3-config-iso
sudo mkarchiso -v -o . i3-config-iso/
```
This is result in an .iso to burn/use in a VM.

### TODO
- [x] Base installation
- [x] Network
- [x] LightDM with i3 WM
  - [x] with my configs
  - [ ] and keyboard set to ```pt```
- [ ] CUPS 
```
# https://wiki.archlinux.org/title/CUPS#Network
# https://wiki.archlinux.org/title/Avahi#Hostname_resolution
install cups cups-pdf
install avahi nss-mdns
    change /etc/nsswitch.config with hosts: ... mdns_minimal [NOTFOUND=return] resolve [!UNAVAIL=return] dns ...

start avahi.service
Created symlink /etc/systemd/system/dbus-org.freedesktop.Avahi.service → /usr/lib/systemd/system/avahi-daemon.service.
Created symlink /etc/systemd/system/multi-user.target.wants/avahi-daemon.service → /usr/lib/systemd/system/avahi-daemon.service.
Created symlink /etc/systemd/system/sockets.target.wants/avahi-daemon.socket → /usr/lib/systemd/system/avahi-daemon.socket.

start cups.service
Created symlink /etc/systemd/system/printer.target.wants/cups.service → /usr/lib/systemd/system/cups.service.
Created symlink /etc/systemd/system/sockets.target.wants/cups.socket → /usr/lib/systemd/system/cups.socket.
Created symlink /etc/systemd/system/multi-user.target.wants/cups.path → /usr/lib/systemd/system/cups.path.

start avahi.service
ln -s /usr/lib/systemd/system/avahi-daemon.service /home/ruitx/Coding/i3-config-iso/airootfs/etc/systemd/system/dbus-org.freedesktop.Avahi.service
ln -s /usr/lib/systemd/system/avahi-daemon.service /home/ruitx/Coding/i3-config-iso/airootfs/etc/systemd/system/multi-user.target.wants/avahi-daemon.service
ln -s /usr/lib/systemd/system/avahi-daemon.socket /home/ruitx/Coding/i3-config-iso/airootfs/etc/systemd/system/sockets.target.wants/avahi-daemon.socket

start cups.service
ln -s /usr/lib/systemd/system/cups.service /home/ruitx/Coding/i3-config-iso/airootfs/etc/systemd/system/printer.target.wants/cups.service
ln -s /usr/lib/systemd/system/cups.socket /home/ruitx/Coding/i3-config-iso/airootfs/etc/systemd/system/sockets.target.wants/cups.socket
ln -s /usr/lib/systemd/system/cups.path /home/ruitx/Coding/i3-config-iso/airootfs/etc/systemd/system/multi-user.target.wants/cups.path

```
- [ ] Samba 
- [ ] Bluetooth 
- [ ] Diagnostic tools
  - [ ] CPU related
  - [ ] RAM related 
  - [ ] Disk related
