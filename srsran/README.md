# SrsRAN
This directory contains the files and script needed to run the SrsRAN network:
- The [./configs](https://github.com/jwijenbergh/master-thesis-resources/tree/main/srsran/configs) directory contains the configuration files which can be changed to change the values given to SrsRAN.
- The [\*.sh](https://github.com/jwijenbergh/master-thesis-resources/tree/main/srsran) scripts are bash scripts that are used to build and [start the SrsRAN network](#starting]
- The [shell.nix] Is used for the [Nix package manager](#nix-users).
- 
## Starting
To start the SrsRAN network with your SDR attached and the phone registered in the [user_db.csv](https://github.com/jwijenbergh/master-thesis-resources/blob/main/srsran/configs/user_db.csv):

```bash
./starttmux.sh
```

To start the SrsRAN network with SrsUE:

```bash
./starttmuxue.sh
```

This needs the following dependencies:
- Dependencies to build & run SrsRAN
- Docker
- Docker-compose
- Tmux

## Nix users

Users of the [Nix](https://nixos.org/download.html) package manager can easily install the SrsRAN dependencies using the provided [shell.nix](https://github.com/jwijenbergh/master-thesis-resources/blob/main/srsran/shell.nix).
Use `nix-shell` to create an environment for SrsRAN.
