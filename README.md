# docker-rpi-ansible-thingy

Bootstrap RPI nodes with HypriotOS ( http://blog.hypriot.com/ ) to a sane baseconfig ready for Docker usage.

Currently nothing is really tied to HypriotOS, eg. this could very well be used with basic raspbian.

## Currently does the following 

### Base
- Ansible dependencies
- Set GPU mem to 16M and overclock to 900/1000Mhz (rpi1 vs rpi2)
- Set hostname
- Install and configure time services (ntpd + UTC tz)
- Install pasic packages
  - Ruby, screen, vim etc
- Provision a 512M swapfile
- Add a local user for sudo access

### Docker
- Pull swarm container, join swarm
- Install manager on docker1

## Usage

1. Run `./bootstrap_python.sh` to get Python2.7 for Ansible installed (notice the hostname in script)
2. Normally run Ansible with base eg. `ansible-playbook base.yml -i hosts --ask-pass`

## TODO

- Maybe dynamic swarm token. Hardcoded ansible variable for now
- Manager side is a bit fugly
