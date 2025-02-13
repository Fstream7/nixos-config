Very basic NixOS config. 
I'm just learning to use nix and there may be mistakes here. 


#### Configuration
1. Clone repo. 
2. Create link to /etc/nixos
```
sudo ln -ls /path/nix-config /etc/nixos
```
3. Apply changes:
```
sudo nixos-rebuild switch
```