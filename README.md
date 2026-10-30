# Emerald

Emerald is a four-app iOS jailbreak tooling workspace. This repository currently contains **buildable UI scaffolds**, not working jailbreak implementations.

## Apps
- **Emerald32M** — legacy iOS 7–10.3.3/10.3.4 research direction. Modern Xcode no longer produces 32-bit iOS app binaries, so the current CI scaffold is arm64 and does not claim iOS 7–10 compatibility.
- **EmeraldMobile** — rootful-era UI scaffold for iOS 11–15. A real jailbreak backend is not included.
- **EmeraldRootless** — rootless UI scaffold for the requested device/iOS ranges. Compatibility is not established by this UI scaffold.
- **EmeraldDT** — macOS desktop companion scaffold for A5–A13 device research. It does not exploit or jailbreak connected devices.

## Build
Each app has its own GitHub Actions workflow under `.github/workflows/`. Workflows use macOS runners and XcodeGen to generate an Xcode project from `project.yml`, then compile an unsigned app and upload it as an artifact.

See the XcodeGen project specification docs: https://github.com/yonaskolb/XcodeGen/blob/master/Docs/ProjectSpec.md

## Safety and status
No exploit, privilege escalation, bootrom exploit, bootstrap installation, code signing, or device modification backend is implemented. The apps must not be represented as functional jailbreaks until those components are independently developed, tested, and documented.
