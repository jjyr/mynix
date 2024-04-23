#! /bin/bash

nix build .#darwinConfigurations.devmac.system \
	--extra-experimental-features 'nix-command flakes'

./result/sw/bin/darwin-rebuild switch --flake .#devmac
