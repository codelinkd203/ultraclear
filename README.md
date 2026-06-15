# UltraClear

Make macOS `clear` actually feel like a real terminal reset — not just a screen wipe.

UltraClear overrides `clear` to also clear scrollback (where supported), giving you a clean terminal every time.

---

## ✨ Features

* Overrides `clear` for a full terminal reset
* Clears screen + scrollback buffer (terminal dependent)
* Adds `cls` (Windows-style shortcut)
* Simple install + uninstall toggle
* No dependencies

---

## 🚀 Installation

Download and run the setup script:

```sh
cd ~/Downloads
chmod +x setup.sh
./setup.sh
```

Or download directly:

[https://raw.githubusercontent.com/codelinkd203/ultraclear/main/setup.sh](https://raw.githubusercontent.com/codelinkd203/ultraclear/main/setup.sh)

---

## 🧪 Usage

Use your terminal normally:

Enter `clear`, or even use `cls` (a Windows-style command), which is also added by UltraClear.
You may also run `rclear` to use the default clear from MacOS.

Simple as that.

---

## 🧹 Uninstall

Just re-run `setup.sh`:

* Detects existing install
* Removes changes from `~/.zshrc`
* Restores default behavior

---

## 🎬 Demo

![Demo](demo.gif)

---


## 🧠 Philosophy

A cluttered terminal slows your mind. UltraClear keeps your workspace instantly fresh so you stay focused.
