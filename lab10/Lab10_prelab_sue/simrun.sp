***** Spice Netlist for Cell 'Lab10_prelab_sue' *****

************** Module Lab10_prelab_sue **************
d0 n0 vc1 1n4004rl 
d1 vc1 vout 1n4004rl 
c1 n0 vout 1nf ic=0
xi0 n0 vin Multivibrator_sue
c0 vin vc1 1nf ic=0
v0 n0 gnd dc='12' ac='1' 

************** Module Multivibrator_sue **************
.subckt Multivibrator_sue dc_in vout
r0 n0 dc_in 1k noisy=0
r1 vout dc_in 1k noisy=0
r2 vc2 dc_in 60k noisy=0
r3 gnd vc2 30k noisy=0
r4 vc1 dc_in 60k noisy=0
r5 gnd vc1 30k noisy=0
x0 vout vc2 gnd 2n7000_mod 
x1 n0 vc1 gnd 2n7000_mod 
c0 n0 vc2 1.56nf ic=0
c1 vc1 vout 0.51nf ic=0
.ends Multivibrator_sue





.include '../../../SpiceModels/ECE214_models.mod'
.temp 27
.tran 100e-4 20.2e-3 20e-3
.global gnd
.options post=1 delmax=5p relv=1e-6 reli=1e-6 relmos=1e-6 method=gear
.op
.ic v(xi0.vc1) = 0

.end

