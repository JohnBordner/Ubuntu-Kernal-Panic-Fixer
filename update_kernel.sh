#!/usr/bin/env bash
# update_kernel.sh
# used for updating initramfs and grub for specific kernel version

# Usage:
#   KERNEL_VERSION=6.14.0-24-generic ./update_kernel.sh
echo "Updating initramfs for kernel: $KERNEL_VERSION"
sudo update-initramfs -c -k "$KERNEL_VERSION"

echo "Updating GRUB configuration"
sudo update-grub

echo "Done!"
