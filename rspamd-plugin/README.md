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
Maybe you want Pyzor add some score to your spam score :-)

Edit `/etc/rspamd/local.d/metrics.conf` and add this section:
```
symbol "PYZOR" {
    weight = 0.5;
    description = "Detected as spam by pyzor";
}
```
In this example i wrote a `0.5` weight. This allow you to evaluate if and how Pyzor works on your environment.

From [cgt manual](https://github.com/cgt/rspamd-plugins/issues/1#issuecomment-379147658):
> Keep in mind that the Pyzor score is dynamic. The weight you set will be multiplied by a score set by the script depending on the number of spam/ham reports in Pyzor. You can see the algorithm used in [pyzor.lua](./pyzor.lua#L43) I didn't put much thought into the algorithm, I just picked some numbers.

After you monitored the behaviour for some hour, and you are satisfied of the results, you can increase the weight at about `2.0`, as @cgt suggested.

Put [pyzor.lua](./pyzor.lua) in `/etc/rspamd` folder
