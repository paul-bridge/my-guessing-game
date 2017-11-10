# Simple makefile for guessing game project

OUTFILE=README.md
MDATE=`date`
LINES=` cat guessinggame.sh | wc -l`

readme:
	@echo "## Project: Guessing Game" > ${OUTFILE}
	@echo "" >> ${OUTFILE}
	@echo "**File Created**: ${MDATE}" >> ${OUTFILE}
	@echo "" >> ${OUTFILE}
	@echo "**Lines in guessinggame.sh**: ${LINES}" >> ${OUTFILE}
	@echo "" >> ${OUTFILE}

clean:
	@rm -f README.md

