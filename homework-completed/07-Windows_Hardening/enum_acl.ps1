$directory=dir #this declares the variable

foreach ($item in $directory) {
    Get-Acl $item
}