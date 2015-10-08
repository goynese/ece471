#! /bin/perl

# This script strips everything off of the final spice file (i.e. transistor for 250nm),
# and puts the correct transistor model

# Lambda is always transistor channel length divided by 2

# Revised: January 19, 2009

# 0.18um Device
#$lambda=90e-9;

# 0.13um Device
#$lambda=65e-9;

# 65nm Device
#$lambda=32e-9;

# 32nm Device
#$lambda=16e-9;

# 16nm Device
#$lambda=8e-9;



$lp = 2*$lambda;
$ln = 2*$lambda;
$wn = 4*$lambda;    
$wp = 8*$lambda;

# Nmos parasitic values

$adsn = 2.5 * $ln * $wn;
$adsp = 2.5 * $ln * $wp;
$pdsn = 5.0 * $ln + $wn;
$pdsp = 5.0 * $ln + $wp;

while (<>) {

# lenth scales by 2*lambda
    s/240E-9/$ln/g;

# change length of all NMOS to be 4*lambda, PMOS to be 8*lambda
    s/480E-9/$wn/g;
    s/960E-9/$wp/g;

# change drain/source parasitic regions of all NMOS 
    s/288E-15/$adsn/g;
    s/576E-15/$adsp/g;
    
    s/2.16E-6/$pdsn/g;
    s/3.12E-6/$pdsp/g;

# change NMOS & PMOS naming
    s/TSMC25DP/pmos/g;
    s/TSMC25DN/nmos/g;

if (index($_,"TSMC25") != -1) {

    chop;
    print $_;

#} elsif (index($_,"\+PD") == 0) {
#    s/\+PD/PD/g;
#    print $_;

} elsif (index($_,".ENDS") == 0) {
    print  $_;
} else {
    if (index($_,"lib") != -1) {
    } elsif (index($_,"TEMP") != -1) {
    } elsif (index($_,"OP") != -1) {
    } elsif (index($_,"save") != -1) {
    } elsif (index($_,"OPTION") != -1) {
    } elsif (index($_,"PROBE") != -1) {
    } elsif (index($_,"END") != -1) {
    }  else {
	print $_;
    }
}
}



