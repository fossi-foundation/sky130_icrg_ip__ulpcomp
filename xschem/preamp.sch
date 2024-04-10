v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Stage1: Pre-Amp} 300 -740 0 0 0.4 0.4 {}
N -410 -470 -410 -400 {
lab=avdd}
N -230 -470 -230 -400 {
lab=avss}
N -140 -660 -140 -600 {
lab=clk}
N -230 -660 -230 -600 {
lab=enab}
N -410 -670 -410 -600 {
lab=#net1}
N -320 -670 -320 -600 {
lab=#net2}
N 240 -530 240 -480 {
lab=enab}
N 280 -560 280 -480 {
lab=avdd}
N 100 -400 160 -400 {
lab=vinp}
N 100 -360 160 -360 {
lab=vinn}
N 240 -290 240 -240 {
lab=clk}
N 280 -290 280 -220 {
lab=avss}
N 370 -360 420 -360 {
lab=oneg}
N 370 -400 420 -400 {
lab=vout}
N -690 -660 -690 -590 {
lab=vinp}
N -600 -660 -600 -590 {
lab=vinn}
C {devices/lab_pin.sym} 280 -560 0 0 {name=p1 lab=avdd}
C {devices/lab_pin.sym} 280 -220 0 0 {name=p5 lab=avss}
C {devices/lab_pin.sym} 240 -530 0 0 {name=p27 lab=enab}
C {devices/lab_pin.sym} 420 -360 2 0 {name=p6 sig_type=std_logic lab=oneg}
C {devices/lab_pin.sym} 100 -400 0 0 {name=p2 sig_type=std_logic lab=vinp}
C {devices/vsource.sym} -410 -370 0 0 {name=V1 value="DC 3.3" savecurrent=false}
C {devices/vsource.sym} -230 -370 0 0 {name=V3 value=0 savecurrent=false}
C {devices/gnd.sym} -410 -340 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -230 -340 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -410 -460 0 0 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -230 -460 0 0 {name=p12 sig_type=std_logic lab=avss}
C {devices/vsource.sym} -140 -570 0 0 {name=V5 value="Pulse(0 1.8 0 0.1n 0.1n 10n 20n)" savecurrent=false}
C {devices/gnd.sym} -140 -540 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -140 -650 0 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/vsource.sym} -230 -570 0 0 {name=V6 value="DC 1.8" savecurrent=false}
C {devices/gnd.sym} -230 -540 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -230 -650 0 0 {name=p15 sig_type=std_logic lab=enab}
C {devices/vsource.sym} -410 -570 0 0 {name=V7 value="DC 1.65 AC 3.3" savecurrent=false}
C {devices/vsource.sym} -320 -570 0 0 {name=V8 value="DC 1.65 AC 3.3" savecurrent=false}
C {devices/gnd.sym} -410 -540 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -320 -540 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} -560 -210 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.include /home/ttuser/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.include /home/ttuser/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.option TEMP=25"}
C {devices/code_shown.sym} -560 -90 0 0 {name=s2 only_toplevel=false value=".control
#ac dec 10 1e2 1e12
#let vog = (mag(V(vout)) / mag(V(vinp)))

tran 1n 10u
plot v(vinn) v(vinp)
plot v(vout) v(oneg)

#plot v(vog)
.endc"}
C {devices/lab_pin.sym} 100 -360 0 0 {name=p3 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 420 -400 2 0 {name=p4 sig_type=std_logic lab=vout
}
C {Stage1.sym} -60 -240 0 0 {name=x1}
C {devices/lab_pin.sym} 240 -240 0 0 {name=p9 sig_type=std_logic lab=clk
}
C {devices/vsource.sym} -690 -560 0 0 {name=V2 value="DC 0 sin(0 3.3 2MEG 0 0)" savecurrent=false}
C {devices/vsource.sym} -600 -560 0 0 {name=V4 value="DC 0 sin(0 3.3 9MEG 0 0)" savecurrent=false}
C {devices/gnd.sym} -690 -530 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -600 -530 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -690 -650 0 0 {name=p7 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} -600 -650 0 0 {name=p8 sig_type=std_logic lab=vinn}
