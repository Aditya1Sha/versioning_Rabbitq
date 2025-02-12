FROM rabbitmq:3-management
LABEL maintainer="devops@example.com"

HEALTHCHECK --interval=30s --timeout=10s --start-period=10s \
  CMD rabbitmqctl status || exit 1