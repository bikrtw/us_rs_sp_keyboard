# US keyboard with Spanish and Serbian symbols
This keyboard layout will add the ability to quickly type language symbols with right alt key (AltGr). Capital letters are produced normally by adding shift to this combination.

```
Serbian

AltGr + S -> š (Š)      AltGr + D -> đ (Đ)      AltGr + C -> ć (Ć)      AltGr + X -> č (Č)      AltGr + Z -> ž (Ž)

Spanish

AltGr + 1 -> ¡ (exclamation mark)               AltGr + / -> ¿ (question mark)
AltGr + A -> á (Á)      AltGr + E -> é (É)      AltGr + U -> ú (Ú)      AltGr + I -> í (Í)      AltGr + O -> ó (Ó)
AltGr + J -> ü (Ü)      AltGr + N -> ñ (Ñ)
```

# Windows
The layout file can be opened with [Microsoft's Keyboard Layout Creator (MKLC)](https://www.microsoft.com/en-us/download/details.aspx?id=102134) tool, which Microsoft distributes for free. After opening the file in MKLC, choosing Project -> Build DLL and Setup Package will create an installer that can be used to add this layout to Windows.

**Remember** to log off and on again, in order for the changes to take effect.

## Uninstallation
1. Remove keyboard dll file from `C:\windows\system32` 
2. Remove reg key from `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\`, for example `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\0000100c`, it should be the last one or near the end of the list.


# Linux
Follow the instructions in [the Linux folder](Linux/us_rs_kbd_linux.md)

## Uninstallation
1. Revert file changes
2. Reboot

# MacOS
1. Create a custom layout bundle using [Ukelele](https://software.sil.org/ukelele/) or use the one from MacOS folder
2. Put it into `/Library/Keyboard Layouts`
3. Reboot

## Removing default layout and replacing it with your custom
1. Change the current input source to your custom keyboard layout.
2. Open `~/Library/Preferences/com.apple.HIToolbox.plist` You can convert the plist to XML with `plutil -convert xml1`.
```
f=~/Library/Preferences/com.apple.HIToolbox.plist; plutil -convert xml1 $f; open $f -e
```
3. Remove the input source or input sources you want to disable from the `AppleEnabledInputSources` dictionary. If there is an `AppleDefaultAsciiInputSource` key, remove it.
4. Restart.

## Uninstallation
1. Remove `~/Library/Preferences/com.apple.HIToolbox.plist`
2. Restart
3. Open keyboard layout setting and remove your custom keyboard from the list
4. Restart
5. Remove bundle file from `/Library/Keyboard Layouts`


