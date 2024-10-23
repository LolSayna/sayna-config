# run qemu with networking
qemu-system-x86_64 -hda ~/Desktop/uni24/ubuntu18.qcow2 -smp 4 -m 8192 -device e1000,netdev=net0 -netdev user,id=net0,hostfwd=tcp::4444-:22 --enable-kvm --display none

# one time setup + save to disk after
# ssh-copy-id -p 4444 -i ~/.ssh/id_ed25519 sdnlab@localhost

# now use ssh
# ssh -X -p 4444 sdnlab@localhost
