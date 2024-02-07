cp ./u-boot/configs/LicheePi_Zero_defconfig linux/arch/arm/configs/licheepi_zero_defconfig

docker build -t myapp:1.0 .
docker run -v $(pwd):/container/path -w /container/path/u-boot --rm myapp:1.0 make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- licheepi_zero_defconfig
docker run -v $(pwd):/container/path -w /container/path/u-boot --rm myapp:1.0 make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-

docker run -v $(pwd):/container/path -w /container/path/linux --rm myapp:1.0 make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- licheepi_zero_defconfig
docker run -v $(pwd):/container/path -w /container/path/linux --rm myapp:1.0 make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j8 all
docker run -v $(pwd):/container/path -w /container/path/linux --rm myapp:1.0 make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j8 modules
docker run -v $(pwd):/container/path -w /container/path/linux --rm myapp:1.0 make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j8 modules INSTALL_MOD_PATH=/container/path/modules/
