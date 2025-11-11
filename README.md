# Bug Bounty Toolkit (Meta-Repo Template)

This repo is a **curated meta-repo** that organizes popular offensive-security tools as **Git submodules** and provides a Docker image, wrapper CLI, and reproducible setup. 
It intentionally **does not vend third‑party source code**. You add the upstream projects as submodules, pinned to commits.

> Legal: Each upstream project has its own license and usage terms. You are responsible for respecting them and for lawful use.

## Why submodules?
- You don't violate licenses by copying code
- You can pin exact commits for reproducibility
- You can update or remove tools independently

## Quick start
```bash
# 1) create your own repo and push this template
git init
git add .
git commit -m "init: bug bounty toolkit meta-repo"
# add your origin then push

# 2) add all tools as submodules (pinned to default branches)
./scripts/add_submodules.sh

# 3) build the Docker image with all deps
docker build -t bugbounty-toolkit .

# 4) run the container
docker run --rm -it -v "$PWD:/workspace" bugbounty-toolkit

# 5) use the helper CLI (inside or outside Docker)
./bin/bbtool --help
```

## Tools catalog
The following upstream tools are supported via submodules:
- **dnscan** — https://github.com/rbsec/dnscan
- **knockpy** — https://github.com/guelfoweb/knock
- **sublist3r** — https://github.com/aboul3la/Sublist3r
- **massdns** — https://github.com/blechschmidt/massdns
- **nmap** — https://nmap.org
- **masscan** — https://github.com/robertdavidgraham/masscan
- **eyewitness** — https://github.com/ChrisTruncer/EyeWitness
- **dirbuster** — https://sourceforge.net/projects/dirbuster/
- **dirsearch** — https://github.com/maurosoria/dirsearch
- **gitrob** — https://github.com/michenriksen/gitrob
- **git-secrets** — https://github.com/awslabs/git-secrets
- **sandcastle** — https://github.com/yasinS/sandcastle
- **bucket_finder** — https://digi.ninja/projects/bucket_finder.php
- **googd0rker** — https://github.com/ZephrFish/GoogD0rker/
- **wayback_machine** — https://web.archive.org
- **waybackurls** — https://gist.github.com/mhmdiaa/adf6bff70142e5091792841d4b372050
- **sn1per** — https://github.com/1N3/Sn1per/
- **xray** — https://github.com/evilsocket/xray
- **wfuzz** — https://github.com/xmendez/wfuzz/
- **patator** — https://github.com/lanjelot/patator
- **datasploit** — https://github.com/DataSploit/datasploit
- **hydra** — https://github.com/vanhauser-thc/thc-hydra
- **changeme** — https://github.com/ztgrace/changeme
- **mobsf** — https://github.com/MobSF/Mobile-Security-Framework-MobSF/
- **apktool** — https://github.com/iBotPeaches/Apktool
- **dex2jar** — https://sourceforge.net/projects/dex2jar/
- **sqlmap** — http://sqlmap.org/
- **oxml_xxe** — https://github.com/BuffaloWill/oxml_xxe/
- **xxe_injector** — https://github.com/enjoiz/XXEinjector
- **jwt_tool** — https://github.com/ticarpi/jwt_tool
- **ground-control** — https://github.com/jobertabma/ground-control
- **ssrfDetector** — https://github.com/JacobReynolds/ssrfDetector
- **lfisuite** — https://github.com/D35m0nd142/LFISuite
- **gittools** — https://github.com/internetwache/GitTools
- **dvcs-ripper** — https://github.com/kost/dvcs-ripper
- **tko-subs** — https://github.com/anshumanbh/tko-subs
- **HostileSubBruteforcer** — https://github.com/nahamsec/HostileSubBruteforcer
- **race-the-web** — https://github.com/insp3ctre/race-the-web
- **ysoserial** — https://github.com/GoSecure/ysoserial
- **phpggc** — https://github.com/ambionics/phpggc
- **CORStest** — https://github.com/RUB-NDS/CORStest
- **retirejs** — https://github.com/RetireJS/retire.js
- **getsploit** — https://github.com/vulnersCom/getsploit
- **findsploit** — https://github.com/1N3/Findsploit
- **bfac** — https://github.com/mazen160/bfac
- **wpscan** — https://wpscan.org/
- **cmsmap** — https://github.com/Dionach/CMSmap
- **amass** — https://github.com/OWASP/Amass
- **projectdiscovery** — http://projectdiscovery.io

## Updating submodules
```bash
./scripts/update_submodules.sh
```

## Wrapper CLI
`bbtool` is a thin orchestrator. It checks tool availability and proxies arguments:
```bash
./bin/bbtool run sublist3r -- -d example.com
```

## Project structure
```
.
├── bin/
├── config/
├── docker-compose.yml
├── Dockerfile
├── scripts/
└── third_party/   # submodules land here
```

## Disclaimers
- Security tooling is dual‑use. You are responsible for **legal, authorized testing only**.
- This template ships under MIT; upstream tools have their own licenses.
