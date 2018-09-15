# pyzor-rspamd

A [Pyzor](https://github.com/SpamExperts/pyzor) plugin for [Rspamd](https://rspamd.com/).

Requires [pyzorsocket](pyzorsocket).

Distributed under the MIT license. See top-level LICENSE file.

## Prerequisites
* make sure to have configured [pyzor](../README.md)

## Usage
in `/etc/rspamd/rspamd.conf.local` put this sections:
```
pyzor {
    host = 127.0.0.1;
    port = 5953;
}

modules {
    path = "$CONFDIR/pyzor.lua"
}
```

Put [pyzor.lua](./pyzor.lua) in `/etc/rspamd` folder
