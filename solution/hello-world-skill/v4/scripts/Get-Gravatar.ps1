# Get the user's Gravatar URL from their git email address

# Retrieve email from git config
$email = git config user.email 2>$null

if (-not $email) {
    Write-Host "No git email configured. Cannot look up Gravatar."
    exit 0
}

$email = $email.Trim().ToLower()

# Compute SHA256 hash of the email (required by the Gravatar API)
$sha256 = [System.Security.Cryptography.SHA256]::Create()
$hashBytes = $sha256.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($email))
$hash = [System.BitConverter]::ToString($hashBytes).Replace("-", "").ToLower()

# Build the Gravatar URLs
$gravatarUrl     = "https://www.gravatar.com/avatar/${hash}?s=200&d=identicon"
$gravatarPageUrl = "https://www.gravatar.com/${hash}"

# # Download the Gravatar image to a local temp file
# $outPath = Join-Path $env:TEMP "gravatar_avatar.png"
# try {
#     Invoke-WebRequest -Uri $gravatarUrl -OutFile $outPath -UseBasicParsing -ErrorAction Stop
#     $savedPath = $outPath
# } catch {
#     $savedPath = ""
# }

Write-Host "Git Email:     $email"
Write-Host "Gravatar Hash: $hash"
Write-Host "Gravatar URL:  $gravatarUrl"
Write-Host "Gravatar Page: $gravatarPageUrl"
# if ($savedPath -and (Test-Path $savedPath)) {
#     Write-Host "Saved Image:   $savedPath"
# } else {
#     Write-Host "Saved Image:   FAILED"
# }
