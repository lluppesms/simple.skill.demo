# Get system information
$os = Get-CimInstance -ClassName Win32_OperatingSystem
$cpu = Get-CimInstance -ClassName Win32_Processor
$memory = Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum
$user = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name

# Display system information
Write-Host "System Information:"
Write-Host "Operating System: $($os.Caption) $($os.Version)"
Write-Host "CPU: $($cpu.Name)"
Write-Host "Total Memory: $([math]::round($memory.Sum / 1GB, 2)) GB"
Write-Host "Current User: $user"
