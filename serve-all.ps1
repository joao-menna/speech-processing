Set-Location .\slidev
wt -w 0 --title "Slidev" -d . PowerShell -c "pnpm slidev"

Set-Location ..\tts.rocks
wt -w 0 --title "TTS" -d . PowerShell -c "npx serve"

Set-Location ..\whisper-web
wt -w 0 --title "Whisper" -d . PowerShell -c "pnpm dev"

Set-Location ..\