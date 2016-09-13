Repo Info
=========
Build [Docker] image for [DNSMasq] running on [Alpine] Linux

Consuming
---------
```
docker up -d -p 53:53 -p 53:53/udp mrlesmithjr/dnsmasq:alpine
```

Configuring
-----------
You may wish to define your own [DNSMasq] configurations...  
You may do this by editing `config/ansible/dnsmasq.conf.j2` or defining vars in
`config/ansible/dnsmasq_vars.yml` which correlate to vars in
`config/ansible/dnsmasq.conf.j2`

Once your configuration is defined, rebuild the image in order to implement the
configuration.

Below are the default configurations:
`config/ansible/dnsmasq.conf.j2`
```
# Configuration file for dnsmasq.
#
{% if dnsmasq_nameservers is defined %}
{%   for item in dnsmasq_nameservers %}
server={{ item }}
{%   endfor %}
{% endif %}
```
`config/ansible/dnsmasq_vars.yml`
```
---
# dnsmasq_nameservers:
#   - '8.8.8.8'
#   - '8.8.4.4'
```

Building
--------
```
docker build -t dnsmasq .
```

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- [@mrlesmithjr]
- [everythingshouldbevirtual.com]
- [mrlesmithjr@gmail.com]

[Alpine]: <https://alpinelinux.org/>
[Ansible]: <https://www.ansible.com/>
[DNSMasq]: <http://www.thekelleys.org.uk/dnsmasq/doc.html>
[Docker]: <https://www.docker.com>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
