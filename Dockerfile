FROM jboss/keycloak
ENV KEYCLOAK_USER admin
ENV KEYCLOAK_PASSWORD admin
ENV DB_VENDOR postgres
ENV JDBC_PARAMS 'connectTimeout=30'
ENV DB_ADDR ec2-54-247-178-166.eu-west-1.compute.amazonaws.com
ENV DB_PORT 5432
ENV DB_DATABASE d6a9qiqonappj8
ENV DB_USER vnfundbmvmbioa
ENV DB_PASSWORD 29674c3ba3e5ec65875b05670ecb80c88d27b5448a18562db6efa9f5e5d28bd6
ENV DB_SCHEMA keycloak
ENV JAVA_TOOL_OPTIONS '-Xmx300m -Xss512k -XX:CICompilerCount=2'
COPY docker-entrypoint.sh /opt/jboss/tools
RUN chmod +x /opt/jboss/tools/docker-entrypoint.sh
ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]