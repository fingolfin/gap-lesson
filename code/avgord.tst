# tests for average order of a group element

# permutation group
gap> S:=SymmetricGroup(9);
Sym( [ 1 .. 9 ] )
gap> AvgOrdOfGroup(S);
3291487/362880

# pc group
gap> D:=DihedralGroup(512);
<pc group of size 512 with 9 generators>
gap> AvgOrdOfGroup(D);
44203/512
gap> G:=TrivialGroup();; #suppress
gap> AvgOrdOfGroup(G);
1

# fp group
gap> F:=FreeGroup("a","b");
<free group on the generators [ a, b ]>
gap> G:=F/ParseRelators(GeneratorsOfGroup(F),"a^8=b^2=1, b^-1ab=a^-1");
<fp group on the generators [ a, b ]>
gap> AvgOrdOfGroup(G);
59/16

# finite matrix group over integers

# matrix group over a finite field
gap> AvgOrdOfGroup(SL(2,5));
221/40