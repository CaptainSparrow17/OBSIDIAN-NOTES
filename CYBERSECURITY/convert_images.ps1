# Get all .md files in the current directory
Get-ChildItem -Filter *.md | ForEach-Object {
    (Get-Content $_.FullName) -replace '\!\[\[Pasted image ', '![](../Attachemnts/Pasted%20image ' `
                                -replace '\]\]', ')' | Set-Content $_.FullName
}