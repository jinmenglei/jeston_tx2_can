#！/bin/bash
modprobe can        # 插入 can 总线子系统
modprobe can-raw    # 插入can 协议模块
modprobe can-bcm
modprobe can-gw  
modprobe can_dev
modprobe mttcan      # 真正的can口支持
echo "test lsmod"
lsmod
#500k波特率，可以自行手动改
sudo ip link set can0 type can bitrate 500000 
sudo ip link set up can0
sudo ip link set can1 type can bitrate 500000 
sudo ip link set up can1
