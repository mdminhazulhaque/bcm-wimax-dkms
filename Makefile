obj-m += bcm_wimax.o

bcm_wimax-y :=  InterfaceDld.o InterfaceIdleMode.o InterfaceInit.o InterfaceRx.o \
		InterfaceIsr.o InterfaceMisc.o InterfaceTx.o \
		CmHost.o IPv6Protocol.o Qos.o Transmit.o\
		Bcmnet.o DDRInit.o HandleControlPacket.o\
		LeakyBucket.o Misc.o sort.o Bcmchar.o hostmibs.o PHSModule.o\
		led_control.o nvm.o vendorspecificextn.o


all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
