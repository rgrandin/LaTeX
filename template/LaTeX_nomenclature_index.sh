#!/bin/bash
#
# THIS SCRIPT IS TO MAKE THE GENERATION OF NOMENCLATURE AND INDEX EASIER
# FOR LATEX DOCUMENTS
#
# CALLING SYNTAX:
#			LaTeX_nomenclature_index.sh <file_name> <1/2/3>
#
#			WHERE  <file_name> IS THE NAME OF THE ROOT LATEX DOCUMENT
#			WITHOUT ANY EXTENSION
#				---> my_main_file.tex USES my_main_file FOR <file_name>
#			THIS ROOT NAME IS USED BY BOTH NOMENCLATURE AND INDEX
#
#			1/2/3:	1 --- NOMENCLATURE ONLY (NO INDEX USED)
#				2 --- INDEX ONLY (NO NOMENCLATURE USED)
#				3 --- BOTH NOMENCLATURE AND INDEX
#
# WRITTEN BY: ROBERT GRANDIN
#	      27 SEPTEMBER 2009
#
echo " "
echo " "
#
# GENERATE NOMENCLATURE
if [[ $2 == "1" ]]; then
	echo "=============================================================="
	echo " "
	echo "Generating Nomenclature Files..."
	echo " "
	echo " "
	makeindex $1.nlo -s nomencl.ist -o $1.nls 
fi
#
# GENERATE INDEX
if [[ $2 == "2" ]]; then
	echo "=============================================================="
     	echo " "
     	echo "Generating Index Files..."
     	echo " "
     	echo " "
	makeindex $1.idx
fi
#
# GENERATE BOTH INDEX AND NOMENCLATURE
if [[ $2 == "3" ]]; then
        echo "=============================================================="
        echo " "
        echo "Generating Index & Nomenclature Files..."
        echo " "
        echo " "
	makeindex $1.idx
	echo " "
	echo " "
        makeindex $1.nlo -s nomencl.ist -o $1.nls 
fi
#
#
echo " "
echo " "
echo "=============================================================="
echo " "
echo " "
