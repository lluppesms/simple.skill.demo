---
name: hello-world
description: A simple skill that responds when the user types in a prompt of "Hello"
---

# Hello World
Use the `hello-world` skill to get a friendly greeting whenever the user types the phrase "hello world".
Follow all steps below in order.

## Step 1 — Gather System Info
Run the PowerShell script located at `.github/skills/hello-world/scripts/Get-SystemInfo.ps1` to retrieve system and user information. Use the output to enrich your greeting.

## Step 2 — Find the User's Gravatar
Run the PowerShell script located at `.github/skills/hello-world/scripts/Get-Gravatar.ps1` to:
- Detect the user's email from `git config user.email`
- Compute an SHA256 hash of the email address
- Build the Gravatar URL

The script will output the Gravatar URL. Use that URL.

## Step 3 — Display the Greeting
Respond with:
1. A cheerful "Hello there, <$User>!" in ASCII art
2. A summary of the system info from Step 1
3. Display the Gravatar as a clickable markdown link: `[View Gravatar](<Gravatar URL>)`
   - Note: VS Code chat does not render inline images, so do NOT use `![...]()` image syntax — it will show as raw HTML. Use a hyperlink instead.
   - If the email was not found, say so gracefully and skip the link.
