# Boot process
- [Video about embedded bootloaders](https://youtu.be/UvFG76qM6co?si=0-x5jdUootvtTVSg)

## Partition table
Device wide
- MBR (Master Boot Record) 
    - first 512 Bytes 0x `0 - 1FF`
    - until 0x1BC (444) emtpy
    - starting at 0x1BE 4x 16-byte partition entries
    - ends wih 0x `55 aa`

- GPT (GUID Partition Table)
---

## MBR of SD card
hd (uses correct endian):
00 0a 09 02  07 fe ff ff  00 80 00 00  00 d0 6e 07
- first 00 -> means not bootable
- 0x04 -> 07 means exFat or NTFS
- 00 80 00 00 -> wird zu 0x8000 durch little endian?, each sector 512B -> 0x0100 0000 begin (matches result)
ends with 55 aa 

hexdump:
0a00 0209 fe07 ffff  8000 0000 d000 076e 
ends with aa55
