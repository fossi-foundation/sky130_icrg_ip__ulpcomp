#! /bin/bash

xschem -n -s -r -x -q --tcl "set lvs_netlist 1" --rcfile $PDK_ROOT/$PDK/libs.tech/xschem/xschemrc -o ../netlist/schematic -N sky130_icrg_ip__ulpcomp2.spice sky130_icrg_ip__ulpcomp2.sch
