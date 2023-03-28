declare name "ISP mono to AMBIX III";
declare vendor "SMERM";

import("ISP.lib");

//param input
a = 0-hslider("azymuth",0,-180,180,0.1)*(ma.PI/180);
e = hslider("elevation",0,-180,180,0.1)*(ma.PI/180);

// TEST
//process = os.osc(1000) : mto3o(a,e);
// VST
process = _,si.block(15) : mto3o(a,e);
