# QEMU + KVM Guide

# Create img file (TODO: try cloud image)
qemu-img create -f qcow2 NAME.img 25G

# Install iso
qemu-system-x86_64 -hda ~/Desktop/vms/debian13.img -smp 4 -m 8192 -device e1000,netdev=net0 -netdev user,id=net0,hostfwd=tcp::4444-:22 --enable-kvm -boot d -cdrom ~/Downloads/debian-13.0.0-amd64-netinst.iso

# one time setup + save to disk after
# ssh-copy-id -p 4444 -i ~/.ssh/id_ed25519 sayna@localhost

# now use ssh
# ssh -X -p 4444 sayna@localhost

# Run qemu
qemu-system-x86_64 -hda ~/Desktop/vms/debian13.img -smp 4 -m 8192 -device e1000,netdev=net0 -netdev user,id=net0,hostfwd=tcp::4444-:22 --enable-kvm

# Run qemu without display
qemu-system-x86_64 -hda ~/Desktop/vms/debian13.img -smp 4 -m 8192 -device e1000,netdev=net0 -netdev user,id=net0,hostfwd=tcp::4444-:22 --enable-kvm --display none
