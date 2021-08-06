# dnpac

A simple script that "wraps" Arch Linux's package manager: Pacman, to run some operations using a syntax like Fedora/RHEL's package manager: DNF.

This project was made just for fun and learn about scripting with Bash, It is not intended for daily use or an alternative to avoid learn how Pacman works.

### Available commands:
```
{i install} <packages>
{r remove} <packages> 
{u update} 
{c clean} <packages>
{h help} <packages> 
``` 
  
### How to run (example):
```
sudo ./dnpac.sh i package1 package2 package2 ... packageN

sudo ./dnpac.sh install package1 package2 package2 ... packageN
```
