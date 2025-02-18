# Get all .md files in the current directory
Get-ChildItem -Filter *.md | ForEach-Object {
    (Get-Content $_.FullName) -replace '\!\[\[Pasted image ', '![](../Attachements/Pasted%20image%20' `
                                -replace '\]\]', ')' | Set-Content $_.FullName
}