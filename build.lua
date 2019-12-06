-- Build script for test-oberdiek

-- Build script for oberdiek bundle (check only)
module = "oberdiek"

installfiles = {'*.def','*.sty','*.dfu',
"oberdiek-*.bib",
'*example*.tex',
'oberdiek.tex',
'bmpsize-test.tex',
'*.dtx','*.pdf','*.cfg','oberdiek.ins'}
textfiles={"README.txt"}
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
"doc/latex/oberdiek/alphalph.pdf",
"doc/latex/oberdiek/askinclude.pdf",
"doc/latex/oberdiek/auxhook.pdf",
"doc/latex/oberdiek/bigintcalc.pdf",
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
"doc/latex/oberdiek/etexcmds.pdf",
"doc/latex/oberdiek/example/eolgrab-example-env.tex",
"doc/latex/oberdiek/example/eolgrab-example-ltx.tex",
"doc/latex/oberdiek/example/eolgrab-example-sec.tex",
"doc/latex/oberdiek/fibnum.pdf",
"doc/latex/oberdiek/flags.pdf",
"doc/latex/oberdiek/gettitlestring.pdf",
"doc/latex/oberdiek/holtxdoc.pdf",
"doc/latex/oberdiek/hopatch.pdf",
"doc/latex/oberdiek/hycolor.pdf",
"doc/latex/oberdiek/hypbmsec.pdf",
"doc/latex/oberdiek/hypcap.pdf",
"doc/latex/oberdiek/hypdestopt.pdf",
"doc/latex/oberdiek/hypdoc.pdf",
"doc/latex/oberdiek/hypgotoe-example.tex",
"doc/latex/oberdiek/hypgotoe.pdf",
"doc/latex/oberdiek/hyphsubst.pdf",
"doc/latex/oberdiek/ifdraft.pdf",
"doc/latex/oberdiek/iflang.pdf",
"doc/latex/oberdiek/intcalc.pdf",
"doc/latex/oberdiek/kvdefinekeys.pdf",
"doc/latex/oberdiek/kvsetkeys-example.tex",
"doc/latex/oberdiek/kvsetkeys.pdf",
"doc/latex/oberdiek/listingsutf8.pdf",
"doc/latex/oberdiek/ltxcmds.pdf",
"doc/latex/oberdiek/oberdiek.pdf",
"doc/latex/oberdiek/pagegrid.pdf",
"doc/latex/oberdiek/pagesel.pdf",
"doc/latex/oberdiek/pdfcol.pdf",
"doc/latex/oberdiek/pdfcolfoot.pdf",
"doc/latex/oberdiek/pdfcolparallel.pdf",
"doc/latex/oberdiek/pdfcolparcolumns.pdf",
"doc/latex/oberdiek/pdfcrypt.pdf",
"doc/latex/oberdiek/pdfescape.pdf",
"doc/latex/oberdiek/pdfrender.pdf",
"doc/latex/oberdiek/picture-example.tex",
"doc/latex/oberdiek/picture.pdf",
"doc/latex/oberdiek/protecteddef.pdf",
"doc/latex/oberdiek/refcount.pdf",
"doc/latex/oberdiek/resizegather.pdf",
"doc/latex/oberdiek/rotchiffre.pdf",
"doc/latex/oberdiek/scrindex-example1.tex",
"doc/latex/oberdiek/scrindex-example2.tex",
"doc/latex/oberdiek/scrindex.pdf",
"doc/latex/oberdiek/setouterhbox-example.tex",
"doc/latex/oberdiek/setouterhbox.pdf",
"doc/latex/oberdiek/settobox-example.tex",
"doc/latex/oberdiek/settobox.pdf",
"doc/latex/oberdiek/soulutf8.pdf",
"doc/latex/oberdiek/stackrel.pdf",
"doc/latex/oberdiek/stampinclude.pdf",
"doc/latex/oberdiek/tabularht-example1.tex",
"doc/latex/oberdiek/tabularht-example2.tex",
"doc/latex/oberdiek/tabularht.pdf",
"doc/latex/oberdiek/tabularkv-example.tex",
"doc/latex/oberdiek/tabularkv.pdf",
"doc/latex/oberdiek/telprint.pdf",
"doc/latex/oberdiek/thepdfnumber.pdf",
"doc/latex/oberdiek/twoopt.pdf",
"doc/latex/oberdiek/uniquecounter-example.tex",
"doc/latex/oberdiek/uniquecounter.pdf",
"source/latex/oberdiek/aliascnt.dtx",
"source/latex/oberdiek/alphalph.dtx",
"source/latex/oberdiek/askinclude.dtx",
"source/latex/oberdiek/auxhook.dtx",
"source/latex/oberdiek/bigintcalc.dtx",
"source/latex/oberdiek/bmpsize.dtx",
"source/latex/oberdiek/centernot.dtx",
"source/latex/oberdiek/chemarr.dtx",
"source/latex/oberdiek/classlist.dtx",
"source/latex/oberdiek/colonequals.dtx",
"source/latex/oberdiek/dvipscol.dtx",
"source/latex/oberdiek/engord.dtx",
"source/latex/oberdiek/enparen.dtx",
"source/latex/oberdiek/eolgrab.dtx",
"source/latex/oberdiek/etexcmds.dtx",
"source/latex/oberdiek/fibnum.dtx",
"source/latex/oberdiek/flags.dtx",
"source/latex/oberdiek/gettitlestring.dtx",
"source/latex/oberdiek/holtxdoc.dtx",
"source/latex/oberdiek/hopatch.dtx",
"source/latex/oberdiek/hycolor.dtx",
"source/latex/oberdiek/hypbmsec.dtx",
"source/latex/oberdiek/hypcap.dtx",
"source/latex/oberdiek/hypdestopt.dtx",
"source/latex/oberdiek/hypdoc.dtx",
"source/latex/oberdiek/hypgotoe.dtx",
"source/latex/oberdiek/hyphsubst.dtx",
"source/latex/oberdiek/ifdraft.dtx",
"source/latex/oberdiek/iflang.dtx",
"source/latex/oberdiek/intcalc.dtx",
"source/latex/oberdiek/kvdefinekeys.dtx",
"source/latex/oberdiek/kvsetkeys.dtx",
"source/latex/oberdiek/listingsutf8.dtx",
"source/latex/oberdiek/ltxcmds.dtx",
"source/latex/oberdiek/oberdiek.ins",
"source/latex/oberdiek/oberdiek.tex",
"source/latex/oberdiek/pagegrid.dtx",
"source/latex/oberdiek/pagesel.dtx",
"source/latex/oberdiek/pdfcol.dtx",
"source/latex/oberdiek/pdfcolfoot.dtx",
"source/latex/oberdiek/pdfcolparallel.dtx",
"source/latex/oberdiek/pdfcolparcolumns.dtx",
"source/latex/oberdiek/pdfcrypt.dtx",
"source/latex/oberdiek/pdfescape.dtx",
"source/latex/oberdiek/pdfrender.dtx",
"source/latex/oberdiek/picture.dtx",
"source/latex/oberdiek/protecteddef.dtx",
"source/latex/oberdiek/README.txt",
"source/latex/oberdiek/refcount.dtx",
"source/latex/oberdiek/resizegather.dtx",
"source/latex/oberdiek/rotchiffre.dtx",
"source/latex/oberdiek/scrindex.dtx",
"source/latex/oberdiek/setouterhbox.dtx",
"source/latex/oberdiek/settobox.dtx",
"source/latex/oberdiek/soulutf8.dtx",
"source/latex/oberdiek/stackrel.dtx",
"source/latex/oberdiek/stampinclude.dtx",
"source/latex/oberdiek/tabularht.dtx",
"source/latex/oberdiek/tabularkv.dtx",
"source/latex/oberdiek/telprint.dtx",
"source/latex/oberdiek/thepdfnumber.dtx",
"source/latex/oberdiek/twoopt.dtx",
"source/latex/oberdiek/uniquecounter.dtx",
"tex/generic/oberdiek/alphalph.sty",
"tex/generic/oberdiek/bigintcalc.sty",
"tex/generic/oberdiek/engord.sty",
"tex/generic/oberdiek/eolgrab.sty",
"tex/generic/oberdiek/etexcmds.sty",
"tex/generic/oberdiek/fibnum.sty",
"tex/generic/oberdiek/gettitlestring.sty",
"tex/generic/oberdiek/hyphsubst.sty",
"tex/generic/oberdiek/iflang.sty",
"tex/generic/oberdiek/intcalc.sty",
"tex/generic/oberdiek/kvdefinekeys.sty",
"tex/generic/oberdiek/kvsetkeys.sty",
"tex/generic/oberdiek/ltxcmds.sty",
"tex/generic/oberdiek/pdfcol.sty",
"tex/generic/oberdiek/pdfcrypt.sty",
"tex/generic/oberdiek/pdfescape.sty",
"tex/generic/oberdiek/pdfrender.sty",
"tex/generic/oberdiek/protecteddef.sty",
"tex/generic/oberdiek/rotchiffre.sty",
"tex/generic/oberdiek/setouterhbox.sty",
"tex/generic/oberdiek/soulutf8.sty",
"tex/generic/oberdiek/telprint.sty",
"tex/generic/oberdiek/thepdfnumber.sty",
"tex/generic/oberdiek/uniquecounter.sty",
"tex/latex/oberdiek/aliascnt.sty",
"tex/latex/oberdiek/askinclude.sty",
"tex/latex/oberdiek/auxhook.sty",
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
"tex/latex/oberdiek/hopatch.sty",
"tex/latex/oberdiek/hycolor.sty",
"tex/latex/oberdiek/hypbmsec.sty",
"tex/latex/oberdiek/hypcap.sty",
"tex/latex/oberdiek/hypdestopt.sty",
"tex/latex/oberdiek/hypdoc.sty",
"tex/latex/oberdiek/hypgotoe.sty",
"tex/latex/oberdiek/ifdraft.sty",
"tex/latex/oberdiek/listingsutf8.sty",
"tex/latex/oberdiek/pagegrid.sty",
"tex/latex/oberdiek/pagesel.sty",
"tex/latex/oberdiek/pdfcolfoot.sty",
"tex/latex/oberdiek/pdfcolparallel.sty",
"tex/latex/oberdiek/pdfcolparcolumns.sty",
"tex/latex/oberdiek/picture.sty",
"tex/latex/oberdiek/refcount.sty",
"tex/latex/oberdiek/resizegather.sty",
"tex/latex/oberdiek/scrindex.sty",
"tex/latex/oberdiek/settobox.sty",
"tex/latex/oberdiek/stackrel.sty",
"tex/latex/oberdiek/stampinclude.sty",
"tex/latex/oberdiek/tabularht.sty",
"tex/latex/oberdiek/tabularkv.sty",
"tex/latex/oberdiek/twoopt.sty",
"tex/latex/oberdiek/xcolor-patch.sty"
}