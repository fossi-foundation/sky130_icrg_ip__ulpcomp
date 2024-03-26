v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 800 -600 870 -600 {
lab=dvdd}
N 800 -580 870 -580 {
lab=avdd}
N 800 -560 870 -560 {
lab=ena}
N 800 -540 870 -540 {
lab=vinn}
N 800 -520 870 -520 {
lab=vinp}
N 800 -500 870 -500 {
lab=clk}
N 1170 -600 1230 -600 {
lab=vout}
N 1170 -580 1230 -580 {
lab=dvss}
N 1170 -560 1230 -560 {
lab=avss}
N 90 -650 90 -580 {
lab=avdd}
N 180 -650 180 -580 {
lab=dvdd}
N 270 -650 270 -580 {
lab=avss}
N 360 -650 360 -580 {
lab=dvss}
N 360 -840 360 -780 {
lab=clk}
N 270 -840 270 -780 {
lab=ena}
N 1230 -600 1420 -600 {
lab=vout}
N 720 -540 800 -540 {
lab=vinn}
N 670 -540 720 -540 {
lab=vinn}
N 670 -520 720 -520 {
lab=vinp}
N 720 -520 800 -520 {
lab=vinp}
N 560 -540 610 -540 {
lab=vin}
N 560 -540 560 -520 {
lab=vin}
N 560 -520 610 -520 {
lab=vin}
N 460 -530 560 -530 {
lab=vin}
N 460 -530 460 -500 {
lab=vin}
N 730 -670 730 -540 {
lab=vinn}
N 730 -670 970 -670 {
lab=vinn}
N 1030 -670 1320 -670 {
lab=vout}
N 1320 -670 1320 -600 {
lab=vout}
C {sky130_icrg_ip__ulpcomp2.sym} 1020 -550 0 0 {name=x1}
C {devices/lab_pin.sym} 800 -600 0 0 {name=p1 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 800 -580 0 0 {name=p2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 800 -560 0 0 {name=p3 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 700 -540 1 0 {name=p4 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 700 -520 3 0 {name=p5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 800 -500 0 0 {name=p6 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1420 -600 2 0 {name=p7 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 1230 -580 2 0 {name=p8 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 1230 -560 2 0 {name=p9 sig_type=std_logic lab=avss}
C {devices/vsource.sym} 90 -550 0 0 {name=V1 value="DC 3.3" savecurrent=false}
C {devices/vsource.sym} 180 -550 0 0 {name=V2 value="DC 1.8" savecurrent=false}
C {devices/vsource.sym} 270 -550 0 0 {name=V3 value=0 savecurrent=false}
C {devices/vsource.sym} 360 -550 0 0 {name=V4 value=0 savecurrent=false}
C {devices/gnd.sym} 90 -520 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 180 -520 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 270 -520 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 360 -520 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 90 -640 0 0 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 180 -640 0 0 {name=p11 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 270 -640 0 0 {name=p12 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 360 -640 0 0 {name=p13 sig_type=std_logic lab=dvss}
C {devices/vsource.sym} 360 -750 0 0 {name=V5 value="Pulse(0 1.8 0 0.1n 0.1n 2.5n 5n)" savecurrent=false}
C {devices/gnd.sym} 360 -720 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 360 -830 0 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 270 -750 0 0 {name=V6 value="DC 1.8" savecurrent=false}
C {devices/gnd.sym} 270 -720 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 270 -830 0 0 {name=p15 sig_type=std_logic lab=ena}
C {devices/vsource.sym} 460 -470 0 0 {name=V7 value="DC 1.65" savecurrent=false}
C {devices/gnd.sym} 460 -440 0 0 {name=l7 lab=GND}
C {devices/code_shown.sym} 90 -410 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.option TEMP=25"}
C {devices/code_shown.sym} 90 -290 0 0 {name=s2 only_toplevel=false value="
.option savecurrents
.option save all
.control

tran 1n 1u
plot (V(vout)-V(vin))/2

let VIO = (V(vout)-V(vin))/2
print VIO

write inputoffset_tb.raw

.endc"}
C {devices/res.sym} 640 -540 1 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 640 -520 3 0 {name=R2
value=2.5k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1000 -670 1 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 460 -530 0 0 {name=p17 sig_type=std_logic lab=vin}
