***** Spice Netlist for Cell 'Lab8_prelab_sue' *****

************** Module Lab8_prelab_sue **************
r0 n1 n0 1k noisy=0
r5 vout n0 1k noisy=0
x0 vout vc2 gnd 2n7000 
x1 n1 vc1 gnd 2n7000 
c0 n1 vc2 100nf ic=0
c1 vc1 vout 100nf ic=0
r1 vc2 n0 60k noisy=0
r2 gnd vc2 30k noisy=0
r3 vc1 n0 60k noisy=0
r4 gnd vc1 30k noisy=0
v0 n0 gnd dc='12' ac='0' 





.include '../../../SpiceModels/ECE214_models.mod'
.temp 27
.tran 1e-6 25e-3 0e-3
.global gnd
.options post=1 delmax=5p relv=1e-6 reli=1e-6 relmos=1e-6 method=gear
.op
.ic v(vc1) = 0

.end

