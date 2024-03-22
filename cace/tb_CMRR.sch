v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {CMRR} 200 -490 0 0 0.4 0.4 {}
N 260 -360 260 -310 {
lab=avss}
N 330 -360 330 -310 {
lab=dvss}
N 190 -360 190 -310 {
lab=dvdd}
N 130 -360 130 -310 {
lab=avdd}
N 1060 -330 1180 -330 {
lab=vout}
N 1180 -330 1210 -330 {
lab=vout}
N 1210 -270 1210 -230 {
lab=GND}
N 400 -360 400 -310 {
lab=ena}
N 740 -280 740 -240 {
lab=#net1}
N 790 -280 790 -260 {
lab=vinn}
N 790 -280 820 -280 {
lab=vinn}
N 740 -340 820 -340 {
lab=vinp}
N 610 -180 610 -140 {
lab=avss}
N 1210 -330 1290 -330 {
lab=vout}
N 790 -260 790 -160 {
lab=vinn}
N 740 -160 790 -160 {
lab=vinn}
N 740 -180 740 -160 {
lab=vinn}
N 610 -260 740 -260 {
lab=#net1}
N 610 -260 610 -240 {
lab=#net1}
C {devices/code.sym} 240 -145 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice \{corner\}
.option TEMP=\{temperature\}"}
C {devices/code.sym} 400 -145 0 0 {name=CONTROL only_toplevel=false value=".control
** CMRR is defined as the change in input offset vs. change in common-mode voltage.
tran [\{risetime\} * 2 / 100] [\{risetime\} * 4]
meas tran vhigh1 FIND V(vinp) WHEN V(vout) = [\{dvdd\} / 2] CROSS=1
meas tran vlow1 FIND V(vinp) WHEN V(vout) = [\{dvdd\} / 2] CROSS=2
meas tran vhigh2 FIND V(vinp) WHEN V(vout) = [\{dvdd\} / 2] CROSS=3
meas tran vlow2 FIND V(vinp) WHEN V(vout) = [\{dvdd\} / 2] CROSS=4

let voffset1 = 0.5 * ($&vhigh1 + $&vlow1) - \{Vcm|minimum\}
let voffset2 = 0.5 * ($&vhigh2 + $&vlow2) - \{Vcm|maximum\}

let cmrr = ($&voffset1 - $&voffset2) / (\{Vcm|maximum\} - \{Vcm|minimum\})
let cmrrdb = 20 * log(abs($&cmrr))

echo $&cmrrdb > \{simpath\}/\{filename\}_\{N\}.data
quit
.endc
"}
C {sky130_icrg_ip__ulpcomp.sym} 860 -310 0 0 {name=x2}
C {devices/vsource.sym} 740 -310 0 0 {name=vpos value="DC 0 PWL (0 -0.5 \{risetime\} 0.5 [\{risetime\} * 2] -0.5 [\{risetime\} * 3] 0.5 [\{risetime\} * 4] -0.5 )" savecurrent=false}
C {devices/vsource.sym} 130 -280 0 0 {name=avdd value=\{avdd\} savecurrent=false}
C {devices/vsource.sym} 190 -280 0 0 {name=dvdd value=\{dvdd\} savecurrent=false}
C {devices/vsource.sym} 260 -280 0 0 {name=\{avss\} value=\{avss\} savecurrent=false}
C {devices/vsource.sym} 330 -280 0 0 {name=dvss value=\{dvss\} savecurrent=false}
C {devices/gnd.sym} 130 -250 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 190 -250 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 260 -250 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 330 -250 0 0 {name=l14 lab=GND}
C {devices/capa.sym} 1210 -300 0 0 {name=C4
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1210 -230 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 930 -430 1 0 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 970 -430 1 0 {name=p21 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 970 -190 3 0 {name=p22 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 930 -190 3 0 {name=p23 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 900 -190 3 0 {name=p24 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 130 -350 0 0 {name=p5 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 190 -350 0 0 {name=p25 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 260 -350 0 0 {name=p26 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 330 -350 0 0 {name=p27 sig_type=std_logic lab=dvss}
C {devices/gnd.sym} 400 -250 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 400 -350 0 0 {name=p28 sig_type=std_logic lab=ena}
C {devices/vsource.sym} 610 -210 0 0 {name=Vcm value="DC \{Vcm|minimum\} PWL ( 0 \{Vcm|minimum\} [\{risetime\} * 2] \{Vcm|minimum\} [\{risetime\} * 2 + 1e-9] \{Vcm|maximum\} [\{risetime\} * 3] \{Vcm|maximum\} )" savecurrent=false}
C {devices/lab_pin.sym} 610 -140 3 0 {name=p1 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 780 -340 1 0 {name=p2 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 790 -260 2 0 {name=p3 sig_type=std_logic lab=vinn}
C {devices/vsource.sym} 400 -280 0 0 {name=ena value="Pulse(0 \{ena\}*1.8 0 0.1n 0.1n 0.5n 1n)" savecurrent=false}
C {devices/lab_pin.sym} 1280 -330 1 0 {name=p6 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 740 -210 0 0 {name=vneg value="DC 0 PWL (0 -0.5 \{risetime\} 0.5 [\{risetime\} * 2] -0.5 [\{risetime\} * 3] 0.5 [\{risetime\} * 4] -0.5 )" savecurrent=false}
