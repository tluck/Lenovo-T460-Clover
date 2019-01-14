for f in ../DSDT.T460/SS*.dsl ; 
do
	fn=${f##*/}
	fn=${fn/460/560}

echo  $fn
cat $f | sed -e's/460/560/g' > $fn

done
exit
cat ../DSDT.T460/SSDT-HDEF-T460.dsl
cat ../DSDT.T460/SSDT-HDEF-T460.dsl
cat ../DSDT.T460/SSDT-IGPU-T460.dsl
cat ../DSDT.T460/SSDT-LPC-T460.dsl
cat ../DSDT.T460/SSDT-PNLF-T460.dsl
cat ../DSDT.T460/SSDT-PS2K-T460.dsl
cat ../DSDT.T460/SSDT-SMBUS-T460.dsl
cat ../DSDT.T460/SSDT-XHC-T460.dsl
cat ../DSDT.T460/SSDT-XOSI.dsl
