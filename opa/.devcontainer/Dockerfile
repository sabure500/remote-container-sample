FROM alpine:3.12

# ===== common area =====
RUN apk add --no-cache fish git openssh
COPY .config/fish/config.fish /root/.config/fish/config.fish
# =======================

ENV OPA_VERSION 0.21.0
ENV CONFTEST_VERSION 0.19.0
RUN apk add --no-cache curl wget tar \
    && curl -L -o /usr/local/bin/opa https://openpolicyagent.org/downloads/v${OPA_VERSION}/opa_linux_amd64 \
    && wget -P /usr/local/bin https://github.com/instrumenta/conftest/releases/download/v${CONFTEST_VERSION}/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz \
    && tar xzf /usr/local/bin/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz -C /usr/local/bin \
    && rm /usr/local/bin/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz \
    && chmod 755 /usr/local/bin/opa /usr/local/bin/conftest