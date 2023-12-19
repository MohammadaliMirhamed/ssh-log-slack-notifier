# ssh-log-slack-notifier
notify slack for any ssh activity on Linux OS

## Quick Start
- Run ```mkdir /etc/ssh/scripts```
- Run ```nano /etc/ssh/scripts/sshnotify.sh```
- copy sshnotify.sh content in to file (from github file) ***Replace slack Information with your***
- Run ```chmod +x /etc/ssh/scripts/sshnotify.sh```
- Run ```sudo echo "session optional pam_exec.so seteuid /etc/ssh/scripts/sshnotify.sh" >> /etc/pam.d/sshd```
