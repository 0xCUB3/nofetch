# nofetch
The world's fastest fetch script ever made. Runs on a complete potato. Made using POSIX sh unlike *some* fetch scripts.

## Why?
- Why not?
- Fetch scripts are dumb and overrated and are in every [r/unixporn](https://www.reddit.com/r/unixporn/) post

## Benefits of nofetch over other fetch scripts
1) nofetch is made using POSIX sh, meaning that it doesn't rely on bash being installed on the host
2) It is much faster. I know that nobody has enough attention span to be this far into the README so I'm not gonna put in the effort to add charts with confusing numbers but let's just say that neofetch allows me a quick bathroom break when running on a Pentium 3 laptop while nofetch doesn't even give me time to stand up.
3) If you have slow hardware, the `--flex` option generates a fake hardware report with super awesome specs so you can flex on your gaming buddies (I guess)
4) It doesn't actually fetch anything

## Installation

### ***Please be aware that easier methods are being developed and will be released in the future of the project. If you have any methods that are simpler than mine, please let me know***

### macOS/Linux
1) Download and extract the [latest release](https://github.com/0xCUB3/nofetch/releases/latest/download/nofetch.zip) to your Downloads folder.
2) Open a new Terminal window. (see [this](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac) for instructions).
3) Type in: `sudo cp ~/Downloads/nofetch.sh /usr/local/bin && chmod +x /usr/local/bin/nofetch.sh`. Type in your password when necessary
4) Type `nofetch.sh` to verify if it works.
5) Go to THING to learn how to use nofetch!
* Please note: Linux support cannot be guaranteed due to the sheer variety of Linux distributions. If you are having a problem with nofetch on your Linux install, please open an issue.

### Windows (experimental)
NOTE: For Windows you will need to install WSL2. See [what is WSL](https://docs.microsoft.com/en-us/windows/wsl/about) to learn about what that is. I am working on a native Windows version of the script that will be out in a newer release.
1) Open a PowerShell window by using the keyboard shortcut `WINDOWS + R` and typing "powershell".
2) In the newly opened PowerShell window type `wsl --install`. Follow the installation.
3) Once WSL is installed, type in Windows Search: "WSL" and open the app.
4) Type in the following: `sudo apt install curl unzip && curl -O https://github.com/0xCUB3/nofetch/releases/latest/download/nofetch.zip && unzip nofetch.zip && chmod +x nofetch.sh`. Type in your WSL password when necessary.
5) Type in `nofetch.sh` to verify if it works.

## Usage
```
Syntax: nofetch.sh --OPTION COLOR
Options:
    Colors:
        red green blue yellow magenta cyan

    Options:
        --regular     Standard nofetch output
        --lttstore    Prints 'lttstore.com' in nofetch fashion
        --flex        Lets you flex on your friends because I know the skids want that
        --help        Prints this message (but I guess you already figured that out)
```

## Pictures
![Screen Shot 2021-12-31 at 4 23 58 PM](https://user-images.githubusercontent.com/94565160/147839438-7b7271de-e06b-4f19-8c8d-289009a58b62.png) ![Screen Shot 2021-12-31 at 4 25 46 PM](https://user-images.githubusercontent.com/94565160/147839439-f14b7aaf-78bc-4252-b146-528b97000d7b.png) ![Screen Shot 2021-12-31 at 4 32 01 PM](https://user-images.githubusercontent.com/94565160/147839445-30092960-462b-4f46-8255-562fc18a3183.png)
