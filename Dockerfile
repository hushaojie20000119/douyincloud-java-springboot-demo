# 抖音云容器服务：直接运行已编译好的 Spring Boot jar
# 基础镜像沿用抖音云官方提供的 JDK8 镜像（ guaranteed 可拉取）
FROM public-cn-beijing.cr.volces.com/public/base:maven-3.6.0-jdk-8-slim

WORKDIR /opt/application
COPY candyracing-server-0.1.0.jar /opt/application/app.jar
COPY run.sh /opt/application/run.sh
RUN chmod +x /opt/application/run.sh

# 与服务端 application.yml / 平台回调配置保持一致
EXPOSE 8000

CMD ["sh", "/opt/application/run.sh"]
