FROM alpine:3.12

# ===== common area =====
RUN apk add --no-cache fish git openssh curl
COPY .config/fish/config.fish /root/.config/fish/config.fish
# =======================

ENV KUBECTL_VERSION 1.18.4
ENV KUSTOMIZE_VERSION 3.1.0
ENV ARGOCD_VERSION 1.5.2
RUN curl -sfL -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
    && curl -sfL -o /usr/local/bin/kustomize https://github.com/kubernetes-sigs/kustomize/releases/download/v${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_amd64 \
    && curl -sfL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/download/v${ARGOCD_VERSION}/argocd-linux-amd64 \
    && chmod +x /usr/local/bin/kubectl /usr/local/bin/kustomize /usr/local/bin/argocd