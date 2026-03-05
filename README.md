# Ubuntu-Kernal-Panic-Fixer
Simple Script to fix Ubuntu Kernal Panic error:  VFS: Unable to mount root fs on unknown-block(0,0) 

I ran into this error on Ubuntu 24.04 LTS and found the solution in this reddit thread:

https://www.reddit.com/r/Ubuntu/comments/1m7rfes/ubuntu_kernel_panic_not_syncing_vfs_unable_to/

I wanted to create a simple Script and instructions for fixing the issue 

#Steps to follow after running into issue
1) From the GRUB menu go to advanced options for Ubuntu
2) take note of the option with the newest Linux kernal (ex: Ubuntu, with Linux 6.14.0-24-generic)
3) launch Ubuntu with the option containing the older Linux kernal
4) open terminal and set environment variable and run script with the following command:

`
KERNEL_VERSION=<version_number_here>-generic ./update_kernel.sh
`
Below is an example of the command:
`
ex:KERNEL_VERSION=6.14.0-24-generic ./update_kernel.sh
`

5) once finished executing reboot Ubuntu and it should now boot correctly 
