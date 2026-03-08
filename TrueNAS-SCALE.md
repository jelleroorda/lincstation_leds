# TrueNAS Scale setup

I've created an extra file `init-leds.sh` as a shell script. 
Used resources:
- https://github.com/fazalmajid/lincstation_leds
- https://www.lincplustech.com/viewfilebizce/2001567985437999104/White%20Paper%20on%20Installing%20TrueNAS%20and%20Migrating%20the%20Indicator%20Light%20Control%20Program%20on%20LincStation%20N2.pdf
- https://gist.github.com/aluevano/ca6431f4f15d8ea62df57e67df7d4c3d

## Set up

1. Create a new dataset on your TrueNAS instance, in my case: `/mnt/flash/scripts`.
2. Make the executable.
3. Upload the executable `lincstation_leds` along with `init-leds.sh` to the created dataset.
4. Create a new init script in TrueNAS under `System > Advanced settings > Init/Shutdown Scripts`.
    - Description: LED management
    - Type: Command
    - Command: `cd /mnt/flash/scripts && sudo ./init-leds.sh`
    - When: Post Init
    - Enabled: yes
    - Timeout: 10