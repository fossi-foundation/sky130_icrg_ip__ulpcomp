v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Stage1: Pre-Amp} 300 -740 0 0 0.4 0.4 {}
N 410 -420 410 -400 {
lab=#net1}
N 280 -400 410 -400 {
lab=#net1}
N 280 -400 280 -370 {
lab=#net1}
N 410 -400 540 -400 {
lab=#net1}
N 540 -400 540 -370 {
lab=#net1}
N 280 -370 280 -340 {
lab=#net1}
N 540 -370 540 -340 {
lab=#net1}
N 280 -310 280 -250 {
lab=oneg}
N 540 -310 540 -250 {
lab=vout}
N 320 -220 360 -220 {
lab=clk}
N 460 -220 500 -220 {
lab=clk}
N 280 -190 280 -170 {
lab=#net2}
N 280 -170 540 -170 {
lab=#net2}
N 540 -190 540 -170 {
lab=#net2}
N 420 -170 420 -130 {
lab=#net2}
N 420 -70 420 -30 {
lab=avss}
N 540 -220 540 -190 {
lab=#net2}
N 280 -220 280 -190 {
lab=#net2}
N 580 -340 640 -340 {
lab=vinn}
N 410 -480 410 -450 {
lab=#net3}
N 300 -450 370 -450 {
lab=clk}
N 180 -340 240 -340 {
lab=vinp}
N 190 -280 280 -280 {
lab=oneg}
N 540 -280 610 -280 {
lab=vout}
N 610 -280 630 -280 {
lab=vout}
N 410 -600 410 -570 {
lab=avdd}
N 410 -500 410 -480 {
lab=#net3}
N 420 -100 420 -70 {
lab=avss}
N 380 -150 420 -150 {
lab=#net2}
N 380 -150 380 -100 {
lab=#net2}
N 410 -510 410 -500 {
lab=#net3}
N 290 -540 370 -540 {
lab=ena}
N 410 -540 500 -540 {
lab=avss}
N -410 -470 -410 -400 {
lab=avdd}
N -230 -470 -230 -400 {
lab=avss}
N -140 -660 -140 -600 {
lab=clk}
N -230 -660 -230 -600 {
lab=ena}
N -410 -670 -410 -600 {
lab=vinp}
N -320 -670 -320 -600 {
lab=vinn}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 390 -450 0 0 {name=M1
L=1
W=3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 260 -340 0 0 {name=M2
L=1
W=3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 560 -340 0 1 {name=M3
L=1
W=3
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
C {devices/lab_pin.sym} 410 -600 0 0 {name=p1 lab=avdd}
C {devices/lab_pin.sym} 420 -30 0 0 {name=p5 lab=avss}
C {devices/lab_pin.sym} 460 -220 0 0 {name=p7 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 360 -220 2 0 {name=p8 sig_type=std_logic lab=clk
}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 300 -220 0 1 {name=M7
L=0.5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 520 -220 0 0 {name=M5
L=0.5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {devices/lab_pin.sym} 300 -450 0 0 {name=p13 sig_type=std_logic lab=clk
}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 400 -100 0 0 {name=M4
L=0.5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {devices/lab_pin.sym} 290 -540 0 0 {name=p27 lab=ena}
C {devices/lab_pin.sym} 500 -540 2 0 {name=p28 sig_type=std_logic lab=avss}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 390 -540 0 0 {name=M20
L=0.5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {devices/lab_pin.sym} 190 -280 0 0 {name=p6 sig_type=std_logic lab=oneg}
C {devices/lab_pin.sym} 180 -340 0 0 {name=p2 sig_type=std_logic lab=vinp}
C {devices/vsource.sym} -410 -370 0 0 {name=V1 value="DC 3.3" savecurrent=false}
C {devices/vsource.sym} -230 -370 0 0 {name=V3 value=0 savecurrent=false}
C {devices/gnd.sym} -410 -340 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -230 -340 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -410 -460 0 0 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -230 -460 0 0 {name=p12 sig_type=std_logic lab=avss}
C {devices/vsource.sym} -140 -570 0 0 {name=V5 value="Pulse(0 1.8 0 0.1n 0.1n 2.5n 5n)" savecurrent=false}
C {devices/gnd.sym} -140 -540 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -140 -650 0 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/vsource.sym} -230 -570 0 0 {name=V6 value="DC 1.8" savecurrent=false}
C {devices/gnd.sym} -230 -540 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -230 -650 0 0 {name=p15 sig_type=std_logic lab=ena}
C {devices/vsource.sym} -410 -570 0 0 {name=V7 value="AC 1.65" savecurrent=false}
C {devices/vsource.sym} -320 -570 0 0 {name=V8 value="AC 1.65" savecurrent=false}
C {devices/gnd.sym} -410 -540 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -320 -540 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -410 -660 0 0 {name=p16 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} -320 -660 0 0 {name=p17 sig_type=std_logic lab=vinn}
C {devices/code_shown.sym} -650 -200 0 0 {name=SETUP only_toplevel=false value="
.include \{DUT_path\}
.include /home/ttuser/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice \{corner\}
.option TEMP=\{temperature\}
.option warn=1"}
C {devices/code_shown.sym} -650 -30 0 0 {name=CONTROL only_toplevel=false value=".control
ac dec 10 1e2 1e12
let vog = (mag(V(vout)) / mag(V(vinp)))
meas ac bw WHEN vog=1 FALL=1
let fbw = $&bw
echo $&fbw > /home/ttuser/chipalooza2024/sky130_icrg_ip__ulpcomp2/ngspice/\{filename\}_\{N\}.data
quit

.endc"}
C {devices/lab_pin.sym} 640 -340 2 0 {name=p3 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 630 -280 2 0 {name=p4 sig_type=std_logic lab=vout
}
