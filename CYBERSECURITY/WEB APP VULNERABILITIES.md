# ***GOBUSTER***
```bash
gobuster dir -u http://10.10.10.10 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
dir = directory
-u = url
-w = wordlist

gobuster dns -d mydomain.thm -w /usr/share/wordlists/SecLists/Discovery/DNS/subdomains-top1million-5000.txt
dns = brute-force subdomain

gobuster vhost -u http://example.com -w /usr/share/wordlists/SecLists/Discovery/DNS/subdomains-top1million-5000.txt
vhost = virtual host:: 
gobuster vhost -u http://webenum.thm -w a.txt --append-domain => new syntax

gobuster dir -u http://products.webenum.thm/ -w a.txt  -x html,css,js,txt
-x = extension**

gobuster dns -d megacorpone.com -w wordlist.txt -t 10 
The _-w wordlist.txt_ argument will allow us to supply the custom LLM-generated wordlist. Finally, the _-t 10_ parameter will define the level of concurrency, setting Gobuster to use 10 threads simultaneously in order to improve efficiency.
```

|Flag|Long Flag|Description|
|---|---|---|
|-c|--cookies|Cookies to use for requests|
|-x|--extensions|File extension(s) to search for|
|-H|--headers|Specify HTTP headers, -H 'Header1: val1' -H 'Header2: val2'|
|-k|--no-tls-validation|Skip TLS certificate verification|
|-n|--no-status|Don't print status codes|
|-P|--password|Password for Basic Auth|
|-s|--status-codes|Positive status codes|
|-b|--status-codes-blacklist|Negative status codes|
|-U|--username|Username for Basic Auth|

