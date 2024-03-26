v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {ULP Comparator} 200 -850 0 0 0.4 0.4 {}
N 1170 -410 1250 -410 {
lab=#net1}
N 1170 -370 1250 -370 {
lab=#net2}
N 930 -410 960 -410 {
lab=vinp}
N 930 -370 960 -370 {
lab=vinn}
N 1080 -560 1080 -490 {
lab=avdd}
N 1080 -300 1080 -240 {
lab=avss}
N 250 -560 320 -560 {
lab=ena}
N 150 -200 210 -200 {
lab=clk}
N 1480 -390 1530 -390 {
lab=vout}
N 430 -470 430 -420 {
lab=dvss}
N 430 -710 430 -660 {
lab=dvdd}
N 560 -560 620 -560 {
lab=enab}
N 290 -370 290 -310 {
lab=dvddb}
N 290 -100 290 -40 {
lab=dvss}
N 670 -200 740 -200 {
lab=clka}
N 670 -150 740 -150 {
lab=clkb}
N 1040 -540 1040 -490 {
lab=enab}
N 1040 -300 1040 -240 {
lab=clka}
N 1340 -540 1340 -490 {
lab=enab}
N 1380 -560 1380 -490 {
lab=dvdd}
N 1340 -300 1340 -240 {
lab=clkb}
N 1380 -300 1380 -240 {
lab=dvss}
N 1480 -440 1530 -440 {
lab=dvddb}
C {devices/ipin.sym} 1080 -560 0 0 {name=p1 lab=avdd}
C {devices/ipin.sym} 930 -410 0 0 {name=p3 lab=vinp}
C {devices/ipin.sym} 930 -370 0 0 {name=p4 lab=vinn}
C {devices/opin.sym} 1080 -240 0 0 {name=p5 lab=avss}
C {devices/opin.sym} 1530 -390 0 0 {name=p18 lab=vout}
C {devices/opin.sym} 430 -420 0 0 {name=p19 lab=dvss}
C {devices/ipin.sym} 430 -710 0 0 {name=p24 lab=dvdd}
C {devices/ipin.sym} 150 -200 0 0 {name=p29 lab=clk}
C {devices/ipin.sym} 250 -560 0 0 {name=p27 lab=ena}
C {Stage0_clk_inv.sym} 140 -70 0 0 {name=x1}
C {Stage1.sym} 740 -250 0 0 {name=x2}
C {Stage2_latch.sym} 1030 -200 0 0 {name=x3}
C {Stage0_ena_inv.sym} 140 -430 0 0 {name=x4}
C {devices/lab_pin.sym} 740 -200 2 0 {name=p34 sig_type=std_logic lab=clka
}
C {devices/lab_pin.sym} 1040 -240 0 0 {name=p39 sig_type=std_logic lab=clka
}
C {devices/lab_pin.sym} 290 -40 2 0 {name=p40 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 1340 -240 0 0 {name=p41 sig_type=std_logic lab=clkb
}
C {devices/lab_pin.sym} 1380 -240 2 0 {name=p42 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 1530 -440 0 1 {name=p43 sig_type=std_logic lab=dvddb}
C {devices/lab_pin.sym} 1380 -560 2 0 {name=p44 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 620 -560 2 0 {name=p45 sig_type=std_logic lab=enab}
C {devices/lab_pin.sym} 1340 -540 0 0 {name=p46 sig_type=std_logic lab=enab}
C {devices/lab_pin.sym} 740 -150 2 0 {name=p47 sig_type=std_logic lab=clkb
}
C {devices/lab_pin.sym} 290 -370 0 0 {name=p48 sig_type=std_logic lab=dvddb}
C {devices/lab_pin.sym} 1040 -540 0 0 {name=p49 sig_type=std_logic lab=enab}
