
FROM debian:stable-slim

ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /workspace

RUN apt-get update && apt-get install -y --no-install-recommends \ 
    ca-certificates git curl wget build-essential python3 python3-pip python3-venv     openjdk-17-jre-headless openjdk-17-jdk-headless     nmap masscan dnsutils jq unzip     && rm -rf /var/lib/apt/lists/*

# Optional: add your submodules (they'll be mounted at runtime)
COPY scripts/install_deps.sh /usr/local/bin/install_deps.sh
RUN chmod +x /usr/local/bin/install_deps.sh

# Create a non-root user
RUN useradd -ms /bin/bash runner
USER runner

ENV PATH="/workspace/bin:${PATH}"

CMD ["/bin/bash"]
