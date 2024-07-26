-- Build script for test-oberdiek

-- Build script for oberdiek bundle (check only)
module = "oberdiek"

installfiles = {'*.def','*.sty',
"oberdiek-*.bib",
'*example*.tex',
'oberdiek.tex',
'bmpsize-test.tex',
'*.dtx','*.pdf','*.cfg','oberdiek.ins'}
textfiles={"README.md"}
unpackfile = {'oberdiek.ins'}
typesetfiles={"*.dtx","oberdiek.tex"}
docfiles={"*.tex"}
-- "config-plain-noxetex"
checkconfigs = {"build","config-plain", "config-noxetex","config-luatex","config-pdftex"}
maxprintline=10000
checkruns = 2

--typesetexe = "lualatex-dev"


function docinit_hook ()
 return  cp("*.bib", "build/unpacked" ,"build/doc")
end

packtdszip  = true

function no_ctan()
error("use mkctan script")
end

target_list.zzzzzzzctan={
bundle_func=no_ctan,
desc="CTAN packaging disabled",
func=no_ctan
}

tdslocations={
"bibtex/bib/oberdiek/oberdiek-bundle.bib",
"bibtex/bib/oberdiek/oberdiek-source.bib",
"doc/latex/oberdiek/aliascnt.pdf",
"doc/latex/oberdiek/bmpsize.pdf",
"doc/latex/oberdiek/centernot.pdf",
"doc/latex/oberdiek/chemarr-example.tex",
"doc/latex/oberdiek/chemarr.pdf",
"doc/latex/oberdiek/classlist.pdf",
"doc/latex/oberdiek/colonequals.pdf",
"doc/latex/oberdiek/dvipscol.pdf",
"doc/latex/oberdiek/engord.pdf",
"doc/latex/oberdiek/enparen.pdf",
"doc/latex/oberdiek/eolgrab.pdf",
"doc/latex/oberdiek/example/eolgrab-example-env.tex",
"doc/latex/oberdiek/example/eolgrab-example-ltx.tex",
"doc/latex/oberdiek/example/eolgrab-example-sec.tex",
"doc/latex/oberdiek/fibnum.pdf",
"doc/latex/oberdiek/flags.pdf",
"doc/latex/oberdiek/holtxdoc.pdf",
"doc/latex/oberdiek/hycolor.pdf",
"doc/latex/oberdiek/hypbmsec.pdf",
"doc/latex/oberdiek/hypcap.pdf",
"doc/latex/oberdiek/hypgotoe-example.tex",
"doc/latex/oberdiek/hypgotoe.pdf",
"doc/latex/oberdiek/hyphsubst.pdf",
"doc/latex/oberdiek/ifdraft.pdf",
"doc/latex/oberdiek/iflang.pdf",
"doc/latex/oberdiek/oberdiek.pdf",
"doc/latex/oberdiek/pdfcolfoot.pdf",
"doc/latex/oberdiek/pdfcolparallel.pdf",
"doc/latex/oberdiek/pdfcolparcolumns.pdf",
"doc/latex/oberdiek/pdfcrypt.pdf",
"doc/latex/oberdiek/protecteddef.pdf",
"doc/latex/oberdiek/resizegather.pdf",
"doc/latex/oberdiek/rotchiffre.pdf",
"doc/latex/oberdiek/scrindex-example1.tex",
"doc/latex/oberdiek/scrindex-example2.tex",
"doc/latex/oberdiek/scrindex.pdf",
"doc/latex/oberdiek/setouterhbox-example.tex",
"doc/latex/oberdiek/setouterhbox.pdf",
"doc/latex/oberdiek/settobox-example.tex",
"doc/latex/oberdiek/settobox.pdf",
"doc/latex/oberdiek/stackrel.pdf",
"doc/latex/oberdiek/stampinclude.pdf",
"doc/latex/oberdiek/tabularht-example1.tex",
"doc/latex/oberdiek/tabularht-example2.tex",
"doc/latex/oberdiek/tabularht.pdf",
"doc/latex/oberdiek/tabularkv-example.tex",
"doc/latex/oberdiek/tabularkv.pdf",
"doc/latex/oberdiek/thepdfnumber.pdf",
"doc/latex/oberdiek/twoopt.pdf",
"source/latex/oberdiek/aliascnt.dtx",
"source/latex/oberdiek/bmpsize.dtx",
"source/latex/oberdiek/centernot.dtx",
"source/latex/oberdiek/chemarr.dtx",
"source/latex/oberdiek/classlist.dtx",
"source/latex/oberdiek/colonequals.dtx",
"source/latex/oberdiek/dvipscol.dtx",
"source/latex/oberdiek/engord.dtx",
"source/latex/oberdiek/enparen.dtx",
"source/latex/oberdiek/eolgrab.dtx",
"source/latex/oberdiek/fibnum.dtx",
"source/latex/oberdiek/flags.dtx",
"source/latex/oberdiek/holtxdoc.dtx",
"source/latex/oberdiek/hycolor.dtx",
"source/latex/oberdiek/hypbmsec.dtx",
"source/latex/oberdiek/hypcap.dtx",
"source/latex/oberdiek/hypgotoe.dtx",
"source/latex/oberdiek/hyphsubst.dtx",
"source/latex/oberdiek/ifdraft.dtx",
"source/latex/oberdiek/iflang.dtx",
"source/latex/oberdiek/oberdiek.ins",
"source/latex/oberdiek/oberdiek.tex",
"source/latex/oberdiek/pdfcolfoot.dtx",
"source/latex/oberdiek/pdfcolparallel.dtx",
"source/latex/oberdiek/pdfcolparcolumns.dtx",
"source/latex/oberdiek/pdfcrypt.dtx",
"source/latex/oberdiek/protecteddef.dtx",
"source/latex/oberdiek/README.txt",
"source/latex/oberdiek/resizegather.dtx",
"source/latex/oberdiek/rotchiffre.dtx",
"source/latex/oberdiek/scrindex.dtx",
"source/latex/oberdiek/setouterhbox.dtx",
"source/latex/oberdiek/settobox.dtx",
"source/latex/oberdiek/stackrel.dtx",
"source/latex/oberdiek/stampinclude.dtx",
"source/latex/oberdiek/tabularht.dtx",
"source/latex/oberdiek/tabularkv.dtx",
"source/latex/oberdiek/thepdfnumber.dtx",
"source/latex/oberdiek/twoopt.dtx",
"tex/generic/oberdiek/engord.sty",
"tex/generic/oberdiek/eolgrab.sty",
"tex/generic/oberdiek/fibnum.sty",
"tex/generic/oberdiek/hyphsubst.sty",
"tex/generic/oberdiek/iflang.sty",
"tex/generic/oberdiek/pdfcrypt.sty",
"tex/generic/oberdiek/protecteddef.sty",
"tex/generic/oberdiek/rotchiffre.sty",
"tex/generic/oberdiek/setouterhbox.sty",
"tex/generic/oberdiek/thepdfnumber.sty",
"tex/latex/oberdiek/aliascnt.sty",
"tex/latex/oberdiek/bmpsize-base.sty",
"tex/latex/oberdiek/bmpsize-dvipdfm.def",
"tex/latex/oberdiek/bmpsize-dvipdfmx.def",
"tex/latex/oberdiek/bmpsize-dvips.def",
"tex/latex/oberdiek/bmpsize-test.tex",
"tex/latex/oberdiek/bmpsize.sty",
"tex/latex/oberdiek/centernot.sty",
"tex/latex/oberdiek/chemarr.sty",
"tex/latex/oberdiek/classlist.sty",
"tex/latex/oberdiek/colonequals.sty",
"tex/latex/oberdiek/dvipscol.sty",
"tex/latex/oberdiek/enparen.sty",
"tex/latex/oberdiek/flags.sty",
"tex/latex/oberdiek/holtxdoc.sty",
"tex/latex/oberdiek/hycolor.sty",
"tex/latex/oberdiek/hypbmsec.sty",
"tex/latex/oberdiek/hypcap.sty",
"tex/latex/oberdiek/hypgotoe.sty",
"tex/latex/oberdiek/ifdraft.sty",
"tex/latex/oberdiek/pdfcolfoot.sty",
"tex/latex/oberdiek/pdfcolparallel.sty",
"tex/latex/oberdiek/pdfcolparcolumns.sty",
"tex/latex/oberdiek/resizegather.sty",
"tex/latex/oberdiek/scrindex.sty",
"tex/latex/oberdiek/settobox.sty",
"tex/latex/oberdiek/stackrel.sty",
"tex/latex/oberdiek/stampinclude.sty",
"tex/latex/oberdiek/tabularht.sty",
"tex/latex/oberdiek/tabularkv.sty",
"tex/latex/oberdiek/twoopt.sty",
}
