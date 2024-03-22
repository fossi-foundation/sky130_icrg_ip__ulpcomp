v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 870 -355 930 -355 {
lab=vout}
N 100 -555 100 -495 {
lab=vinp}
N 250 -555 250 -495 {
lab=vinn}
N 400 -555 400 -495 {
lab=ena}
N 190 -365 190 -315 {
lab=avdd}
N 260 -365 260 -315 {
lab=dvdd}
N 330 -365 330 -315 {
lab=avss}
N 400 -365 400 -315 {
lab=dvss}
N 870 -315 930 -315 {
lab=voutb}
N 930 -355 1130 -355 {
lab=vout}
N 930 -315 1130 -315 {
lab=voutb}
N 1070 -355 1070 -295 {
lab=vout}
N 1040 -315 1040 -195 {
lab=voutb}
C {devices/lab_pin.sym} 630 -365 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 630 -305 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 710 -215 3 0 {name=p3 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 780 -455 1 0 {name=p4 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 740 -455 1 0 {name=p5 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 740 -215 3 0 {name=p6 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 780 -215 3 0 {name=p7 sig_type=std_logic lab=dvss}
C {devices/vsource.sym} 400 -465 0 0 {name=V3 value="Pulse(0 1.8 0 0.1n 0.1n 0.5n 1n)" savecurrent=false}
C {devices/vsource.sym} 190 -285 0 0 {name=V4 value=3.3 savecurrent=false}
C {devices/vsource.sym} 260 -285 0 0 {name=V5 value=1.8 savecurrent=false}
C {devices/vsource.sym} 330 -285 0 0 {name=V6 value=0 savecurrent=false}
C {devices/vsource.sym} 400 -285 0 0 {name=V7 value=0 savecurrent=false}
C {devices/gnd.sym} 100 -435 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 250 -435 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 400 -435 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 190 -255 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 260 -255 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 330 -255 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 400 -255 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 100 -545 0 0 {name=p9 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 250 -545 0 0 {name=p10 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 400 -545 0 0 {name=p11 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 190 -355 0 0 {name=p12 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 260 -355 0 0 {name=p13 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 330 -355 0 0 {name=p14 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 400 -355 0 0 {name=p15 sig_type=std_logic lab=dvss}
C {devices/code.sym} 150 -195 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice \{corner\}
.option TEMP=\{temperature\}"}
C {devices/code.sym} 310 -195 0 0 {name=s2 only_toplevel=false value=".control
tran 10n 1u
meas tran trise WHEN V(vout) = [\{dvdd\} / 2] CROSS=1
let tpd = $&trise 

echo $&tpd > \{simpath\}/\{filename\}_\{N\}.data
quit
.endc"}
C {devices/vsource_arith.sym} 250 -465 0 0 {name=E1 VOL="'1.8*sin(time*pi*1e6)'"}
C {devices/vsource_arith.sym} 100 -465 0 0 {name=E2 VOL="'1.8*sin(time*2*pi*1e6)'"}
C {devices/lab_pin.sym} 1130 -315 2 0 {name=p16 sig_type=std_logic lab=voutb}
C {devices/gnd.sym} 1040 -135 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 1070 -235 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1040 -165 0 0 {name=C2 model=cap_mim_m3_1 W=10 L=8 MF=3 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1070 -265 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=8 MF=3 spiceprefix=X}
C {sky130_icrg_ip__ulpcomp.sym} 670 -335 0 0 {name=x1}
C {devices/lab_pin.sym} 1130 -355 2 0 {name=p21 sig_type=std_logic lab=vout}
