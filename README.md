# Keep 5G Alive on Android

HyperOS aggressively switches **5G → 4G** when it thinks hotspot or tethering is idle.  
If your carrier gives **unlimited 5G but capped 4G** (Airtel), this is super annoying.

This repository has a tiny **Windows `.bat` file** that sends **1 ping every 5 seconds** to keep hotspot traffic alive and prevent HyperOS from dropping 5G.

## How to use

1. Turn on **Wi-Fi hotspot or USB tethering** on your phone.
2. Turn on **Caffeine mode** (keeps the screen logically awake).
3. Double-click `keep_5g_alive.bat`.
4. Minimize the window — 5G will stay alive.
5. Close the `.bat` window when done — 5G may drop back to 4G.

## Data usage

~**1 MB in 45 hours**. Basically nothing.

## Notes

- Works with both **USB tethering** and **Wi-Fi hotspot**.
- **Caffeine mode alone** doesn’t work.
- **Ping interval >5 sec** may fail.
- No root required.
- Slight extra battery drain is expected.

## File

- `keep_5g_alive.bat` → the ping loop
