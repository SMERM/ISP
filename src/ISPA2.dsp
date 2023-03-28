declare name "II order ISP";
declare vendor "SMERM";
declare version "0.1a";

import("ISP.lib");

//param input
a = 0-hslider("azymuth",0,-180,180,0.1)*(ma.PI/180);
e = hslider("elevation",0,-180,180,0.1)*(ma.PI/180);
pp = hslider("polar pattern",50,0,100,1)/(100) : si.smoo;

// TEST
//process = os.osc(1000) : mto2o(a,e) <: aISP2(10,0,pp), aISP2(9,ma.PI/5,pp), aISP2(3,2*ma.PI/5,pp);
// VST
process = si.bus(9),si.block(13) <: aISP2(10,0,pp), aISP2(9,ma.PI/5,pp), aISP2(3,2*ma.PI/5,pp);
