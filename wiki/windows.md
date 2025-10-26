# Windows
## Anwendungen
### Windows
- Windows Update/Defender
- Nvida Geforce Treiber
- Datenträgerbereinung/Disk Cleanup - Clean temporäry files
- Datenträgerverwaltung/Disk management - Disk partitioning
    - diskpart - Advanced CLI Disk partitioning
- TaskManager
---

### Install
#### Core
- Firefox, Keepass2, Googledrive, (Nextcloud?)
- Thunderbird- Email
- Wireguard - VPN
- Spotify, League displays, Logitech software, (Corsair Tastatur?)

#### Creative
- VLC, shotcut, ffmpeg, handbreak, makemkv - Video
- Gimp, Inkspace - Png, SVG
- Blender - Animation
- Prusaslicer - 3D printing
- **Okular**, Acrobat? (use Firefox) - PDFs
- Zotero - literature management
- LibreOffice - Office

#### Programmieren
- Notepad++, Vscode
- Virtualbox
- Adrunio IDE
- Git (mingw?), C, Python, HxD Hex Editor
- Ventoy - Multiboot usb drive
    - netboot.xyz - netboot iso, rescue systems

#### Games
- Steam, Battlenet, Epic, Ubisoft, (GOG online)
- League, Valorant
- Curseforge, TechnicLauncher, FTB APP

#### Gaming
- Discord, Ts3
- Obs, Logitech Caputre, Outplayed/InsightsCapture/Overwolf

#### Utils
- 7zip - Compression (not actually needed)
- SoundSwitch - switches audio devices (cli, hotkey, ...)
- simple-http-server - local file host/share
- Electrum - crypto wallet
- Anki - flipcards
- AusweisApp
- Epic Pen - draw on screen

#### Sysadmin
`winget install -e TechPowerUp.GPU-Z CPUID.CPU-Z CPUID.HWMonitor CrystalDewWorld.CrystalDiskInfo WinDirStat.WinDirStat Rufus.Rufus`
- CPU-Z - Cpu stats
- GPU-Z - Gpu stats
- Hwmonitor - sensors (Hwinfo: bigger, openhardwaremonitor: deprecated)
- CrystalDiskInfo - disk health/stats (Western Digital Dashboard: deprecated, HD Tune: paid)
- WinDirStat - Manage free disk space (TreeSize: paid)
- Rufus - Flash Usb drive, Installation Media; (start from terminal: rufus)

#### Sysadmin Utils
- [USB device tree viewer](https://www.uwe-sieber.de/usbtreeview_e.html) - list USB devices 
- [R-Undelete](https://www.r-undelete.com/de/) (paid) - file recovery tool, looks a bit sketchy

---

#### Stresstest
`winget install -e CrystalDewWorld.CrystalDiskMark`
- OCCT - generel stresstest
- Furmark - GPU stresstest
- MSI Afterburner - GPU Overclock
- Intel Extreme Tuning Utility (Intel XTU)  - Intel CPU Overclocking
- Cinebench - CPU, with score comparison
- CrystalDiskMark - Disk benchmark (DiskSpd: cli, IOZone: lowlevel/OS-indepen)

---
## Setup
### Bios
- XMP Ram overclocking
- resizable Bar	Gaming performance
- enable CSM for displayport
- Memory Speed
- Fancurves

### Install 
3 Methods (2025-10 Win11):
- Install media via MediaCreationTool (currently broken for Win10 xD)
- Inplace Upgrade
- Iso Download (also possible directly from Rufus)
    - also includes different configurations: online acc byepass, local acc, decline tracking, disable bitlocker

Optionally install drivers to stick.

---

### Post-Install
1. Check all drivers in device manager
1. Check startup apps
1. Uninstall bloat apps
1. Disable online search (with regedit?)

### Initial Install
- Winget packetmanager (external alternative: chocolaty)
- `winget search NAME` and `winget install -e --id NAME` and `winget uninstall -e --id NAME`
- `winget install Mozilla.Thunderbird Oracle.VirtualBox Microsoft.VisualStudioCode`
- `winget install AntoineAflalo.SoundSwitch Apple.iTunes TheDocumentFoundation.LibreOffice DigitalScholar.Zotero`
- For MA: winget install ezwinports.make Typst.Typst

### Update
1. Windows + Grafiktreiber updaten + Reboot (Bios, Chipset Driver?)
2. Discord + Firefox + Steam + Epic + Battlenet