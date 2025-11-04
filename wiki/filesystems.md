
# File systems
## Windows
- fat32 - old windows standard, max file size 4GB
    - fat/fat12/fat16 - older variants
- exFAT - flash drives
- ntfs - windows

## Apple
- HFS - old apple 
- btrfs

## Linux
- ext4
    - ext/ext2/ext3 - older variants
- Btrfs
- zfs

## Special
- SquashFS - compressed read only


--- 

## Media Speeds
### Linux
Gnome disks (default Ubuntu): 
- SD-Card slot laptop: 90 MB/s read, 48 MB/s write, 0.30 ms average access time
- SD-Card Adapter: 17 MB/s read, 15 MB/s write, 0.72ms
- USB-3.0 stick: 230 MB/s read, 154 MB/s write, 0.54ms average access time
- USB-3.0 stick 2.0 port: 40 MB/s read, 39MB/s write, 0.63ms

[f3](https://github.com/AltraMayor/f3) (install via apt)
- `f3write NAME -p 1 -e 3`: sd 47.52 MB/s, usb 181.60 MB/s
- `f3read NAME -p 1 -e 3`: sd 88.35 MB/s, usb 244.60 MB/s


### Windows
CrystalDiskMark (3x 1GiB in MB/s read/write):
| Name              | Full Name      | SEQ 1M Q8 T1 | SEQ 1M Q1 T1 | 4K Q32 T1 | RND 4K Q1 T1
| :-:               | :-:                           | :-:       | :-:       | :-:       | :-:
| M2 SSD            | Samsung SSD 970 EVO Plus 1TB  | 3579/3068 | 3018/2919 | 589/476   | 54/201       
| M2 SSD            | Samsung SSD 970 EVO Plus 1TB  | 3579/3068 | 3018/2919 | 589/476   | 54/201
| old SSD           | Crucial_CT120M500SSD1 120GB   | 530/127   | 489/131   | 271/121   | 26/102
| old HDD full      | WDC WD10EZEX-00RKKA0 1TB      | 176/172   | 178/173   | 2.43/2.25 | 0.74/1.93
| old HDD clear     | WDC WD10EZEX-00RKKA0 1TB      | 207/202   | 208/203   | 2.44/2.18 | 0.75/2.07
| old external HDD  | Toshiba ST31000520AS          | 40/40     | 40/40     | 0.61/1.07 | 0.57/1
| :-:               | :-:                           | :-:       | :-:       | :-:       | :-:
| USB Stick         | USB Port 3.2                          | 268/248   | 266/247   | 13/11     | 13/11
