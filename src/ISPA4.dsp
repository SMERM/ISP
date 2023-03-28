declare name "IV order ISP";
declare vendor "SMERM";
declare version "0.1a";

import("ISP.lib");

//param input
a = 0-hslider("azymuth",0,-180,180,0.1)*(ma.PI/180);
e = hslider("elevation",0,-180,180,0.1)*(ma.PI/180);
pp = hslider("polar pattern",50,0,100,1)/(100) : si.smoo;

// TEST
//process = os.osc(1000) : mto4o(a,e) <: aISP4(10,0,pp), aISP4(9,ma.PI/5,pp), aISP4(3,2*ma.PI/5,pp);
// VST
process = si.bus(25) <: aISP4(10,0,pp), aISP4(9,ma.PI/5,pp), aISP4(3,2*ma.PI/5,pp), (si.bus(25) :>*(0) <:si.bus(3)) ;
