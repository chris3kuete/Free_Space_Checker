# Location of the Drive

$freeSpace = [Math]::Round((Get-CimInstance -ClassName Win32_LogicalDisk | Where-Object DeviceID -eq 'C:').FreeSpace / 1GB)

if ($freeSpace -eq $null) {
    Write-Host "there is no free space"
    <# Action to perform if the condition is true #>
}elseif($freeSpace -gt 100){
    Write-Host " The amount of free space is $freeSpace, you still have plenty of space available"
}else{
    Write-Host "Time to delete some files because you only have $freeSpace"
}
