## Concepts
### Binary Numbers
| Binary | Dezimal | Name | Hex
| ---   | --- | --- | --- |
| 2^3   | 8           | Byte    | 
| 2^4   | 16          |         | 
| 2^8   | 256         |         | 0x100
| 2^10  | 1024        | Kibi    | 
| 2^12  | 4096        | Page    | 0x1000
| 2^20  | 1048576     | MiBi    | 0x0010'0000
| 2^25  | 33554432    | 32 MiBi | 0x0200'0000
| 2^30  | 1073741824  | GiBi    |
| 2^32  | 4294967296  | 4 GiBi  | 0x1'0000'0000
| 2^40  | ...         | Tebi    |

### AI Guide
Artificial intelligence: simulation of intelligent behaviour\
C (subset)\
Machine Learning: algorithms with data learnings
- supervised: labeled data
- unsupervised: find patterns (e.g. outliners)
- reinforced: set contrains+explore with rewards

C (subset)\
Deep learning: layered neural networks


### Language Support
LSP - Language Server Protocol
- Code Autocompletion
- Syntax Highlighting
- Python
  - Pylance basiert auf Pyright
### OS
Synchronisation
- Threads/Prozesse zweiseitg
  - Lock (user spinning)
  - Semaphore (go to kernel)
  - futex (go to kernel if needed)
- Interrupt einseitig
  - sti/cli (Prolog/Epilog level)

Deskriptor - Struktur für Speichersegment
- IDT - Interrupts
- GDT - global (open file table) points to V-Node Table (=inode)
- LDT - prozessgebunden (Deskriptortabelle)

### C Basics
- Compiling: .c -> .o -> .ld -> .elf -> .bin
- Memory layout
  - text (program code)
  - data
    - static:> initalized, bss(uninit)
    - dynamic: stack, heap
- Dereferenzieren *: Return Wert an dieser Adresse
- Referenz &: Return Adresse der Variable

## Programming languagess
### Texts
- Markdown
- Latex (overleaf web)
- Typst

### Low Level
#### C/C++
- Bachelor's course, Algorithms for programming contests
- Master: Eda assignment, BSB
#### Rust
- BST

### Application development
- Java: Bachelor practical
- Go
#### Python
- modules - `import abc.py`
  - loads in code as file, can import C Code
  - looks cwd, PYTHONPATH env, installation dependent PYTHONPATH
- packages - hierarchical structuring of namespace
  - pkg with `mod1.py`/`mod2.py`, use `import pkg.mod2` or `from pkg import *`
  - `__all__` controls automatic imports
- enviroments
  - pip: install python packages
  - pipx: isolating pip
  - venv: virtual enviroments installed by pip
  - virtualenv: extension of venv

### Container
- Docker
- Qemu (Virtual machine manager gui)
- Virtual Box

### Other/Notes
- Git [Git book](https://git-scm.com/book/en/v2)
  - use ssh instead of https
- Matlab: Robotics 1 (online account)
- LISP (very old)
- VHDL/Verilog (ModelSim/Questa Sim, Quartus Prime, [HDL Testing](https://www.edaplayground.com/))
- ZeroMQ - easy communication library, between different languages, tcp based
- [Coding Style Guide](https://suckless.org/coding_style/)



## File Formats
### Image
- png - rastergrafik, verlustfrei
- jpeg - smaller then png, lossy, no transparency
- gif - png predecessor
- svg - vectorgrafic
- *heic*/heif/h.265/(hevc for video) - advanced compression, licenzing hard
### Video
- MPEG-2 (.mpg, .mpeg, .m2v)- lossy video+audio compression, used for DVD-Video
- MPEG-4 (.m4v) - gehört zu MP4
#### NTSC vs PAL
- NTSC - US, 30/60 FPS, 768x480
- PAL - Europa, 25/50 FPS, 768x576
- SECAM - Frankreich, Russland

### Audio
- Unterschied container vs codec
- Samplingrate Mensch ~20 kHz -> Standard for recording: 44.1 kHz
- Bitdepth: 16/24 bit, higher ist schnickschnack
- lossless ~10 MB/min (different forms of PulseCodeModulation/PCM)
  - .wav - Riff wave (windows)
  - .aiff - Audio Interchange File Format (apple)
  - .flac - Open source, compressed
  - .m4a/.mp4 - Appel Lossless/alac, compressed
- lossy ~2.5 MB/min
  - .mp3 - most spread standard
  - .aac/.m4a/.mp4 - Advanced Audio Coding
  - .opus - Opus, open standard, less compatibility