# Windows

## Winget
- Winget packetmanager (external alternative: chocolaty)
- `winget search NAME` and `winget install -e --id NAME` and `winget uninstall -e --id NAME`
- For broken installs use: `appwiz.cpl` (old control panel)

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
- Nvidia app (no winget)
- Peripherals: Logitech software, (Corsair Tastatur?)

#### Creative
`winget install -e VideoLAN.VLC Meltytech.Shotcut GIMP.GIMP.3 Inkscape.Inkscape BlenderFoundation.Blender Prusa3D.PrusaSlicer KDE.Okular DigitalScholar.Zotero Oracle.JavaRuntimeEnvironment TheDocumentFoundation.LibreOffice Gyan.FFmpeg GuinpinSoft.MakeMKV HandBrake.HandBrake HandBrake.HandBrake.CLI`
- VLC, shotcut - Video
- (ffmpeg, handbreak, makemkv - Video)
- Gimp, Inkscape - Png, SVG
- Blender - Animation
- Prusaslicer - 3D printing
- **Okular**, (Acrobat?) (use Firefox) - PDFs
- Zotero - literature management
- LibreOffice - Office

#### Programmieren
`winget install -e Git.Git Microsoft.VisualStudioCode Notepad++.Notepad++ Oracle.VirtualBox MHNexus.HxD Microsoft.WindowsTerminal`
- Notepad++, Vscode
- Virtualbox
- (Adrunio IDE)
- Git (mingw?), C, Python, HxD Hex Editor
- Windows Terminal
- Ventoy - Multiboot usb drive
    - netboot.xyz - netboot iso, rescue systems

`winget install -e ezwinports.make Typst.Typst`

#### Games
`winget install -e Valve.Steam Discord.Discord EpicGames.EpicGamesLauncher ElectronicArts.EADesktop Ubisoft.Connect Mojang.MinecraftLauncher TeamSpeakSystems.TeamSpeakClient OBSProject.OBSStudio`

Battlenet requires installpath: `winget install -e Blizzard.BattleNet`
- Steam, Battlenet, Epic, Ubisoft, EA App (Origin), (GOG online)
- League, Valorant
- Minecraft, Curseforge, TechnicLauncher, FTB APP
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
1. Check all drivers in device manager, install nvidia app
1. Check startup apps
1. Uninstall bloat apps
1. (Disable online search) now default
1. Disable mouse acceleration, check monitor refresh rate, energy settings
1. Logins: Browser, Cloud + Passwords, Mail, VPN; use winget
1. Setup ssh: `ssh-keygen` && `cat .ssh\NAME.pub`
    - `git config --global user.email "mareike.burg@web.de"`
    - `git config --global user.name "Sayna"` # or Mareike Burg


### Normal Update
1. Windows + Grafiktreiber updaten + Reboot (Bios, Chipset Driver?)
2. Discord + Firefox + Steam


### Wipe
1. Save Documents, Images, Videos, Music, Desktop files
1. Essential projects/program data, VMs, passwords/accounts, recordings
1. List used programs
