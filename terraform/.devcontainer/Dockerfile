FROM hashicorp/terraform:0.12.24

# ===== common area =====
RUN apk add --no-cache fish git openssh curl unzip
COPY .config/fish/config.fish /root/.config/fish/config.fish
# =======================

ENV TFLINT_VERSION 0.17.0
RUN curl -sfL -o /usr/local/bin/tflint_linux_amd64.zip https://github.com/terraform-linters/tflint/releases/download/v${TFLINT_VERSION}/tflint_linux_amd64.zip \
    && unzip -d /usr/local/bin /usr/local/bin/tflint_linux_amd64.zip \
    && rm /usr/local/bin/tflint_linux_amd64.zip