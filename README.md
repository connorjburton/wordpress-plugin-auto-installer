#Wordpress Plugin Auto Installer

Useful for teams installing the same plugins on each wordpress install each time.

## Prerequisites

This auto installer requires ```wget```, if you don't have ```wget``` then please go to [Brew.sh](http://brew.sh/) and follow the first two commands.

You will need somewhere to host your plugins.txt file, the bash file will pull the list down and use that to install the plugins.

## One off installation guide

If you have already done this, see Usage below.

This will only needed to be run once to install the auto installer on your mac. Please raise an issue if anything goes wrong.

- Open Terminal
- Paste the code from ``` /src/install.sh ``` and press enter (You may get asked for your password)
- Restart (Cmd + Q) terminal

## Usage

This is only intended for use on a development environment.

- Open Terminal
- Navigate to the plugins folder you would like to install the plugins in
- Run ``` wp_plugins ```
- Log into your WP Admin and active the plugins
- Done!

## Updates

If there are any updates to the plugins list just run ``` wp_plugins ``` again in the same directory and it will be installed.

If there are any updates to the auto installer itself, you will need to follow the One off installation guide again.

## Uninstall

If you ever want to uninstall the auto installer:

- Open Terminal
- Run ``` rm ~/.wp-plugins-install.sh ```
- Run ``` nano ~/.bash_profile ```
- Remove the line ``` source ~/.wp-plugins-install.sh ```
- Press ``` CMD + X ``` and then ``` Y ```
- Everything is back to the way it was
