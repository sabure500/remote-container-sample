FROM google/cloud-sdk:297.0.1-alpine

# ===== common area =====
RUN apk add --no-cache fish git openssh curl
COPY .config/fish/config.fish /root/.config/fish/config.fish
# =======================

ENV KUBECTL_VERSION 1.18.4
RUN curl -L -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
    && chmod +x /usr/local/bin/kubectl
