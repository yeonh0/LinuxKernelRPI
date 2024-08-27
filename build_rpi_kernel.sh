echo "Configure build output path"

KERNEL_TOP_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
OUTPUT="$KERNEL_TOP_PATH/out"
echo "$OUTPUT"

KERNEL=kernel8
BUILD_LOG="$KERNEL_TOP_PATH/rpi_build_log.txt"

echo "Move kernel source"
cd linux

echo "Make defconfig"
make O=$OUTPUT bcm2711_defconfig

echo "Kernel build"
make O=$OUTPUT Image modules dtbs -j4 2>&1 | tee $BUILD_LOG
