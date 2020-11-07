FROM node:14.14.0-alpine3.12

# ===== common area =====
RUN apk add --no-cache fish git openssh curl wget unzip
COPY .config/fish/config.fish /root/.config/fish/config.fish
# =======================

# === Vue.js ===
RUN npm install -g vue@3.0.1 @vue/cli@4.5.7
# ==============

# === gRPC ===
ENV PROTO_BUF 3.13.0
ENV GRPC_WEB 1.2.1
RUN apk add --no-cache protobuf
RUN curl -sfL -o /usr/local/bin/protoc-gen-grpc-web https://github.com/grpc/grpc-web/releases/download/$GRPC_WEB/protoc-gen-grpc-web-$GRPC_WEB-linux-x86_64 \
    && chmod +x /usr/local/bin/protoc-gen-grpc-web
# ============