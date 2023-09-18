# LGSformacOS
Allows Logitech Gaming Software to easily run on modern versions of macOS.

**Instructions**
Open Terminal (Applications > Utilities > Terminal).
Run the following command:
```
curl -fSSL https://raw.githubusercontent.com/GreeniusGenius/LGSformacOS/main/src/Downloadandinstall.command | zsh
```
Follow the prompts, making sure to click through the installer once downloaded.
You will be left with a file in `$HOME/Scripts/LGSbundle/LGS.command` which allows you to run Logitech Gaming Software without any stupid 'This app can't run on your version of macOS' popups.

**NB**
This entire shebang is only necessary because Logitech G Hub is completely broken, and has been for years.


