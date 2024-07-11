# My Ansible Desktop Configuration
This uses Ansible Pull and is my first attempt at automating my setup. For a great introduction, see [Using Ansible to configure your Desktops and Laptops](https://www.learnlinux.tv/using-ansible-to-configure-your-desktops-and-laptops/) from LearnLinuxTV. For another example, see https://github.com/jktr/ansible-pull-example.

## How do I run it?
Basically you don't. This is my personal config that will not do what you want, but feel free to browse and take inspiration. ;-)
If you insist on knowing how I run this, I first install ansible:

    sudo apt update
    sudo apt install ansible

If I want to get the latest version of ansible, I run the `bootstrap.sh` script as root instead:

    curl -s  https://raw.githubusercontent.com/Cecron/ansible_desktop_config/main/bootstrap.sh | sudo bash -s

I then run the following ansible command;

    sudo ansible-pull -v -U https://github.com/Cecron/ansible_desktop_config.git -i "$(hostname --short),"

Explicitly specifying inventory on the command line eliminates the warning about not providing a hosts list.

When developing on my laptop I run Ansible locally with:

    ansible-playbook -v --ask-become -i "$(hostname --short)," local.yml
