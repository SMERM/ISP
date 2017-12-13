// Gerzon's matrix to reproduce LR into 4 ch diamond configuration

declare name "LR2MG4DIA";
declare version "0.1";
declare author "SMERM";
declare description "Gerzon's matrix to reproduce LR into 4 ch diamond configuration";


M = ((_+_)/2);
S = ((_-_)/2);

process(L,R) = (L,R)<:(M,L,R,S);
