Set-Location -Path 'C:\'

if (!(Test-Path -Path 'temp')) {
    New-Item -ItemType Directory -Path 'temp'
}

Copy-Item -Path 'app\*' -Destination 'temp' -Recurse

Set-Location -Path 'temp'

pnpm install

pnpm update

pnpm tauri build

Copy-Item -Path 'src-tauri\target\*' -Destination 'C:\app\src-tauri\target' -Recurse