|Flag|Long Flag|Description|
|---|---|---|
|-c|--show-cname|Show CNAME Records (cannot be used with '-i' option)|
|-i|--show-ips|Show IP Addresses|
|-r|--resolver|Use custom DNS server (format [server.com](http://server.com) or [server.com](http://server.com):port)|
# WPSCAN
Wordpress site only Users Enumeration 

```bash
wpscan --url http://wpscan.thm/
wpscan --url http://example.com/ceh --enumerate u
wpscan --url http://wpscan.thm/ --plugins-detection aggressive/passive #anyone
wpscan --url http://example.com/ceh --enumerate p
wpscan --url http://example.com/ceh --enumerate t #speed up the process
wpscan --url http://example.com/ceh --enumerate vp #enumurates vulnerable plugins 
# Direct crack if we have user/password details 
wpscan --url http://192.168.1.100/wordpress/ -U users.txt -P /usr/share/wordlists/rockyou.txt 
wpscan --url <http://example.com/ceh> --enumerate vp #enumurates vulnerable plugins
```
Using Metaspoilt msfdb init && msfconsole msf 
```Metasploit
use auxiliary/scanner/http/wordpress_login_enum 
msf auxiliary(wordpress_login_enum) > set rhosts 192.168.1.100 msf auxiliary(wordpress_login_enum) > set targeturi /wordpress msf auxiliary(wordpress_login_enum) > set user_file user.txt msf auxiliary(wordpress_login_enum) > set pass_file pass.txt msf auxiliary(wordpress_login_enum) > exploit
```

```
## **`WORDPRESS`** EJPT NOTES

exploit/multi/http/wp_crop_rce

we found ==wp-config.php== file which give other login cred aswell

May be pasword of blly joel

[https://www.poplabsec.com/how-to-attack-wordpress-website/](https://www.poplabsec.com/how-to-attack-wordpress-website/)

logged in as admin and searched windows/linux reverse php shell

dashboard=appearance=theme file editor=404.php page

pasted windows reverse shell.php code and **`change IP address`**

started **`nmap nc -lvnp 9000`**

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/272c99bf-b353-4e45-a07f-42dcb1dd067c/9e518517-8843-44c7-9707-ad8d52da588a/Untitled.png)

once php shell is obtained, create msfvenom reverse tcp and use meterpreter and transfer and run.

BINGO got reverse shell and now get those hashes..

**`wp-config.php` always check**
``` 

# NIKTO

```bash
sudo apt update && sudo apt install nikto
nikto -h 1.1.1.1
nikto -h 1.1.1.1:8080
nmap -p80 172.16.0.0/24 -oG - | nikto -h - #Scan Subnet aswell
nikto -h 10.10.10.1 -p 80,8000,8080
nikto --list-plugins # list plugins
nikto -h http://1.1.1.1 -Plugin apacheuser
nikto -h http://1.1.1.1 -Display 1/2/3 #anyone
nikto -h http://1.1.1.1 -o report.html
```

|               |                                                                                                                                                                                       |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Plugin Name   | Description                                                                                                                                                                           |
| apacheusers   | Attempt to enumerate Apache HTTP Authentication Users                                                                                                                                 |
| cgi           | Look for CGI scripts that we may be able to exploit                                                                                                                                   |
| robots        | Analyse the robots.txt file which dictates what files/folders we are able to navigate to                                                                                              |
| dir_traversal | Attempt to use a directory traversal attack (i.e. LFI) to look for system files such as /etc/passwd on Linux (http://ip_address/application.php?view=../../../../../../../etc/passwd) |
|               |                                                                                                                                                                                       |
###### **Verbosing our Scan**

We can increase the verbosity of our Nikto scan by providing the following arguments with the `-Display` flag. Unless specified, the output given by Nikto is not the entire output, as it can sometimes be irrelevant (but that isn't always the case!)

|          |                                                      |                                                                                                                                                                                                                         |
| -------- | ---------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Argument | Description                                          | Reasons for Use                                                                                                                                                                                                         |
| 1        | Show any redirects that are given by the web server. | Web servers may want to relocate us to a specific file or directory, so we will need to adjust our scan accordingly for this.                                                                                           |
| 2        | Show any cookies received                            | Applications often use cookies as a means of storing data. For example, web servers use sessions, where e-commerce sites may store products in your basket as these cookies. Credentials can also be stored in cookies. |
| E        | Output any errors                                    | This will be useful for debugging if your scan is not returning the results that you expect!                                                                                                                            |
###### **Tuning Your Scan for Vulnerability Searching**

Nikto has several categories of vulnerabilities that we can specify our scan to enumerate and test for. The following list is not extensive and only include the ones that you may commonly use. We can use the `-Tuning` flag and provide a value in our Nikto scan: 

|   |   |   |
|---|---|---|
|Category Name|Description|Tuning Option|
|File Upload|Search for anything on the web server that may permit us to upload a file. This could be used to upload a reverse shell for an application to execute.|0|
|Misconfigurations / Default Files|Search for common files that are sensitive (and shouldn't be accessible such as configuration files) on the web server.|2|
|Information Disclosure|Gather information about the web server or application (i.e. verison numbers, HTTP headers, or any information that may be useful to leverage in our attack later)|3|
|Injection|Search for possible locations in which we can perform some kind of injection attack such as XSS or HTML|4|
|Command Execution|Search for anything that permits us to execute OS commands (such as to spawn a shell)|8|
|SQL Injection|Look for applications that have URL parameters that are vulnerable to SQL Injection|9|
###### **Verbosing our Scan**

We can increase the verbosity of our Nikto scan by providing the following arguments with the `-Display` flag. Unless specified, the output given by Nikto is not the entire output, as it can sometimes be irrelevant (but that isn't always the case!)

|   |   |   |
|---|---|---|
|Argument|Description|Reasons for Use|
|1|Show any redirects that are given by the web server.|Web servers may want to relocate us to a specific file or directory, so we will need to adjust our scan accordingly for this.|
|2|Show any cookies received|Applications often use cookies as a means of storing data. For example, web servers use sessions, where e-commerce sites may store products in your basket as these cookies. Credentials can also be stored in cookies.|
|E|Output any errors|This will be useful for debugging if your scan is not returning the results that you expect!|

# UPLOAD VULNERABLITIES
#### FILE OVERWRITE
We were able to upload file with same name..
Website was displaying a.jpg, we uploaded our own a.jpg and it was successful.
Tips to mitigate the Vulnerability: Always save file with a new name -- often either random, or with the date and time of upload added to the start or end of the original filename. Alternatively, checks may be applied to see if the filename already exists on the server

#### Remote Code Execution (RCE)
we uploaded reverse shell and started ncat and when shell was executed, we got RCE..
To find where we can see the uploaded file, we had to do directory bruteforce first..
![](../Attachements/Pasted%20image%2020241119161015.png)
Start the netcat::
![](../Attachements/Pasted%20image%2020241119161219.png)

#### Filtering
```
Extension Validation
File type filtering => MIME/Magic Number
File Length
File Name
File Content => Is more comples
```

###### Bypassing Client-Side Filtering
There are four easy ways to bypass your average client-side file upload filter:

1. _Turn off Javascript in your browser_ -- this will work provided the site doesn't require Javascript in order to provide basic functionality. If turning off Javascript completely will prevent the site from working at all then one of the other methods would be more desirable; otherwise, this can be an effective way of completely bypassing the client-side filter.
2. _Intercept and modify the incoming page._ Using Burpsuite, we can intercept the incoming web page and strip out the Javascript filter before it has a chance to run. The process for this will be covered below.
3. _Intercept and modify the file upload_. Where the previous method works _before_ the webpage is loaded, this method allows the web page to load as normal, but intercepts the file upload after it's already passed (and been accepted by the filter). Again, we will cover the process for using this method in the course of the task.
4. _Send the file directly to the upload point._ Why use the webpage with the filter, when you can send the file directly using a tool like `curl`? Posting the data directly to the page which contains the code for handling the file upload is another effective method for completely bypassing a client side filter. We will not be covering this method in any real depth in this tutorial, however, the syntax for such a command would look something like this: `curl -X POST -F "submit:<value>" -F "<file-parameter>:@<path-to-file>" <site>`. To use this method you would first aim to intercept a successful upload (using Burpsuite or the browser console) to see the parameters being used in the upload, which can then be slotted into the above command.

In our lab we found clientside.js, there we again found it only takes png file, below is the code::
![](../Attachements/Pasted%20image%2020241119211423.png)
Thus we opened burp, intrecepted request, uploaded php reverseshell as .png extension..
Then later in the burp intercept, the name was change to shell.php extension.. then netcat was started using netcat and when file was opened, we got the shell..
![](../Attachements/Pasted%20image%2020241119211718.png)
###### Bypassing Server-Side Filtering: File Extensions
we found .php5 was accepted, php was not accepted and done accordingly;;
###### Bypassing Server-Side Filtering: Magic Numbers
The upload functionality only accepts GIFs and magic number of gifs are 47 49 46 38 37 61.. we gonna add the to the begining of the file::
Before::
```bash
file phpreverse.php
```
![](../Attachements/Pasted%20image%2020241119215501.png)
After adding magic number:
![](../Attachements/Pasted%20image%2020241119220238.png)
*To edit magicnumber::*
Fiest add X number of charactere(4As/5As), then use hexeditor in kali from terminal to edit magic number value::
