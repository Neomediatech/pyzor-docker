# pyzor-docker
Pyzor Docker image based on Alpine.

This image contains parts of @cgt [rspamd-plugins work](https://github.com/cgt/rspamd-plugins) (MIT license).

Pyzor will run as socket, exposed by pyzorsocket Python script.

## Usage
 - docker run -d -p 0.0.0.0:5953:5953 --name pyzor neomediatech/pyzor:latest
 - point your mailserver to this container on port 5953
 
## Pyzor license
GNU General Public License version 2 (https://pyzor.readthedocs.io/en/latest/introduction.html#license)
