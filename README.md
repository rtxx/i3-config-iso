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
This will result in an .iso to burn/use in a VM.

### TODO
- [x] Base installation
- [x] Network
- [x] LightDM with i3 WM
  - [x] with my configs
  - [ ] and keyboard set to ```pt```
- [x] CUPS *needs testing*
- [ ] Samba 
- [ ] Bluetooth 
- [ ] Diagnostic tools
  - [ ] CPU related
  - [ ] RAM related 
  - [ ] Disk related
