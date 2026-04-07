# Get the currently logged-in Windows username
$user = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name

# Output just the username portion (strip domain if present)
$username = $user.Split('\')[-1]

Write-Host "Current User: $username"
