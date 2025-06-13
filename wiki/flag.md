
# Capture the flag guide

> Mareike Burg | 19.07.2022 (moved 2025-06)
---------------
This documents list how to solve different tpye of CTF challenges:

 - Reverse Engineering
 - Hack the box
 - Todo


## Reverse Engineering
Get a file and recieve the flag form that file. If possible edit the sourcecode to skip parts of the code, find hints or manipulate otherwise.

Tools:
 - `file` - shows basic information about the file
 - `base64` - to encode or `base64 -d` to decode / [Online Coder/Decoder](https://www.base64decode.org/)
 - `strace` - records all system calls while running a program
 - `ltrace` - records all library calls
 - `gdb` - gnu debugger for C
 - `objdump -d ` - decompiles into assemlby for C
 - `ghidra` - full reverse enginierung suite
 - `jadx` - java decompiler

Languages:  
 - `Binary/Assemble/C` - runs with `./NAME`
 - `python3` - runs Python Programs
 - `javac` compiles Java Programs, `java` runs them


### GDB
Start with `gdb <FILENAME>` and view the code with `layout asm`. Commands:
 - `run` - runs the program
 - `break *(main+99)` - places an interrupt at address "main+99"
 - `jump *(main+104)` - jumps to address "main+104"

[Cheat Sheet](https://darkdust.net/files/GDB%20Cheat%20Sheet.pdf)


### JADX
Seems to have issues with paths, so use absolute paths. `-D` specifies the outputfile and is needed.
```bash
jadx -d /home/sayna/Desktop/ctf/picoCTF/pico2022/fresh-java/out /home/sayna/Desktop/ctf/picoCTF/pico2022/fresh-java/KeygenMe.class
```

Also try [GUI version](http://java-decompiler.github.io/).

<br/><br/>



## Hack the box
### Enumeration + Reconnaissance
Find out whats in the Network

1. Ping
2. Nmap

#### Nmap
Example:

needs sudo
`sudo nmap -sC-sV 10.0.0.1`

-sC script scanning
-p- means to scan all ports
-T5 is aggrasive scan and speeds the scan up, but more intrusive
-sV shows Version information
`nmap -sV -p- -T5 10.0.0.1`


#### Gobuster for web
Install via apt.
`gobuster dir --url http://IP/ --wordlist /directory-list-2.3-small.txt`

Get a good wordlist, also at /usr/share/wordslists
`git clone https://github.com/danielmiessler/SecLists.git`

`gobuster dir --url http://10.129.1.15/ --wordlist ~/Desktop/htb/tools/SecLists/Discovery/Web-Content/directory-list-2.3-small.txt -x php,html`
-x look for these files tpyes

##
use etc/hosts to accses hostnames

`../../../../../../../../windows/system32/drivers/etc/hosts`

### Weppalyser scan for webtools

### Gaining Accses

 - trying default username+pw

admin, administratior, root

admin:admin
guest:guest
user:user
root:root
administrator:password


WinRM login to powershell: evilwinrm


SQL injektion:
admin'#
' ends the call, # comments the rest of the line

### Local Reconnaissance + Enumeration

 - flag in /root/flag.txt


### Priviliage Escalation

