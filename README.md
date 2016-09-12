Repo Info
=========
Build [Docker] image for [DNSMasq]

Consuming
---------
```
docker up -d -p 53:53 -p 53:53/udp mrlesmithjr/dnsmasq
```

Configuring
-----------
You may wish to define your own [DNSMasq] configurations...  
Either edit `config/dnsmasq/dnsmasq.conf` or
create `config/dnsmasq/dnsmasq/conf.d/something.conf`

Once your configuration is defined, rebuild the image in order to implement the
configuration.

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


[Ansible]: <https://www.ansible.com/>
[DNSMasq]: <http://www.thekelleys.org.uk/dnsmasq/doc.html>
[Docker]: <https://www.docker.com>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
