Making Windows Play Nice with Dual-Boot
=======================================

## Clock
Ubuntu sets the hardware clock to UTC. Windows expects it to be set to local time, so Windows will not display the correct time if ubuntu has reset the hardware clock.
Use the registry keys in `hardware_clock_utc.reg` to tell Windows that the hardware clock is in UTC.
