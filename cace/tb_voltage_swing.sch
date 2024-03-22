v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Output Voltage Swing} -280 -410 0 0 0.4 0.4 {}
N 200 -140 260 -140 {
lab=#net1}
N 200 -140 200 30 {
lab=#net1}
N 200 30 230 30 {
lab=#net1}
N 290 30 550 30 {
lab=vout}
N 550 -190 550 30 {
lab=vout}
N 500 -190 520 -190 {
lab=vout}
N 520 -190 550 -190 {
lab=vout}
N 120 -200 260 -200 {
lab=#net2}
N 550 -190 700 -190 {
lab=vout}
N 700 -190 700 -160 {
lab=vout}
N -270 -240 -270 -180 {
lab=avdd}
N -200 -240 -200 -180 {
lab=dvdd}
N -130 -240 -130 -180 {
lab=avss}
N -70 -240 -70 -180 {
lab=dvss}
N -350 -240 -350 -180 {
lab=ena}
C {devices/res.sym} 260 30 1 0 {name=R1
value=200k
footprint=1206
device=resistor
m=1}
C {sky130_icrg_ip__ulpcomp.sym} 300 -170 0 0 {name=x1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 700 -130 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/gnd.sym} 700 -100 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 120 -170 0 0 {name=V1 value="0.5 AC 0.9" savecurrent=false}
C {devices/vsource.sym} -270 -150 0 0 {name=avdd value="DC \{avdd\}" savecurrent=false}
C {devices/vsource.sym} -200 -150 0 0 {name=dvdd value="DC \{dvdd\}" savecurrent=false}
C {devices/vsource.sym} -130 -150 0 0 {name=avss value="DC \{avss\}" savecurrent=false}
C {devices/vsource.sym} -70 -150 0 0 {name=dvss value="DC \{dvss\}" savecurrent=false}
C {devices/gnd.sym} -350 -120 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -70 -120 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -130 -120 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -200 -120 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -270 -120 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -270 -230 0 0 {name=p1 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -200 -230 0 0 {name=p2 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} -130 -230 0 0 {name=p3 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -70 -230 0 0 {name=p4 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} -350 -230 0 0 {name=p5 sig_type=std_logic lab=ena
}
C {devices/code.sym} -280 -30 0 0 {name=s1 only_toplevel=false value="

.include \{DUT_path\}

.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice \{corner\}

.option TEMP=\{temperature\}

.option warn=1"}
C {devices/code.sym} -110 -30 0 0 {name=s2 only_toplevel=false value=".control
tran [1.0 / \{frequency\} / 100] [1 / \{frequency\}]
set wr_singlescale
wrdata \{simpath\}/\{filename\}_\{N\}.data -V(vout)
quit
.endc"}
C {devices/lab_pin.sym} 340 -50 3 0 {name=p6 sig_type=std_logic lab=ena
}
C {devices/lab_pin.sym} 410 -50 3 0 {name=p7 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 370 -50 3 0 {name=p8 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 370 -290 1 0 {name=p9 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 410 -290 1 0 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 120 -140 3 0 {name=p11 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 700 -190 2 0 {name=p12 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 500 -150 2 0 {name=p13 sig_type=std_logic lab=voutb}
C {devices/vsource.sym} -350 -150 0 0 {name=ena value="Pulse(0 1.8 0 0.1n 0.1n 0.5n 1n)" savecurrent=false}
