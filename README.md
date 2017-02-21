# COUNTER STRIKE GLOBAL OFFENSIVE - 5ON5 PUG DEDICATED SERVER

![CS:GO](http://cdn.akamai.steamstatic.com/steam/apps/730/header.jpg)

### Description

- Ready-to-use CS:GO dedicated server
- MetaMod, SourceMod and CS:GO Pug (5on5) mod included!

### Installation

```sh
$ docker run -p 27015:27015/udp -p 27015:27015/tcp -ti --name csgo-5on5-ds kevinanidjar/csgo-5on5-pug-dedicated-server
```

### Server administration

```sh
$ /home/csgoserver/csgoserver start|stop|details|...
```


### Other commands

Stop the container
```sh
$ docker stop csgo-5on5-ds
```

Start the container
```sh
$ docker start -ai csgo-5on5-ds
```

### Mods

The following mods are included:

| Plugin | README |
| ------ | ------ |
| LGSM CS:GO Server | https://gameservermanagers.com/lgsm/csgoserver |
| MetaMod | https://www.sourcemm.net |
| SourceMod | https://www.sourcemod.net |
| CS:GO Pug setup | https://github.com/splewis/csgo-pug-setup |

### Bugs / Requests / Infos

Kevin Anidjar <contact@kevin-anidjar.com>
