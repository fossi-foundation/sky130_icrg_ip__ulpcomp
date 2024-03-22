v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PSRR} 280 -390 0 0 0.4 0.4 {}
N 340 -260 340 -210 {
lab=avss}
N 410 -260 410 -210 {
lab=dvss}
N 270 -260 270 -210 {
lab=dvdd}
N 210 -260 210 -210 {
lab=avdd}
N 1140 -230 1260 -230 {
lab=vout}
N 1260 -230 1290 -230 {
lab=vout}
N 1290 -170 1290 -130 {
lab=GND}
N 480 -260 480 -210 {
lab=ena}
N 820 -180 820 -140 {
lab=#net1}
N 870 -180 870 -160 {
lab=vinn}
N 870 -180 900 -180 {
lab=vinn}
N 820 -240 900 -240 {
lab=vinp}
N 690 -80 690 -40 {
lab=avss}
N 1290 -230 1370 -230 {
lab=vout}
N 870 -160 870 -60 {
lab=vinn}
N 820 -60 870 -60 {
lab=vinn}
N 820 -80 820 -60 {
lab=vinn}
N 690 -160 820 -160 {
lab=#net1}
N 690 -160 690 -140 {
lab=#net1}
C {devices/code.sym} 320 -45 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice \{corner\}
.option TEMP=\{temperature\}"}
C {devices/code.sym} 480 -45 0 0 {name=CONTROL only_toplevel=false value=".control
** CMRR is defined as the change in input offset vs. change in common-mode voltage.
tran [\{risetime\} * 2 / 100] [\{risetime\} * 4]
meas tran vhigh1 FIND V(vinp) WHEN V(vout) = [\{dvdd|minimum\} / 2] CROSS=1
meas tran vlow1 FIND V(vinp) WHEN V(vout) = [\{dvdd|minimum\} / 2] CROSS=2
meas tran vhigh2 FIND V(vinp) WHEN V(vout) = [\{dvdd|maximum\} / 2] CROSS=3
meas tran vlow2 FIND V(vinp) WHEN V(vout) = [\{dvdd|maximum\} / 2] CROSS=4

let voffset1 = 0.5 * ($&vhigh1 + $&vlow1) 
let voffset2 = 0.5 * ($&vhigh2 + $&vlow2) 

let psrr = ($&voffset1 - $&voffset2) / (\{dvdd|maximum\} - \{dvdd|minimum\})
let psrrdb = 20 * log(abs($&psrr))

echo $&cmrrdb > \{simpath\}/\{filename\}_\{N\}.data
quit
.endc
"}
C {sky130_icrg_ip__ulpcomp.sym} 940 -210 0 0 {name=x2}
C {devices/vsource.sym} 820 -210 0 0 {name=vpos value="DC 0 PWL (0 -0.5 \{risetime\} 0.5 [\{risetime\} * 2] -0.5 [\{risetime\} * 3] 0.5 [\{risetime\} * 4] -0.5 )" savecurrent=false}
C {devices/vsource.sym} 210 -180 0 0 {name=avdd value="DC \{avdd|minimum\} PWL ( 0 \{avdd|minimum\} [\{risetime\} * 2] \{avdd|minimum\} [\{risetime\} * 2 + 1e-9] \{avdd|maximum\} [\{risetime\} * 3] \{avdd|maximum\} )" savecurrent=false}
C {devices/vsource.sym} 270 -180 0 0 {name=dvdd value="DC \{dvdd|minimum\} PWL ( 0 \{dvdd|minimum\} [\{risetime\} * 2] \{dvdd|minimum\} [\{risetime\} * 2 + 1e-9] \{dvdd|maximum\} [\{risetime\} * 3] \{dvdd|maximum\} )" savecurrent=false}
C {devices/vsource.sym} 340 -180 0 0 {name=\{avss\} value=\{avss\} savecurrent=false}
C {devices/vsource.sym} 410 -180 0 0 {name=dvss value=\{dvss\} savecurrent=false}
C {devices/gnd.sym} 210 -150 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 270 -150 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 340 -150 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 410 -150 0 0 {name=l14 lab=GND}
C {devices/capa.sym} 1290 -200 0 0 {name=C4
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1290 -130 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 1010 -330 1 0 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1050 -330 1 0 {name=p21 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 1050 -90 3 0 {name=p22 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 1010 -90 3 0 {name=p23 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 980 -90 3 0 {name=p24 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 210 -250 0 0 {name=p5 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 270 -250 0 0 {name=p25 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 340 -250 0 0 {name=p26 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 410 -250 0 0 {name=p27 sig_type=std_logic lab=dvss}
C {devices/gnd.sym} 480 -150 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 480 -250 0 0 {name=p28 sig_type=std_logic lab=ena}
C {devices/vsource.sym} 690 -110 0 0 {name=Vcm value="DC[\{ena\}*\{Vcmp\}" savecurrent=false}
C {devices/lab_pin.sym} 690 -40 3 0 {name=p1 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 860 -240 1 0 {name=p2 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 870 -160 2 0 {name=p3 sig_type=std_logic lab=vinn}
C {devices/vsource.sym} 480 -180 0 0 {name=ena value="Pulse(0 \{ena\}*1.8 0 0.1n 0.1n 0.5n 1n)" savecurrent=false}
C {devices/lab_pin.sym} 1360 -230 1 0 {name=p6 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 820 -110 0 0 {name=vneg value="DC 0 PWL (0 -0.5 \{risetime\} 0.5 [\{risetime\} * 2] -0.5 [\{risetime\} * 3] 0.5 [\{risetime\} * 4] -0.5 )" savecurrent=false}
