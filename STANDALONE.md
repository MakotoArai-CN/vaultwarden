# Standalone releases (no Docker)

This fork publishes **unzip-and-run** packages via GitHub Actions. Build artifacts are **not** stored in git; they are Release assets only.

## How to publish

- Push a tag `v*` (for example `v1.37.2`) → GitHub Release with zips for each platform.
- Push `main` → updates prerelease tag `standalone-nightly`.
- Actions → **Standalone Release** → Run workflow.

Workflow: `.github/workflows/standalone-release.yml`

## Package contents

| File | Role |
|------|------|
| `vaultwarden` / `vaultwarden.exe` | Server (SQLite bundled) |
| `web-vault/` | Bitwarden web client (from [bw_web_builds](https://github.com/dani-garcia/bw_web_builds)) |
| `.env` | Config (from `deploy/standalone/.env.example`) |
| `start.sh` / `start.ps1` / `start.bat` | Start in this folder so `web-vault/` is found |
| `data/` | Created at runtime |

## Platforms

| Asset | Runner | Notes |
|-------|--------|--------|
| `vaultwarden-windows-x64.zip` | `windows-latest` | MSVC, vendored OpenSSL |
| `vaultwarden-linux-x64.zip` | `ubuntu-latest` | musl static via cargo-zigbuild |
| `vaultwarden-linux-arm64.zip` | `ubuntu-latest` | musl static, aarch64 |
| `vaultwarden-macos-arm64.zip` | `macos-latest` | Apple Silicon |
| `vaultwarden-macos-x64.zip` | `macos-latest` | Intel (cross from arm runner) |

glibc-only distros can still run the musl builds. No Docker runtime is required.

## Clients

Web Vault is inside the zip. Mobile / desktop / browser apps: see [Bitwarden downloads](https://bitwarden.com/download/).
