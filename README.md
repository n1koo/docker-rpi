# docker-rpi-ansible-thingy

Bootstrap RPI nodes with HypriotOS ( http://blog.hypriot.com/ ) to a sane baseconfig ready for Docker usage.

## Currently does the following 

- Ansible dependencies
- Set hostname
- Install and configure time services (ntpd + UTC tz)
- Install pasic packages
  - Ruby, screen, vim etc
- Provision a 512M swapfile
- Add a local user for sudo access

## Usage

1. Run `./bootstrap_python.sh` to get Python2.7 for Ansible installed (notice the hostname in script)
2. Normally run Ansible with base eg. `ansible-playbook base.yml -i hosts --ask-pass`

## TODO

- Swarm
