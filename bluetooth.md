Ubuntu does not come with correct bluetooth driver for xps 13 (9343), use:

https://github.com/winterheart/broadcom-bt-firmware


This command will show which driver could not be loaded:

```bash
dmesg | grep -i bluetooth
```

