v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -470 260 -450 {
lab=#net1}
N 260 -470 400 -470 {
lab=#net1}
N 400 -490 400 -470 {
lab=#net1}
N 400 -470 570 -470 {
lab=#net1}
N 570 -470 570 -450 {
lab=#net1}
N 570 -390 570 -320 {
lab=opos}
N 260 -390 260 -320 {
lab=oneg}
N 260 -260 260 -240 {
lab=#net2}
N 260 -290 260 -260 {
lab=#net2}
N 570 -290 570 -260 {
lab=#net2}
N 570 -260 570 -240 {
lab=#net2}
N 140 -420 220 -420 {
lab=vinp}
N 610 -420 700 -420 {
lab=vinn}
N 400 -590 400 -550 {
lab=avdd}
N 300 -520 360 -520 {
lab=ena}
N 260 -240 260 -190 {
lab=#net2}
N 570 -240 570 -190 {
lab=#net2}
N 260 -190 570 -190 {
lab=#net2}
N 410 -190 410 -140 {
lab=#net2}
N 570 -350 660 -350 {
lab=opos}
N 180 -350 260 -350 {
lab=oneg}
N 1010 -470 1010 -410 {
lab=enb}
N 1010 -580 1010 -530 {
lab=dvdd}
N 1010 -350 1010 -300 {
lab=dvss}
N 970 -500 970 -380 {
lab=ena}
N 890 -440 970 -440 {
lab=ena}
N 1010 -440 1090 -440 {
lab=enb}
N 1330 -480 1500 -480 {
lab=dvdd}
N 1330 -420 1500 -420 {
lab=voutb}
N 1410 -420 1410 -380 {
lab=voutb}
N 1540 -450 1540 -250 {
lab=vout}
N 1630 -450 1630 -250 {
lab=voutb}
N 1670 -480 1840 -480 {
lab=dvdd}
N 1670 -420 1840 -420 {
lab=vout}
N 1760 -420 1760 -380 {
lab=vout}
N 1670 -280 1760 -280 {
lab=#net3}
N 1800 -310 1880 -310 {
lab=oneg}
N 1290 -310 1370 -310 {
lab=opos}
N 1210 -450 1290 -450 {
lab=enb}
N 1880 -450 1950 -450 {
lab=enb}
N 1500 -220 1500 -200 {
lab=#net4}
N 1500 -200 1670 -200 {
lab=#net4}
N 1670 -220 1670 -200 {
lab=#net4}
N 1580 -200 1580 -180 {
lab=#net4}
N 1580 -150 1580 -120 {
lab=dvss}
N 1580 -120 1580 -70 {
lab=dvss}
N 1410 -280 1500 -280 {
lab=#net5}
N 1410 -380 1410 -340 {
lab=voutb}
N 1760 -380 1760 -340 {
lab=vout}
N 1410 -360 1630 -360 {
lab=voutb}
N 1540 -390 1760 -390 {
lab=vout}
N 1430 -150 1540 -150 {
lab=enb}
N 1410 -530 1410 -480 {
lab=dvdd}
N 1410 -530 1750 -530 {
lab=dvdd}
N 1760 -530 1760 -480 {
lab=dvdd}
N 1750 -530 1760 -530 {
lab=dvdd}
N 1580 -590 1580 -530 {
lab=dvdd}
N 1010 -380 1010 -350 {
lab=dvss}
N 1420 -250 1500 -250 {
lab=dvss}
N 1410 -310 1460 -310 {
lab=dvss}
N 1670 -250 1740 -250 {
lab=dvss}
N 1700 -310 1760 -310 {
lab=dvss}
N 1760 -400 1880 -400 {
lab=vout}
N 300 -290 330 -290 {
lab=ena}
N 500 -290 530 -290 {
lab=ena}
N 400 -540 400 -520 {
lab=avdd}
N 400 -550 400 -540 {
lab=avdd}
N 520 -420 570 -420 {
lab=avdd}
N 260 -420 310 -420 {
lab=avdd}
N 1300 -380 1410 -380 {
lab=voutb}
N 1010 -530 1010 -500 {
lab=dvdd}
N 1330 -480 1330 -450 {
lab=dvdd}
N 1500 -480 1500 -450 {
lab=dvdd}
N 1670 -480 1670 -450 {
lab=dvdd}
N 1840 -480 1840 -450 {
lab=dvdd}
N 310 -110 370 -110 {
lab=ena}
N 410 -140 410 -130 {
lab=#net2}
N 410 -80 410 -40 {
lab=avss}
N 410 -110 410 -80 {
lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 280 -290 0 1 {name=M4
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 550 -290 0 0 {name=M5
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 300 -520 0 0 {name=p1 lab=ena}
C {devices/ipin.sym} 140 -420 0 0 {name=p2 lab=vinp}
C {devices/ipin.sym} 700 -420 2 0 {name=p3 lab=vinn}
C {devices/opin.sym} 410 -40 0 0 {name=p4 lab=avss}
C {devices/ipin.sym} 400 -590 0 0 {name=p5 lab=avdd}
C {devices/lab_pin.sym} 180 -350 0 0 {name=p6 sig_type=std_logic lab=oneg}
C {devices/lab_pin.sym} 660 -350 2 0 {name=p7 sig_type=std_logic lab=opos
}
C {sky130_fd_pr/nfet_01v8.sym} 990 -380 0 0 {name=M6
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1010 -580 0 0 {name=p9 lab=dvdd}
C {devices/lab_pin.sym} 1010 -300 0 0 {name=p10 lab=dvss}
C {devices/lab_pin.sym} 1090 -440 2 0 {name=p11 sig_type=std_logic lab=enb
}
C {sky130_fd_pr/nfet_01v8.sym} 1390 -310 0 0 {name=M12
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1520 -250 0 1 {name=M13
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1650 -250 0 0 {name=M14
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1780 -310 0 1 {name=M15
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1560 -150 0 0 {name=M16
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 1580 -590 0 0 {name=p12 lab=dvdd}
C {devices/lab_pin.sym} 1220 -450 0 0 {name=p13 sig_type=std_logic lab=enb
}
C {devices/lab_pin.sym} 1950 -450 2 0 {name=p14 sig_type=std_logic lab=enb
}
C {devices/lab_pin.sym} 1430 -150 0 0 {name=p15 sig_type=std_logic lab=enb
}
C {devices/lab_pin.sym} 1460 -310 2 0 {name=p17 lab=dvss}
C {devices/opin.sym} 1580 -70 0 0 {name=p18 lab=dvss}
C {devices/lab_pin.sym} 1700 -310 0 0 {name=p20 lab=dvss}
C {devices/lab_pin.sym} 1290 -310 0 0 {name=p21 sig_type=std_logic lab=opos
}
C {devices/lab_pin.sym} 1880 -310 2 0 {name=p22 sig_type=std_logic lab=oneg}
C {devices/opin.sym} 1880 -400 0 0 {name=p23 lab=vout
}
C {devices/lab_pin.sym} 890 -440 0 0 {name=p8 sig_type=std_logic lab=ena
}
C {devices/lab_pin.sym} 1420 -250 0 0 {name=p16 lab=dvss}
C {devices/lab_pin.sym} 1740 -250 2 0 {name=p19 lab=dvss}
C {devices/lab_pin.sym} 500 -290 0 0 {name=p24 sig_type=std_logic lab=ena
}
C {devices/lab_pin.sym} 330 -290 2 0 {name=p25 sig_type=std_logic lab=ena
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 380 -520 0 0 {name=M1
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 240 -420 0 0 {name=M2
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 590 -420 0 1 {name=M3
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 520 -420 0 0 {name=p26 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 310 -420 2 0 {name=p27 sig_type=std_logic lab=avdd}
C {devices/opin.sym} 1300 -380 2 0 {name=p28 lab=voutb
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 990 -500 0 0 {name=M7
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 390 -110 0 0 {name=M17
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1310 -450 0 0 {name=M8
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1650 -450 0 0 {name=M9
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1520 -450 0 1 {name=M10
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1860 -450 0 1 {name=M11
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/lab_pin.sym} 310 -110 0 0 {name=p29 sig_type=std_logic lab=ena
}
