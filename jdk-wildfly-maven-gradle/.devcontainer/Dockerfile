FROM adoptopenjdk/openjdk11:alpine-slim

# ===== common area =====
ENV WORKSPACE_DIR "/workspace"
RUN apk add --no-cache fish git openssh curl wget tar unzip\
    && mkdir -p $WORKSPACE_DIR
COPY .config/fish/config.fish /root/.config/fish/config.fish
# =======================

# ==== wildfly install =====
ENV JBOSS_HOME "/opt/wildfly"
ENV WILDFLY_VERSION "20.0.0.Final"

RUN wget -P /opt http://download.jboss.org/wildfly/${WILDFLY_VERSION}/wildfly-${WILDFLY_VERSION}.tar.gz \
    && tar -zxvf /opt/wildfly-${WILDFLY_VERSION}.tar.gz -C /opt \
    && rm /opt/wildfly-${WILDFLY_VERSION}.tar.gz \
    && mv /opt/wildfly-${WILDFLY_VERSION} ${JBOSS_HOME} \
    && $JBOSS_HOME/bin/add-user.sh admin admin --silent
# =======================

# ==== maven install =====
ENV MAVEN_HOME "/opt/maven"
ENV MAVEN_VERSION 3.6.3
ENV PATH "$PATH:$MAVEN_HOME/bin"
ENV MAVEN_CONFIG "$HOME/.m2"
RUN curl -fsSL -o /opt/apache-maven-${MAVEN_VERSION}-bin.tar.gz http://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
    && tar -zxvf /opt/apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt \
    && rm /opt/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
    && mv /opt/apache-maven-${MAVEN_VERSION} /opt/maven
# =======================

# ==== gradle install ====
ENV GRADLE_HOME "/opt/gradle"
ENV GRADLE_VERSION 6.5
ENV PATH "$PATH:$GRADLE_HOME/bin"
RUN curl -fsSL -o /opt/gradle-${GRADLE_VERSION}-bin.zip https://downloads.gradle-dn.com/distributions/gradle-${GRADLE_VERSION}-bin.zip \
    && unzip -d /opt /opt/gradle-${GRADLE_VERSION}-bin.zip \
    && rm /opt/gradle-${GRADLE_VERSION}-bin.zip \
    && mv /opt/gradle-${GRADLE_VERSION} /opt/gradle
# =======================