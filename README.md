# Bug Bounty Toolkit

A meta-repository for curating high-value bug bounty reconnaissance and exploitation tooling. Each upstream project is tracked as a Git submodule so you can pin exact commits, update selectively, and stay within upstream licensing boundaries.

> ⚠️ **Safety & Legal:** Only operate these tools against assets you own or have explicit, written authorization to test. You are responsible for complying with all laws and program scopes, as well as each upstream project's license.

## Features
- **Git submodules** under `third_party/` to mirror upstream repos without vendoring code directly.
- **Containerized environment** powered by the provided `Dockerfile` and `docker-compose.yml` for reproducible setups.
- **Helper CLI scaffolding** in `bin/` (extendable for orchestrating tool runs or playbooks).
- **Config overrides** in `config/` to document defaults, wordlists, or playbook settings.

## Repository structure
```
.
├── README.md
├── LICENSE
├── Dockerfile
├── docker-compose.yml
├── bin/
├── config/
├── scripts/
├── third_party/          # upstream tooling lives here as submodules
└── .gitmodules
```

## Quick start
```bash
# clone your fork of this repository
git clone https://github.com/<your-namespace>/bugbounty-toolkit.git
cd bugbounty-toolkit

# initialize and update all registered submodules
git submodule update --init --recursive --jobs 4

# build the tooling container (optional but recommended)
docker compose build

# launch an interactive shell with the toolkit available
docker compose run --rm toolkit bash
```

### Adding a new tool submodule
```bash
git submodule add https://github.com/<owner>/<repo>.git third_party/<slug>
git add .gitmodules third_party/<slug>
git commit -m "chore: add <slug> submodule"
```
For large repositories you can use `--depth 1` when adding to keep clones shallow. Remember to update `.gitmodules` if you tweak URLs or branches.

### Updating submodules
```bash
git submodule update --remote --merge --recursive
```
Review the changes, test locally (preferably inside Docker), then commit the updated submodule pointers.

## Docker usage
- `Dockerfile` provisions common reconnaissance dependencies (building the image may take a while on first run).
- `docker-compose.yml` defines a `toolkit` service that mounts the repository at `/workspace` for immediate access to configs and scripts.
- Customize the image or compose service to install organization-specific tooling, credentials helpers, or wordlists.

## Contributing workflow
1. Confirm the tool’s license permits redistribution via submodule and aligns with the repo’s safety commitments.
2. Add the submodule under `third_party/` (see above) and document notable usage in `config/` or supporting docs.
3. Update any helper scripts/CLI wrappers in `bin/` if needed.
4. Commit the submodule pointer and accompanying docs, then open a pull request.

## License
This repository is distributed under the [MIT License](LICENSE). Each upstream submodule retains its own license—review and honor them before use.
