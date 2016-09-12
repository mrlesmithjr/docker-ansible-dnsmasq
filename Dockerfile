FROM mrlesmithjr/ubuntu-ansible:16.04

MAINTAINER Larry Smith Jr. <mrlesmithjr@gmail.com>

# Copy Ansible Related Files
COPY config/ansible/ /

# Run Ansible playbook
RUN ansible-playbook -i "localhost," -c local /playbook.yml && \
    apt-get -y clean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copy Docker Entrypoint
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

COPY config/supervisord/*.conf /etc/supervisor/conf.d/
COPY config/dnsmasq/*.conf /etc/dnsmasq/
COPY config/dnsmasq/conf.d/*.conf /etc/dnsmasq/conf.d/

# Expose ports
EXPOSE 53 53/udp
