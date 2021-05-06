# NixOS Configuration

My [NixOS](https://nixos.org/) configuration files for a Lenovo ThinkPad X1 Carbon, gen 6 using encrypted root. [Home Manager](https://github.com/nix-community/home-manager) is configured as a standalone installation.

## Getting Started

### Installation

1. Install NixOS.
	```console
	gdisk /dev/nvme0n1
	cryptsetup luksFormat /dev/nvme0n1p2
	cryptsetup luksOpen /dev/nvme0n1p2 lvm
	pvcreate /dev/mapper/lvm
	vgcreate vg0 /dev/mapper/lvm
	lvcreate -L 20G -n swap vg0
	lvcreate -l '100%FREE' -n root vg0
	mkfs.fat -F 32 /dev/nvme0n1p1
	mkfs.ext4 -L root /dev/vg0/root
	mkswap -L swap /dev/vg0/swap
	mount /dev/vg0/root /mnt
	mkdir /mnt/boot
	mount /dev/nvme0n1p1 /mnt/boot
	swapon /dev/vg0/swap
	nixos-generate-config --root /mnt
	lsblk -f
	vi /mnt/etc/nixos/configuration.nix
	nixos-install
	reboot
	```

2. Configure Home Manager as a standalone installation. Alternatively, you could use Home Manager as a module. [Consult the manual](https://rycee.gitlab.io/home-manager/index.html#sec-install-standalone) for more details.
	```console
	nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
	nix-channel --update
	nix-shell '<home-manager>' -A install
	```

3. Clone this repository.
	```console
	git clone https://github.com/jpreagan/nix-config.git ~/.config/nix-config
	```

4. Make a backup of your current config files.
	```console
	mv /etc/nixos /etc/nixos.bak
	mv ~/.config/nixpkgs ~/.config/nixpkgs.bak
	```

5. Copy over the `hardware-configuration.nix` file generated during installation.
	```console
	cp /etc/nixos.bak/hardware-configuration.nix ~/.config/nix-config/
	```

6. Link up the files so they are now usable.
	```console
	ln -s ~/.config/nix-config/system /etc/nixos
	ln -s ~/.config/nix-config/home ~/.config/nixpkgs
	```

7. Audit the files and alter them to your liking. In particular you might want to change the system username, e.g.,
	```console
	cd ~/.config/nix-config && find . -type f -exec sed -i 's/james/myusername/g' {} +
	```

8. Rebuild the system.
	```console
	sudo nixos-rebuild switch --upgrade
	nix-channel --update && home-manager switch
	```

9. Delete the version control and make your own.
	```console
	cd ~/.config/nix-config && rm -rf .git && git init
	```

## License

Distributed under the MIT License. See `LICENSE` for more information.
