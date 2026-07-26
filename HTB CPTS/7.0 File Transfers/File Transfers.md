During an engagement, we gain remote code execution (RCE) on an IIS web server via an unrestricted file upload vulnerability. We upload a web shell initially and then send ourselves a reverse shell to enumerate the system further in an attempt to escalate privileges. We attempt to use PowerShell to transfer [PowerUp.ps1](https://github.com/PowerShellMafia/PowerSploit/blob/master/Privesc/PowerUp.ps1) (a PowerShell script to enumerate privilege escalation vectors), but PowerShell is blocked by the [Application Control Policy](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control). We perform our local enumeration manually and find that we have [SeImpersonatePrivilege](https://docs.microsoft.com/en-us/troubleshoot/windows-server/windows-security/seimpersonateprivilege-secreateglobalprivilege). We need to transfer a binary to our target machine to escalate privileges using the [PrintSpoofer](https://github.com/itm4n/PrintSpoofer) tool. We then try to use [Certutil](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/certutil) to download the file we compiled ourselves directly from our own GitHub, but the organization has strong web content filtering in place. We cannot access websites such as GitHub, Dropbox, Google Drive, etc., that can be used to transfer files. Next, we set up an FTP Server and tried to use the Windows FTP client to transfer files, but the network firewall blocked outbound traffic for port 21 (TCP). We tried to use the [Impacket smbserver](https://github.com/SecureAuthCorp/impacket/blob/master/examples/smbserver.py) tool to create a folder, and we found that outgoing traffic to TCP port 445 (SMB) was allowed. We used this file transfer method to successfully copy the binary onto our target machine and accomplish our goal of escalating privileges to an administrator-level user.

# Windows File Transfer Methods
Let's use the [Microsoft Astaroth Attack](https://www.microsoft.com/en-us/security/blog/2019/07/08/dismantling-a-fileless-campaign-microsoft-defender-atp-next-gen-protection-exposes-astaroth-attack/) blog post as an example of an advanced persistent threat (APT).

The blog post starts out talking about [fileless threats](https://www.microsoft.com/en-us/security/blog/2018/01/24/now-you-see-me-exposing-fileless-malware/). The term `fileless` suggests that a threat doesn't come in a file, they use legitimate tools built into a system to execute an attack. This doesn't mean that there's not a file transfer operation. As discussed later in this section, the file is not "present" on the system but runs in memory.

The `Astaroth attack` generally followed these steps: A malicious link in a spear-phishing email led to an LNK file. When double-clicked, the LNK file caused the execution of the [WMIC tool](https://docs.microsoft.com/en-us/windows/win32/wmisdk/wmic) with the "/Format" parameter, which allowed the download and execution of malicious JavaScript code. The JavaScript code, in turn, downloads payloads by abusing the [Bitsadmin tool](https://docs.microsoft.com/en-us/windows/win32/bits/bitsadmin-tool).

All the payloads were base64-encoded and decoded using the Certutil tool resulting in a few DLL files. The [regsvr32](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/regsvr32) tool was then used to load one of the decoded DLLs, which decrypted and loaded other files until the final payload, Astaroth, was injected into the `Userinit` process. Below is a graphical depiction of the attack.
![](../../Attachements/Pasted%20image%2020260726115645.png)

This is an excellent example of multiple methods for file transfer and the threat actor using those methods to bypass defenses.

This section will discuss using some native Windows tools for download and upload operations. Later in the module, we'll discuss `Living Off The Land` binaries on Windows & Linux and how to use them to perform file transfer operations.

# Download Operations

We have access to the machine `MS02`, and we need to download a file from our `Pwnbox` machine. Let's see how we can accomplish this using multiple File Download methods.

![Network diagram showing a Windows PC, Layer 2 switch, firewall, cloud, and Linux PC.](https://cdn.services-k8s.prod.aws.htb.systems/content/modules/24/WIN-download-PwnBox.png)
## PowerShell Base64 Encode & Decode
Depending on the file size we want to transfer, we can use different methods that do not require network communication. If we have access to a terminal, we can encode a file to a base64 string, copy its contents from the terminal and perform the reverse operation, decoding the file in the original content. Let's see how we can do this with PowerShell.

An essential step in using this method is to ensure the file you encode and decode is correct. We can use [md5sum](https://man7.org/linux/man-pages/man1/md5sum.1.html), a program that calculates and verifies 128-bit MD5 checksums. The MD5 hash functions as a compact digital fingerprint of a file, meaning a file should have the same MD5 hash everywhere. Let's attempt to transfer a sample ssh key. It can be anything else, from our Pwnbox to the Windows target.

First check MD5 Hash of a file we wanna send then after downloading file in target machine always check it with original pownbox hash. Thus we will know it has not been tempered.

```shell
md5sum id_rsa
```