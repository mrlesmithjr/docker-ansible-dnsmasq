#!/bin/sh

ansible-playbook -i "localhost," -c local /docker-entrypoint.yml

sleep 5

exec supervisord -n
