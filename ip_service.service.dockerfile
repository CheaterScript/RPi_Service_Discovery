[Unit]
Description=ip发现
ConditionPathExists=/home/pi/cmd.sh
After=network.target

[Service]
Type=forking
ExecStart=/usr/bin/bash /home/pi/cmd.sh

[Install]
WantedBy=multi-user.target

/usr/lib/systemd/system 

https://blog.csdn.net/abc_12366/article/details/87552848