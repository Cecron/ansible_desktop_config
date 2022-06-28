# My Ansible Desktop Configuration
This uses Ansible Pull and is my first attempt at automating my setup. For a great introduction, see [Using Ansible to configure your Desktops and Laptops](https://www.learnlinux.tv/using-ansible-to-configure-your-desktops-and-laptops/) from LearnLinuxTV.

## How do I run it?
Basically you don't. This is my personal config that will not do what you want, but feel free to browse and take inspiration. ;-)
If you insist on knowing how I run this, I do the following on  my laptop:

    $ sudo apt install ansible
    $ ansible-pull -U https://github.com/Cecron/ansible_desktop_config.git
