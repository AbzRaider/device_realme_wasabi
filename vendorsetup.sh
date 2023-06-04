# clean Stuffs
rm -rf packages/apps/RealmeParts && rm -rf bootable/recovery && rm -rf build/make && rm -rf frameworks/native && rm -rf frameworks/av && rm -rf frameworks/opt/net/ims && rm -rf system/vold && rm -rf external/selinux

# RealmeParts
git clone https://github.com/Realme-G70-Series/android_packages_apps_RealmeParts.git -b aosp12 packages/apps/RealmeParts

# Patches By Sarthak Roy
git clone https://github.com/LineageOS/android_packages_resources_devicesettings packages/resources/devicesettings
git clone https://github.com/AOSP-12-RMX2020/bootable_recovery bootable/recovery
git clone https://github.com/AOSP-12-RMX2020/build build/make
git clone https://github.com/AOSP-12-RMX2020/frameworks_native frameworks/native
git clone https://github.com/AOSP-12-RMX2020/frameworks_av frameworks/av
git clone https://github.com/AOSP-12-RMX2020/frameworks_opt_net_ims frameworks/opt/net/ims
git clone https://github.com/AOSP-12-RMX2020/external_selinux external/selinux
git clone https://github.com/AOSP-12-RMX2020/system_vold system/vold
cd system/core && git fetch https://github.com/PixelPlusUI-SnowCone/platform_system_core && git cherry-pick 66e888d80c2f6a12cccb7f76f2cedfcd8c5d4f93 && cd ../..

# ScreenRecording Fix
sed -i "134s/High/Main/" frameworks/base/packages/SystemUI/src/com/android/systemui/screenrecord/ScreenMediaRecorder.java
sed -i "134s/Level1/Level3/" frameworks/base/packages/SystemUI/src/com/android/systemui/screenrecord/ScreenMediaRecorder.java

# Misc Hacks
# mkdir -p out/target/product/RMX2151
# cd out/target/product/RMX2151
# aria2c https://gitlab.com/sauraj-dumps/realme_rmx2151l1_dump_8339/-/raw/RMX2151PU_11.A.87_0870_202103021932/boot/kernel?inline=false
