#!/usr/bin/env bash
set -euo pipefail

mkdir -p third_party
git submodule add --force https://github.com/rbsec/dnscan third_party/dnscan || true
git submodule add --force https://github.com/guelfoweb/knock third_party/knockpy || true
git submodule add --force https://github.com/aboul3la/Sublist3r third_party/sublist3r || true
git submodule add --force https://github.com/blechschmidt/massdns third_party/massdns || true
echo "NOTE: nmap is not a git repo URL. Follow upstream docs: https://nmap.org"
git submodule add --force https://github.com/robertdavidgraham/masscan third_party/masscan || true
git submodule add --force https://github.com/ChrisTruncer/EyeWitness third_party/eyewitness || true
echo "NOTE: dirbuster is not a git repo URL. Follow upstream docs: https://sourceforge.net/projects/dirbuster/"
git submodule add --force https://github.com/maurosoria/dirsearch third_party/dirsearch || true
git submodule add --force https://github.com/michenriksen/gitrob third_party/gitrob || true
git submodule add --force https://github.com/awslabs/git-secrets third_party/git-secrets || true
git submodule add --force https://github.com/yasinS/sandcastle third_party/sandcastle || true
echo "NOTE: bucket_finder is not a git repo URL. Follow upstream docs: https://digi.ninja/projects/bucket_finder.php"
git submodule add --force https://github.com/ZephrFish/GoogD0rker/ third_party/googd0rker || true
echo "NOTE: wayback_machine is not a git repo URL. Follow upstream docs: https://web.archive.org"
git submodule add --force https://gist.github.com/mhmdiaa/adf6bff70142e5091792841d4b372050 third_party/waybackurls || true
git submodule add --force https://github.com/1N3/Sn1per/ third_party/sn1per || true
git submodule add --force https://github.com/evilsocket/xray third_party/xray || true
git submodule add --force https://github.com/xmendez/wfuzz/ third_party/wfuzz || true
git submodule add --force https://github.com/lanjelot/patator third_party/patator || true
git submodule add --force https://github.com/DataSploit/datasploit third_party/datasploit || true
git submodule add --force https://github.com/vanhauser-thc/thc-hydra third_party/hydra || true
git submodule add --force https://github.com/ztgrace/changeme third_party/changeme || true
git submodule add --force https://github.com/MobSF/Mobile-Security-Framework-MobSF/ third_party/mobsf || true
git submodule add --force https://github.com/iBotPeaches/Apktool third_party/apktool || true
echo "NOTE: dex2jar is not a git repo URL. Follow upstream docs: https://sourceforge.net/projects/dex2jar/"
echo "NOTE: sqlmap is not a git repo URL. Follow upstream docs: http://sqlmap.org/"
git submodule add --force https://github.com/BuffaloWill/oxml_xxe/ third_party/oxml_xxe || true
git submodule add --force https://github.com/enjoiz/XXEinjector third_party/xxe_injector || true
git submodule add --force https://github.com/ticarpi/jwt_tool third_party/jwt_tool || true
git submodule add --force https://github.com/jobertabma/ground-control third_party/ground-control || true
git submodule add --force https://github.com/JacobReynolds/ssrfDetector third_party/ssrfDetector || true
git submodule add --force https://github.com/D35m0nd142/LFISuite third_party/lfisuite || true
git submodule add --force https://github.com/internetwache/GitTools third_party/gittools || true
git submodule add --force https://github.com/kost/dvcs-ripper third_party/dvcs-ripper || true
git submodule add --force https://github.com/anshumanbh/tko-subs third_party/tko-subs || true
git submodule add --force https://github.com/nahamsec/HostileSubBruteforcer third_party/HostileSubBruteforcer || true
git submodule add --force https://github.com/insp3ctre/race-the-web third_party/race-the-web || true
git submodule add --force https://github.com/GoSecure/ysoserial third_party/ysoserial || true
git submodule add --force https://github.com/ambionics/phpggc third_party/phpggc || true
git submodule add --force https://github.com/RUB-NDS/CORStest third_party/CORStest || true
git submodule add --force https://github.com/RetireJS/retire.js third_party/retirejs || true
git submodule add --force https://github.com/vulnersCom/getsploit third_party/getsploit || true
git submodule add --force https://github.com/1N3/Findsploit third_party/findsploit || true
git submodule add --force https://github.com/mazen160/bfac third_party/bfac || true
echo "NOTE: wpscan is not a git repo URL. Follow upstream docs: https://wpscan.org/"
git submodule add --force https://github.com/Dionach/CMSmap third_party/cmsmap || true
git submodule add --force https://github.com/OWASP/Amass third_party/amass || true
echo "NOTE: projectdiscovery is not a git repo URL. Follow upstream docs: http://projectdiscovery.io"
git submodule update --init --recursive
