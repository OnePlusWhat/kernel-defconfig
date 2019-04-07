=$(pwd)
=arm64
=land
=msm8937-perf
=arch/${}/configs
=android/configs

=$(arch=${} ${}/scripts/kconfig/merge_config.sh \
${}/${}_defconfig \
${}/${}_defconfig \
${}/android-base.config \
${}/android-base-${}.config \
${}/android-recommended.config)

=$(arch=${} ${}/scripts/kconfig/merge_config.sh \
${}/${}_defconfig \
${}/${}_defconfig)

make arch=${} savedefconfig
mv ${}/defconfig arch/${}/configs/${}_defconfig
make clean mrproper distclean
