FROM mrlesmithjr/alpine-ansible

MAINTAINER Larry Smith Jr. <mrlesmithjr@gmail.com>

VOLUME ["/config"]

COPY config/ /config/

# Run Ansible playbook
RUN ansible-playbook -i "localhost," -c local /config/ansible/playbook.yml && \
  rm -rf /tmp/* && \
  rm -rf /var/cache/apk/*

# Copy Docker Entrypoint
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

COPY config/supervisord/*.ini /etc/supervisor.d/

# Expose ports
EXPOSE 53 53/udp
