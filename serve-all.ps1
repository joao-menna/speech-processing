Set-Location .\slidev
wt -w 0 -d . PowerShell -c "pnpm slidev"

Set-Location ..\tts.rocks
wt -w 0 -d . PowerShell -c "npx serve"

Set-Location ..\whisper-web
wt -w 0 -d . PowerShell -c "pnpm dev"

Set-Location ..\