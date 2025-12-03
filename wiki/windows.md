# Windows

## Winget
- Winget packetmanager (external alternative: chocolaty)
- `winget search NAME` and `winget install -e --id NAME` and `winget uninstall -e --id NAME`
- For broken installs use: `appwiz.cpl` (old control panel)
- Update (upgrade): `winget upgrade --all`
- GUI + Interface: `MartiCliment.UniGetUI`

## Anwendungen
### Windows
- Windows Update/Defender
- Nvida Geforce Treiber
- Systemsteurung/Control-Panel/`appwiz.cpl` - older windows settings
- Datenträgerbereinung/Disk Cleanup - Clean temporäry files
- Datenträgerverwaltung/Disk management - Disk partitioning
    - diskpart - Advanced CLI Disk partitioning
- TaskManager
---

### Install
#### Core
`winget install -e Mozilla.Firefox DominikReichl.KeePass Google.GoogleDrive Mozilla.Thunderbird WireGuard.WireGuard Spotify.Spotify`
- Firefox: ublockorigin ([ai filter list](https://github.com/laylavish/uBlockOrigin-HUGE-AI-Blocklist)) 
- Keepass2, Googledrive, (todo: Nextcloud?)
- Thunderbird - Email
- Wireguard - VPN
- Spotify
- Nvidia app (no winget)
- League displays (no winget)
- Peripherals: Logitech software, (Corsair Tastatur?)

#### Creative
`winget install -e VideoLAN.VLC Meltytech.Shotcut GIMP.GIMP.3 Inkscape.Inkscape BlenderFoundation.Blender Prusa3D.PrusaSlicer KDE.Okular DigitalScholar.Zotero Oracle.JavaRuntimeEnvironment TheDocumentFoundation.LibreOffice Gyan.FFmpeg GuinpinSoft.MakeMKV HandBrake.HandBrake HandBrake.HandBrake.CLI`
- VLC, shotcut - Video
- ffmpeg, handbreak, makemkv - Video
- Gimp, Inkscape - Png, SVG
- Blender - Animation
- Prusaslicer - 3D printing
- Okular - PDFs (Alternative: Acrobat, Firefox)
- Zotero - literature management
- LibreOffice - Office

#### Programmieren
`winget install -e Git.Git Microsoft.VisualStudioCode Notepad++.Notepad++ Oracle.VirtualBox MHNexus.HxD Microsoft.WindowsTerminal Python.Python.3.14`
- Notepad++, Vscode
- Virtualbox
- (Adrunio IDE)
- Git, C, Python, HxD Hex Editor
- Windows Terminal
- Rust: possible with winget (some issues), using rust-init.exe has current issue with linker, to fix use gnu toolchain instead: `rustup toolchain install stable-x86_64-pc-windows-gnu && rustup default stable-x86_64-pc-windows-gnu`

For MA: `winget install -e ezwinports.make Typst.Typst`

#### Games
`winget install -e Valve.Steam Discord.Discord EpicGames.EpicGamesLauncher ElectronicArts.EADesktop Ubisoft.Connect Mojang.MinecraftLauncher TeamSpeakSystems.TeamSpeakClient OBSProject.OBSStudio`
- Steam, Battlenet, Epic, Ubisoft, EA App (Origin), (GOG online)
- League, Valorant
- Minecraft, Curseforge, TechnicLauncher, FTB APP
- Discord, Ts3
- Obs, Logitech Caputre, Outplayed/InsightsCapture/Overwolf

Winget Battlenet is broken (requires installpath)

#### Utils
``winget install -e OpenWhisperSystems.Signal`
- 7zip - Compression (not actually needed)
- SoundSwitch - switches audio devices (cli, hotkey, ...)
- simple-http-server - local file host/share
- Electrum - crypto wallet
- Anki - flipcards
- AusweisApp
- Signal - Messager
- Epic Pen - draw on screen

#### Sysadmin
`winget install -e TechPowerUp.GPU-Z CPUID.CPU-Z CPUID.HWMonitor CrystalDewWorld.CrystalDiskInfo WinDirStat.WinDirStat Rufus.Rufus Ookla.Speedtest.CLI`
- CPU-Z - Cpu stats
- GPU-Z - Gpu stats
- Hwmonitor - sensors (Hwinfo: bigger, openhardwaremonitor: deprecated)
- CrystalDiskInfo - disk health/stats (Western Digital Dashboard: deprecated, HD Tune: paid)
- WinDirStat - Manage free disk space (TreeSize: paid)
- Speedtest Cli - Internet speed (run in terminal with: `speedtest`)
- [USB device tree viewer](https://www.uwe-sieber.de/usbtreeview_e.html) - list USB devices 
- Rufus - Flash Usb drive, Installation Media; (start from terminal: rufus)
- Ventoy - Multiboot usb drive
    - netboot.xyz - netboot iso, rescue systems
- [R-Undelete](https://www.r-undelete.com/de/) (paid) - file recovery tool, looks a bit sketchy
- PhotoRec - open source data recovery
---

#### Stresstest+Benchmark
`winget install -e CrystalDewWorld.CrystalDiskMark PrimateLabs.Geekbench.6 OCBase.OCCT.Personal ar51an.iPerf3`
- [Startuptimer](https://startuptimer.com/#download) - measure boottime
- Geekbench6 - Cross-platform CPU/GPU benchmark
- CrystalDiskMark - Disk benchmark (DiskSpd: cli, IOZone: lowlevel/OS-indepen)
- iPerf - Network performance (Alternative: Ntttcp - Microsoft Open Source Server/Client)
    - [iPerf2](https://sourceforge.net/projects/iperf2) - needed to test [fritzbox](https://www.computerwoche.de/article/2860438/tempo-im-netzwerk-messen.html), Goto: Hilfe und Info -> FritzBox Support -> Durchsatzmessungen `.\iperf-2.2.1-win64.exe -c <IP> -p 4711`; [expected speeds](https://www.antary.de/2018/11/29/netzwerkdurchsatz-der-fritzbox-mit-integriertem-iperf-testen/)
    - iPerf3 `ar51an.iPerf3`, Docker-`networkstatic/iperf3` - [NAS](https://www.wundertech.net/run-a-speed-test-on-a-synology-nas-with-iperf3/), `ìperf3 -s`/`iperf3 -c <IP>` try `-R`, `-u`
- Intel Extreme Tuning Utility (Intel XTU)  - Intel CPU Overclocking
- MSI Afterburner - GPU Overclock
- OCCT (only starts via terminal) - System stresstest + monitoring + (benchmark)

Alternatives:
- Prime95 `mersenne.prime95` - CPU stresstest
- Furmark (only starts via terminal) `Geeks3D.FurMark.2`- GPU stresstest, part of MSI Kombustor
- [Gravitymark](https://gravitymark.tellusim.com/) - GPU Benchmark (Windows&Linux)
- Cinebench (only starts via terminal) `Maxon.CinebenchR23` (R23, 2024 version) - Benchmarking, with score comparison
- Phoronix Test Suite (no winget) - Different benchmarks (GPU: Blender, GLmark2; CPU: smallpt, (High Performance) Linpack (Clusted) HPL/HPCC; Diskspeed: IOzone)

---
## Setup
### Bios
- XMP Ram overclocking (Memory Speed)
- check PCIe lanes/slot/speeds
- Fancurves, Overclocking (sometimes auto settings)
- enable CSM for legacy systems (issue with displayport)
- resizable Bar	Gaming performance (newer systems), also called `above 4G decoding`

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
1. Disable mouse acceleration, check monitor refresh rate, energy settings, dark mode
1. Logins: Browser, Cloud + Passwords, Mail, VPN; use winget
1. Setup ssh: `ssh-keygen` && `cat .ssh\NAME.pub`
    - `git config --global user.email "mareike.burg@web.de"`
    - `git config --global user.name "Sayna"` # or Mareike Burg


### Normal Update
1. Windows + Grafiktreiber updaten + Reboot (Bios, Chipset Driver?)
2. Discord + Firefox + Steam


### Wipe
1. Save Documents, Images, Videos, Music, Desktop files
1. Essential projects/program data, VMs, passwords/accounts, recordings, ssh-keys
1. Zotero
1. List used programs
