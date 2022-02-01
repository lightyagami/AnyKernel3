# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=SilverCore
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=RMX1921
device.name2=RMX1921EU
supported.versions=10 - 12
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
#dtboblock=/dev/block/bootdevice/by-name/dtbo;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel boot install
dump_boot;


write_boot;
## end boot install
