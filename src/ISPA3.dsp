declare name "III order ISP";
declare vendor "SMERM";
declare version "0.1a";

import("ISP.lib");

//param input
a = 0-hslider("azymuth",0,-180,180,0.1)*(ma.PI/180);
e = hslider("elevation",0,-180,180,0.1)*(ma.PI/180);
pp = hslider("polar pattern",50,0,100,1)/(100) : si.smoo;

// TEST
//process = os.osc(1000) : mto1o(a,e) <: aISP(10,0), aISP(9,ma.PI/5), aISP(3,2*ma.PI/5);
// VST
process = si.bus(16),si.block(6) <: aISP3(10,0,pp), aISP3(9,ma.PI/5,pp), aISP3(3,2*ma.PI/5,pp);
