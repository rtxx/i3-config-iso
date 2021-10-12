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

### Tips
*from arch wiki*
#### Adjusting the size of root partition on the fly
To adjust the size of the root partition on the live Archlinux system, hit the TAB key to edit the kernel parameters. Append ```cow_spacesize=2G``` at the end to get 2G size for the root partition. Press Enter to continue booting into the live system.
You can also adjust the root partition size on the fly by running this command:
```
sudo mount -o remount,size=2G /run/archiso/cowspace
```
