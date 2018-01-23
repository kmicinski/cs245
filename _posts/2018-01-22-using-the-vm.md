---
layout: post
title:  "Using the VM"
date:   2018-1-22
categories: logistics
permalink: /using-the-vm
---

For most of this course, I'm going to have you use a virtual machine
running a light version of Linux. For the first project, you *must* do
your development on this virtual machine, since parts of your exploit
(namely: the starting address of the stack, and layout of functions)
will depend on environment variables and size of the kernel.

Follow the download link posted on Piazza for the course. If you're an
onlooker and want the link, email me (`kris@cs.haverford.edu`) and
I'll send you a link.

The VM includes most of the tools (gcc, GDB, Make, etc..) you should
need to be able to perform your work. I've also included a compiled
copy of the EDB debugger, and a copy of the open-source reverse
engineering toolkit [radare2](https://github.com/radare/radare2).

The link will give you an `.ova` file. You need to use
[VirtualBox](https://www.virtualbox.org/wiki/Downloads) to open and
run the VM. To load the VM, go to `File -> Import Appliance`. Select
the downloaded file and import it. The name of the VM should be
`311test`.

After that, you should see VirtualBox displaying something that looks
like this:

<img style="width:400px; margin:auto" src="{{ "/assets/img/vboxmenu.png" | prepend: site.baseurl}}">

You should then be able to click on `start` over `311test`. This will
open the machine, which runs linux. After that, the machine will boot
up and allow you to log in.

The username for the machine is `testvm`, and the password is also
`testvm`. You can change the password if you want, but the machine is
running inside your user account, so there's not much harm in keeping
it that way. (I.e., it is no less secure than your user account on
your computer, which is already guarded with a password.)

## Logging In to the VM / doing your work

To log in to the VM, you can use the GUI. VirtualBox has several
options for allowing you to use the virtual machine's screen inside of
your own computer. This is fine, but I **recommend against
it**. Instead, I recommend you SSH into the VM from your local
machine. This will allow you to use the terminal on your laptop to
talk to the VM, which can then be minimized (i.e., you don't have to
see it, and it doesn't take up space on your desktop). This allows you
to do things like read the course webpage / project description as you
work on your project.

You can SSH into the machine from your local machine by using
port 2222. In other words, on my mac:

```
ssh testvm@localhost -p 2222
testvm@localhost's password:
Welcome to Ubuntu 17.10 (GNU/Linux 4.13.0-25-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage


74 packages can be updated.
7 updates are security updates.

Last login: Mon Jan 22 16:19:59 2018 from 10.0.2.2
testvm@testvm:~$
```

You can see that I start off on *my* laptop, and in the end I'm
talking to the virtual machine. If I want to quit and go back to the
terminal on my computer, I can just type `exit`.

If you use SSH on the machine and don't care about having the GUI, you
can turn off the machine's GUI:
`https://askubuntu.com/questions/151840/how-to-disable-gdm-from-being-automatically-started`
This allows the VM to take up less memory so you have more available
to do meaningful work.
