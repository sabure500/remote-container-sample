#/bin/bash

# Wildflyへアプリをデプロイする用のシェル
# 対象のアプリケーションディレクトリで実行すること
mvn package
mv target/*.war target/target.war
sh $JBOSS_HOME/bin/jboss-cli.sh --connect "deploy target/target.war"
mvn clean