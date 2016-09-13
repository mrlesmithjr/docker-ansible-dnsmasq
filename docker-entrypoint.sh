#!/bin/sh

ansible-playbook -i "localhost," -c local /config/ansible/docker-entrypoint.yml

sleep 5

exec supervisord -n
