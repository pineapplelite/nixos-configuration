<p align="center">
    <i>A minimalist Unix-like NixOS configuration.</i>
</p>

<p align="center">
    <a href="https://github.com/pineapplelite/nixos-configuration/tags">
        <img
            src="https://img.shields.io/github/v/tag/pineapplelite/nixos-configuration?style=for-the-badge&labelColor=1a1b26&color=7aa2f7&logo=github&logoColor=c0caf5"
            alt="Last tag"
        />
    </a>
    <a href="https://github.com/pineapplelite/nixos-configuration/blob/main/LICENSE">
        <img
            src="https://img.shields.io/github/license/pineapplelite/nixos-configuration?style=for-the-badge&labelColor=1a1b26&color=7aa2f7&logo=github&logoColor=c0caf5"
            alt="GitHub Tags"
        />
    </a>
    <a href="https://github.com/pineapplelite/nixos-configuration/stargazers">
        <img
            src="https://img.shields.io/github/stars/pineapplelite/nixos-configuration?style=for-the-badge&labelColor=1a1b26&color=7aa2f7&logo=github&logoColor=c0caf5"
            alt="GitHub Stars"
        />
    </a>
</p>

---

# Configuration history

It started when i wanted to try something new...

I used Arch Linux with Hyprland for a long time, but in one moment it started to seem like something boring for me.

Then i tried NixOS... And it's just so good! You are literally customizing something you use every day!

But... After switching to NixOS, my interest for rEFInd is lost due "generations". At first i thought that i would soon return to my theme and make it more beautiful, cooler and modern... But i realized that this is the end. Pneaple-Boot-Theme archived June 14, 2026 at 20:30 UTC+3.

Ok, the theme is the theme, but what about the configuration? Initially, when i just started to create the structure, it looked like this:

```
.
├── app
│   ├── app.nix
│   ├── app.noctalia-shell.nix
│   └── app.zen-browser.nix
├── sys
│   ├── sys.fish.nix
│   ├── sys.nix
│   └── sys.stylix.nix
├── usr
│   ├── usr.nix
│   └── usr.user.nix
├── configuration.nix
├── flake.lock
├── flake.nix
├── hardware-configuration.nix
└── wallpaper.jpg

4 directories, 13 files
```
Yes, this configuration looks really bad... 

In this, fisrt structure, app.nix contained packages like niri, which were installed via environment.systemPackages. Flake packages were installed, as you can see, in separate files ("app.noctalia-shell.nix", for example).

When sys.nix contained standard system settings like graphics, bluetooth, system services, etc (but fish and stylix were stored separately like app's).

And usr.nix contained paths to user files (which contains an user settings like users.users.{username}). This paths had "usr.${username}.nix" standard.

configuration.nix, however, brought it all together using imports.

After using this structure for a short time, i found it very bad, but i had no motivation to change it. Because of this, i temporarily swiched to FreeBSD. After setting up a wifibox there (due to missing driver), i spent over a week on this operating system... And i was ready to return to NixOS: i had gained motivation...

I got so carried away that i built the first version (v1.0.0 can seen in the commits) litereally in TTY. It was fun! But even v1.0.0 had many flaws: i copied a structure that was more suited to regular operating systems, not managing an existing one. I was trying to "recreate" an operating system within an existing one. That was my mistake!

By v1.2.0, i was no longer happy with the structure... It started to seem bad to me again. Then i switched again... To Void Linux. I spent a month there. After trying Void Linux, i regained my motivation... And completely rewrote the configuration... It was back in a TTY! That's when v2.0.0 came out! :) I really like the structure:

> sys: basic system settings, organized into folders and files;
> svc: configured services;
> pkg: system-wide packages;
> ui: mostly stylix settings — global theme, fonts and cursor;
> home: configs, users.

I also follow a cool rule for installing packages: create a folder with the exact name of the package from the nixpkgs repository in the pkg folder. This rule helps me understand how to install this package in a different configuration, or, for example, find all the possible declarative settings for configuration of this package. This rule also applies to services.

I'm really glad i found a structure that works for me!

# Preview
<img
    src="./preview/preview-1.png"
    align="center"
/>

<img
    src="./preview/preview-2.png"
    align="center"
/>
>Base:
>    **DM**: ly
>    **WM**: niri
>    **Lock Screen**: gtklock
>    **Lock Idle**: swayidle
>    **Topbar**: ironbar
>    **Wallpapers**: awww
>    **Terminal**: foot
>    **Shell**: fish


# Installation

soon...
