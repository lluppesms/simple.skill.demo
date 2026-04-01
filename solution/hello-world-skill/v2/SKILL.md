---
name: hello-world
description: A simple skill that responds when "Hello, World!" is typed by the user.
---

# Hello World
Use the `hello-world` skill to get a friendly greeting whenever the user types the phrase "hello world". 
Run the script to get more info about the system and the user, then respond with a cheerful "Hello, <$User>!" message in ASCII art.

Here's a simple PowerShell script that retrieves system information and displays it in a readable format. You can integrate this script into this skill to provide additional functionality.

```powershell
# Get system information
$os = Get-CimInstance -ClassName Win32_OperatingSystem
$cpu = Get-CimInstance -ClassName Win32_Processor
$memory = Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum
$user = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
# Display system information
Write-Host "System Information:"
Write-Host "Operating System: $($os.Caption) $($os.Version)"  
Write-Host "CPU: $($cpu.Name)"
Write-Host "Total Memory: $([math]::round($memory.Sum / 1 GB, 2)) GB"
Write-Host "Current User: $user"
```
