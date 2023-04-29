declare name "ISP mono to AMBIX IV MIXED ORDER";
declare vendor "SMERM";

import("ISP.lib");

//param input
a = 0-hslider("azymuth",0,-180,180,0.1)*(ma.PI/180);
e = hslider("elevation",0,-180,180,0.1)*(ma.PI/180);
mix = hslider("order mixer",4,0,4,0.001) : si.smoo;

// TEST
//process = os.osc(1000) : mto4om(a,e,mix);
// VST
process = _,si.block(25) : mto4om(a,e,mix), 0;
