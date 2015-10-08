.title NMOS
.options post

**** include model file ****
.inc ./par0.18um.net

**** Components ****
M1 Vd Vg 0 0 N_18 W=3u L=1u M=2

**** Sources ****
Vds 50mV vd 0
Vgs Vg 0

**** Controls ****
.dc Vgs 0v 2.5v 0.01v 
*.op
*.print dc i(m1)

.end
