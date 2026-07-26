  ---
  
I’m sure other people change it in their settings to make it permanent, but whenever I boot up my Kali out of habit I instantly rapid fire these 3 commands

xset s off

xset s noblank

xset -dpms

this works for me and keeps it open, I do it everytime I boot Kali because it doesn’t persist but I don’t mind 3 simple commands quick to type in and never had any issues this way.

xset s off
xset s noblank
xset -dpms
print(1)
print(1)
print(1)

---

Module to go Through::
https://academy.hackthebox.com/app/paths/20/details
https://academy.hackthebox.com/course/preview/sql-injection-fundamentals
https://academy.hackthebox.com/course/preview/sqlmap-essentials

---
[IO.File]::WriteAllBytes("C:\Users\htb-student\upload_win.zip", [Convert]::FromBase64String("UEsDBAoAAAAAAFmEKVFHXocmIAAAACAAAAAOAAAAdXBsb2FkX3dpbi50eHRlNGZlZWM0NjZkNWRlNzAxMDg5YjVjYzFiZjZkNTkyYVBLAQI/AAoAAAAAAFmEKVFHXocmIAAAACAAAAAOACQAAAAAAAAAIAAAAAAAAAB1cGxvYWRfd2luLnR4dAoAIAAAAAAAAQAYAHjm8KnohtYBzETj5fqG1gEXkIab6IbWAVBLBQYAAAAAAQABAGAAAABMAAAAAAA="))

(New-Object Net.WebClient).DownloadFile('ftp://192.168.49.128/a.txt', 'C:\Users\htb-student\ftp-file.txt')