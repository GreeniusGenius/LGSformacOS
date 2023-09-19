# LGSformacOS
Allows Logitech Gaming Software to easily run on modern versions of macOS.(Tested on macOS Sonoma RC)

**Instructions**
Open Terminal (Applications > Utilities > Terminal).
Run the following command:
```
curl -fSSL https://raw.githubusercontent.com/GreeniusGenius/LGSformacOS/main/src/Downloadandinstall.command | zsh
```
Follow the prompts, making sure to click through the installer once downloaded. Once it has prompted you to restart, return to this webpage and copy and paste the command again into a terminal window; it will pick up from where we left off.

You will be left with a file in `$HOME/Scripts/LGSbundle/LGS.command` which allows you to run Logitech Gaming Software without any stupid 'This app can't run on your version of macOS' popups.
  While this method of running LGS not only opens LGS, but opens the terminal in the background, it is important to note that in LGS, you can choose to save your settings / customisation to the onboard storage. Then you don't have to run it in the background, with settings retained.

**NB**
This entire shebang is only necessary because Logitech G Hub is completely broken, and has been for years. Also the Logitech Onboard Memory Manager is not available for Mac, and crashes on WINE anyways... Thankfully my g305 is old enough to be supported by LGS.

**PS**
You are welcome to read through the source in `/src/Downloadandinstall.command`.
This script downloads the installer direct from the Logitech website, so it is completely safe.
Credits: [Hypersun_pro on Reddit](https://www.reddit.com/r/macgaming/comments/mtnuy9/comment/h1u2od2), [aguaman15](https://www.reddit.com/r/macgaming/comments/mtnuy9/comment/i408c6h).

