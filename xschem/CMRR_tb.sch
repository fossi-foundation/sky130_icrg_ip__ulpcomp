v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 720 -940 790 -940 {
lab=dvdd}
N 720 -920 790 -920 {
lab=avdd}
N 720 -900 790 -900 {
lab=ena}
N 720 -880 790 -880 {
lab=vinn}
N 720 -860 790 -860 {
lab=vinp}
N 720 -840 790 -840 {
lab=clk}
N 1090 -940 1150 -940 {
lab=vout}
N 1090 -920 1150 -920 {
lab=dvss}
N 1090 -900 1150 -900 {
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
N 600 -860 720 -860 {
lab=vinp}
N 600 -860 600 -830 {
lab=vinp}
N 600 -770 600 -720 {
lab=vinn}
N 660 -880 720 -880 {
lab=vinn}
N 660 -880 660 -740 {
lab=vinn}
N 600 -740 660 -740 {
lab=vinn}
N 600 -660 600 -620 {
lab=avss}
N 1410 -950 1480 -950 {
lab=dvdd}
N 1410 -930 1480 -930 {
lab=avdd}
N 1410 -910 1480 -910 {
lab=ena}
N 1410 -890 1480 -890 {
lab=#net1}
N 1410 -870 1480 -870 {
lab=vin}
N 1410 -850 1480 -850 {
lab=clk}
N 1780 -950 1840 -950 {
lab=vcmrr}
N 1780 -930 1840 -930 {
lab=dvss}
N 1780 -910 1840 -910 {
lab=avss}
N 1290 -870 1410 -870 {
lab=vin}
N 1290 -870 1290 -840 {
lab=vin}
N 1290 -780 1290 -730 {
lab=#net1}
N 1350 -890 1410 -890 {
lab=#net1}
N 1350 -890 1350 -750 {
lab=#net1}
N 1290 -750 1350 -750 {
lab=#net1}
N 1290 -670 1290 -630 {
lab=avss}
C {sky130_icrg_ip__ulpcomp2.sym} 940 -890 0 0 {name=x1}
C {devices/lab_pin.sym} 720 -940 0 0 {name=p1 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 720 -920 0 0 {name=p2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 720 -900 0 0 {name=p3 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 660 -850 0 0 {name=p4 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 600 -860 0 0 {name=p5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 720 -840 0 0 {name=p6 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1150 -940 2 0 {name=p7 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 1150 -920 2 0 {name=p8 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 1150 -900 2 0 {name=p9 sig_type=std_logic lab=avss}
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
C {devices/code_shown.sym} 50 -1150 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.option TEMP=25"}
C {devices/code_shown.sym} 50 -1030 0 0 {name=s2 only_toplevel=false value=".control
ac dec 80 1 1e12

let DMgain=v(vout)/v(vinp)
let CMgain=v(vcmrr)/v(vin)
let CMRR=DMgain-CMgain

plot db(DMgain)
plot db(CMgain)
plot db(DMgain)-db(CMgain)
.endc"}
C {devices/vsource.sym} 600 -800 0 0 {name=V9 value="0.5 AC 1" savecurrent=false}
C {devices/vsource.sym} 600 -690 0 0 {name=V10 value="DC 1.65" savecurrent=false}
C {devices/lab_pin.sym} 600 -620 0 0 {name=p18 sig_type=std_logic lab=avss}
C {sky130_icrg_ip__ulpcomp2.sym} 1630 -900 0 0 {name=x2}
C {devices/lab_pin.sym} 1410 -950 0 0 {name=p19 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 1410 -930 0 0 {name=p20 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1410 -910 0 0 {name=p21 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 1290 -860 0 0 {name=p23 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 1410 -850 0 0 {name=p24 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1840 -950 2 0 {name=p25 sig_type=std_logic lab=vcmrr}
C {devices/lab_pin.sym} 1840 -930 2 0 {name=p26 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 1840 -910 2 0 {name=p27 sig_type=std_logic lab=avss}
C {devices/vsource.sym} 1290 -700 0 0 {name=V11 value="0.5 AC 1" savecurrent=false}
C {devices/lab_pin.sym} 1290 -630 0 0 {name=p28 sig_type=std_logic lab=avss}
C {devices/vsource.sym} 1290 -810 0 0 {name=Voffset value="DC 2m" savecurrent=false}
