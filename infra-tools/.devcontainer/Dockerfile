FROM alpine:3.12

# ===== common area =====
RUN apk add --no-cache fish git openssh curl unzip wget
COPY .config/fish/config.fish /root/.config/fish/config.fish
# =======================


# ===== terraform =====
ENV TERRAFORM_VERSION 0.13.5
ENV TFLINT_VERSION 0.17.0
RUN wget -P /usr/local/bin "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" \
    && unzip -d /usr/local/bin /usr/local/bin/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && curl -sfL -o /usr/local/bin/tflint_linux_amd64.zip https://github.com/terraform-linters/tflint/releases/download/v${TFLINT_VERSION}/tflint_linux_amd64.zip \
    && unzip -d /usr/local/bin /usr/local/bin/tflint_linux_amd64.zip \
    && rm /usr/local/bin/terraform_${TERRAFORM_VERSION}_linux_amd64.zip /usr/local/bin/tflint_linux_amd64.zip
# =====================

# ====== packer ========
ENV PACKER_VERSION 1.6.4
RUN wget -P /usr/local/bin "https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip" \
    && unzip -d /usr/local/bin /usr/local/bin/packer_${PACKER_VERSION}_linux_amd64.zip \
    && rm /usr/local/bin/packer_${PACKER_VERSION}_linux_amd64.zip
# =====================

# === kubernetes ===
ENV KUBECTL_VERSION 1.18.4
ENV KUSTOMIZE_VERSION 3.1.0
ENV ARGOCD_VERSION 1.7.8
RUN curl -sfL -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
    && curl -sfL -o /usr/local/bin/kustomize https://github.com/kubernetes-sigs/kustomize/releases/download/v${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_amd64 \
    && curl -sfL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/download/v${ARGOCD_VERSION}/argocd-linux-amd64 \
    && chmod +x /usr/local/bin/kubectl /usr/local/bin/kustomize /usr/local/bin/argocd
# ==================

# === OpenPolicyAgent ===
ENV OPA_VERSION 0.21.0
ENV CONFTEST_VERSION 0.19.0
RUN curl -L -o /usr/local/bin/opa https://openpolicyagent.org/downloads/v${OPA_VERSION}/opa_linux_amd64 \
    && wget -P /usr/local/bin https://github.com/instrumenta/conftest/releases/download/v${CONFTEST_VERSION}/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz \
    && tar xzf /usr/local/bin/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz -C /usr/local/bin \
    && rm /usr/local/bin/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz \
    && chmod +x /usr/local/bin/opa /usr/local/bin/conftest
# ========================