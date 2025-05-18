# QEMU + KVM Guide

# Create img file
# qemu-img create -f qcow2 NAME.img 25G
# Install from iso
# qemu-system-x86_64 -hda ~/Desktop/uni24/nixos.img -smp 4 -m 8192 -device e1000,netdev=net0 -netdev user,id=net0,hostfwd=tcp::4444-:22 --enable-kvm -boot d -cdrom ~/Downloads/nixos-gnome-24.11.715216.1546c45c5386-x86_64-linux.iso

# run qemu with networking
qemu-system-x86_64 -hda ~/Desktop/uni24/ubuntu18.qcow2 -smp 4 -m 8192 -device e1000,netdev=net0 -netdev user,id=net0,hostfwd=tcp::4444-:22 --enable-kvm --display none

# one time setup + save to disk after
# ssh-copy-id -p 4444 -i ~/.ssh/id_ed25519 sdnlab@localhost

# now use ssh
# ssh -X -p 4444 sdnlab@localhost
