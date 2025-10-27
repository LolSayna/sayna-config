# Windows

## Winget
- Winget packetmanager (external alternative: chocolaty)
- `winget search NAME` and `winget install -e --id NAME` and `winget uninstall -e --id NAME`

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
`winget install -e Mozilla.Firefox DominikReichl.KeePass Google.GoogleDrive Mozilla.Thunderbird WireGuard.WireGuard Spotify.Spotify`
- Firefox, Keepass2, Googledrive, (todo: Nextcloud?)
- Thunderbird - Email
- Wireguard - VPN
- Spotify

Optional:
- League displays
- Peripherals: Logitech software, (Corsair Tastatur?)

#### Creative
`winget install -e VideoLAN.VLC Meltytech.Shotcut GIMP.GIMP.3 Inkscape.Inkscape BlenderFoundation.Blender Prusa3D.PrusaSlicer KDE.Okular DigitalScholar.Zotero TheDocumentFoundation.LibreOffice`
- VLC, shotcut - Video
- (ffmpeg, handbreak, makemkv - Video)
- Gimp, Inkscape - Png, SVG
- Blender - Animation
- Prusaslicer - 3D printing
- **Okular**, (Acrobat?) (use Firefox) - PDFs
- Zotero - literature management
- LibreOffice - Office

#### Programmieren
`winget install -e Git.Git Microsoft.VisualStudioCode Notepad++.Notepad++ Oracle.VirtualBox`
- Notepad++, Vscode
- Virtualbox
- (Adrunio IDE)
- Git (mingw?), C, Python, HxD Hex Editor
- Ventoy - Multiboot usb drive
    - netboot.xyz - netboot iso, rescue systems

`winget install -e ezwinports.make Typst.Typst`

#### Games
`winget install -e Valve.Steam Discord.Discord EpicGames.EpicGamesLauncher ElectronicArts.EADesktop Ubisoft.Connect TeamSpeakSystems.TeamSpeakClient OBSProject.OBSStudio` and TODO: `winget install -e Blizzard.BattleNet`
- Steam, Battlenet, Epic, Ubisoft, EA App (Origin), (GOG online)
- League, Valorant
- Curseforge, TechnicLauncher, FTB APP
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
1. Windows update (multiple times)
1. Check all drivers in device manager
1. Check startup apps
1. Uninstall bloat apps
1. Disable online search (with regedit?)
1. Logins: Browser, Cloud + Passwords, Mail, VPN; use winget


### Normal Update
1. Windows + Grafiktreiber updaten + Reboot (Bios, Chipset Driver?)
2. Discord + Firefox + Steam


### Wipe
1. Save Documents, Images, Videos, Music, Desktop files
1. Essential projects/program data, VMs, passwords/accounts
1. List used programs
