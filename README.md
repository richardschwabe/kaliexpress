<div align="center">
<h1>KaliExpress</h1>
<p>My personalised Kali setup automated via ansible playbook & roles.
</p>
</div>

# Table Of Contents
- [Table Of Contents](#table-of-contents)
- [Overview](#overview)
- [How to use](#how-to-use)
- [Details](#details)
    - [base](#base)
    - [docker](#docker)
    - [tools](#tools)
- [License](#license)


# Overview
Adjust Kali to my liking, incl:
- Custom Oh My Zsh with Powerlevel10K
- Pipx some applications
- Wordlists
- Exa and colorful outputs
- Bookmarks
- Preferred Apps


# How to use
Make sure you have ansible installed

```
sudo apt install ansible
```

Simply clone the repo and run make
```
git clone https://github.com/richardschwabe/kaliexpress.git

cd kaliexpress && make
```


# Details
The playbook consists of the following Roles

### base
This role will add the following applications:

- bat - a colorful cat alternative
- exa - a colorful ls alternative
- dbeaver - a great database management tool
- vscode - my IDE of choice
- seclists - a great wordlist collection
- chrome - my preferred browser

For personalisation it will install my personal
`.zshrc` with various settings, such as aliases for `ls` and `cat`.
Furthermore with Oh-my-zsh it will also configure the Powerlevel10k theme, and its fonts.

There is also a collection of bookmarks that are copied into the home directory. At the moment they need to be imported manually into Chrome/Firefox.

Lastly, it also makes sure that `pipx` is installed and used to install some tools, such as `CrackMapExec`. The corresponding `~/.local/bin` folder is added to the $PATH enviornment.

### docker

Installs docker from the official docker debian repo and makes sure that the docker compose plugin is installed.

This means, that there is no `docker-compose` command, but instead the new `docker compose` syntax.

Furthermore it installs `portainer-ce` locally.
### tools
These are just common executables, scripts for Academy, CTF and learning environments (non of these are obfuscated). So only really used on environments with no AV running.

Often used with
```
xfreerdp /v:10.10.10.10 /u:USER /p:PASS /drive:linux,~/pentest-tools +clipboard /dynamic-resolution
```

# License
MIT

