v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Offset Voltage} 30 30 0 0 0.4 0.4 {}
N 90 160 90 210 {
lab=avss}
N 160 160 160 210 {
lab=dvss}
N 20 160 20 210 {
lab=dvdd}
N -40 160 -40 210 {
lab=avdd}
N 890 190 1010 190 {
lab=vout}
N 1010 190 1040 190 {
lab=vout}
N 1040 250 1040 290 {
lab=GND}
N 230 160 230 210 {
lab=ena}
N 570 240 570 280 {
lab=#net1}
N 620 240 620 260 {
lab=vinn}
N 620 240 650 240 {
lab=vinn}
N 570 180 650 180 {
lab=vinp}
N 440 340 440 380 {
lab=avss}
N 1040 190 1120 190 {
lab=vout}
N 620 260 620 360 {
lab=vinn}
N 570 360 620 360 {
lab=vinn}
N 570 340 570 360 {
lab=vinn}
N 440 260 570 260 {
lab=#net1}
N 440 260 440 280 {
lab=#net1}
C {devices/code.sym} 70 375 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice \{corner\}
.option TEMP=\{temperature\}"}
C {devices/code.sym} 230 375 0 0 {name=CONTROL only_toplevel=false value=".control
** Find zero crossing for positive input differential, zero crossing for negative
** input differential, then compute the average
tran [\{risetime\} * 2 / 1000] [\{risetime\} * 2]
meas tran vhigh FIND V(vinp) WHEN V(vout) = [\{dvdd\} / 2] CROSS=1
meas tran vlow FIND V(vinp) WHEN V(vout) = [\{dvdd\} / 2] CROSS=2
let vrise = $&vhigh - \{Vcm\}
let vfall = $&vlow - \{Vcm\}

let voffset = 0.5 * ($&vrise + $&vfall)
let vhyst = $&vrise - $&vfall

echo $&voffset $&vhyst > \{simpath\}/\{filename\}_\{N\}.data
*set wr_singlescale
*wrdata \{simpath\}/\{filename\}_\{N\}.data V(out) V(inp) V(inm)
quit
.endc
"}
C {sky130_icrg_ip__ulpcomp.sym} 690 210 0 0 {name=x2}
C {devices/vsource.sym} 570 210 0 0 {name=vpos value="DC 0 PWL (0 -0.5 \{risetime\} 0.5 [\{risetime\} * 2] -0.5 [\{risetime\} * 3] 0.5 [\{risetime\} * 4] -0.5 )" savecurrent=false}
C {devices/vsource.sym} -40 240 0 0 {name=avdd value=\{avdd\} savecurrent=false}
C {devices/vsource.sym} 20 240 0 0 {name=dvdd value=\{dvdd\} savecurrent=false}
C {devices/vsource.sym} 90 240 0 0 {name=\{avss\} value=\{avss\} savecurrent=false}
C {devices/vsource.sym} 160 240 0 0 {name=dvss value=\{dvss\} savecurrent=false}
C {devices/gnd.sym} -40 270 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 20 270 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 90 270 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 160 270 0 0 {name=l14 lab=GND}
C {devices/capa.sym} 1040 220 0 0 {name=C4
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1040 290 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 760 90 1 0 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 800 90 1 0 {name=p21 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 800 330 3 0 {name=p22 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 760 330 3 0 {name=p23 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 730 330 3 0 {name=p24 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} -40 170 0 0 {name=p5 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 20 170 0 0 {name=p25 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 90 170 0 0 {name=p26 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 160 170 0 0 {name=p27 sig_type=std_logic lab=dvss}
C {devices/gnd.sym} 230 270 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 230 170 0 0 {name=p28 sig_type=std_logic lab=ena}
C {devices/vsource.sym} 440 310 0 0 {name=Vcm value="DC \{Vcm\}" savecurrent=false}
C {devices/lab_pin.sym} 440 380 3 0 {name=p1 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 610 180 1 0 {name=p2 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 620 260 2 0 {name=p3 sig_type=std_logic lab=vinn}
C {devices/vsource.sym} 230 240 0 0 {name=ena value="Pulse(0 \{ena\}*1.8 0 0.1n 0.1n 0.5n 1n)" savecurrent=false}
C {devices/lab_pin.sym} 1110 190 1 0 {name=p6 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 570 310 0 0 {name=vneg value="DC 0 PWL (0 -0.5 \{risetime\} 0.5 [\{risetime\} * 2] -0.5 [\{risetime\} * 3] 0.5 [\{risetime\} * 4] -0.5 )" savecurrent=false}
