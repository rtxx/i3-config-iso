# i3-config-iso
My archiso profile for i3. Just a vanilla Arch installation with my custom i3 config files.

Note: My keyboard is ```pt```, so all the keymaps are ```pt```. To change that please look at ```/airootfs/etc/vconsole.conf``` and ```/airootfs/etc/X11/xorg.conf.d/00-keyboard.conf```.

### How to use
```
git clone https://github.com/rtxx/i3-config-iso/
sudo mkarchiso -v -w /tmp/archiso-tmp i3-config-iso/
```
This will result in an .iso to burn/use in a VM.
Use ```mount -o remount,size=8G,noatime /tmp``` if /tmp is to small, or use another dir.

Resulting .iso will be at ~/work. Use ```sudo rm -rf ~/work``` to remove it.

Login is ```live : live```

### TODO
- [x] Base installation
- [x] Network
- [x] LightDM with i3 WM
  - [x] with my configs
  - [x] and keyboard set to ```pt```
- [x] CUPS *needs restart to work*
- [ ] Samba 
- [ ] Bluetooth 
- [x] Diagnostic tools
  - *hardinfo*
  - [x] CPU related
    - *stress*
  - [ ] RAM related 
  - [x] Disk related
    - *gsmartcontrol*
