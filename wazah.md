kali ip: 192.168.121.128
windows: 192.168.0.162





![](Attachements/Pasted%20image%2020260802112924.png)



  User: admin
    Password: i6*I3*9kDx9jv3+pQfNf*hjkQiUavWrU
02/08/2026 11:25:29 INFO: Installation finished.

![](Attachements/Pasted%20image%2020260802113108.png)
lets open wazah
https://192.168.121.128
![](Attachements/Pasted%20image%2020260809195343.png)
lets login

In desktop/SIEM we have wazuh files.
If you forgot password, untar the wazuh filer and you gonna find files called wazuh-password.txt
![](Attachements/Pasted%20image%2020260809200232.png)

imp:: always run wazuh server with this commands::
```shel
systemctl start wazuh-manager
```

enabling wazuh archive
ossec.conf
/var/ossec/etc/ossec.conf
![](Attachements/Pasted%20image%2020260809201614.png)
change it to yes.
every time ossec.conf is changed, restart wazuh-manager..

/etc/filebeat/filebeat.yml
![](Attachements/Pasted%20image%2020260809201927.png)
change above to true..

---
---
Now go to 
![](Attachements/Pasted%20image%2020260809202053.png)


set web-archoves+*

---
---
---
---
Part 2 mydfir::

Invoke-WebRequest -Uri https://packages.wazuh.com/4.x/windows/wazuh-agent-4.14.7-1.msi -OutFile $env:tmp\wazuh-agent; msiexec.exe /i $env:tmp\wazuh-agent /q WAZUH_MANAGER='192.168.121.128' WAZUH_AGENT_NAME='WINDOWSPC' 
![](Attachements/Pasted%20image%2020260809204620.png)

Installing SUS













---
---
---
---
---
---
Built My First SOC Lab at Home! 🔥  
After a lot of troubleshooting, crashes, and setup issues I finally built a SOC (Security Operations Center) lab using:  
  
🖥️ Old PC → Kali Linux (Attacker Machine)  
💻 Laptop → VMware Lab Environment  
🛡️ Ubuntu Server + Wazuh SIEM  
🪟 Windows 10 Victim Machine  
📊 Sysmon + Wazuh Agent for monitoring  
  
What I learned during this setup:  
✅ Configuring Wazuh SIEM for centralized log monitoring  
✅ Connecting Windows endpoints using Wazuh Agent  
✅ Using Sysmon for advanced Windows event logging  
✅ Monitoring alerts and security events through Wazuh dashboard  
✅ Understanding SOC workflows and threat monitoring  
  
I also generated security events from Kali Linux and monitored them directly inside the SIEM dashboard 😈  
  
This project helped me improve:  
SIEM fundamentals  
Log analysis  
Linux server management  
Troubleshooting skills  
Hands-on cybersecurity experience  
  
I documented the complete setup step-by-step on Medium 👇  
[https://lnkd.in/dMNEqg72](https://lnkd.in/dMNEqg72)