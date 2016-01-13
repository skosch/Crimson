
# bmake syntax. Packaged as "pmake" for some systems, "bmake" for others,
# native make(1) for BSDs.

FAMILY?= Crimson

FACES+= Bold
FACES+= BoldItalic
FACES+= Italic
FACES+= Roman
FACES+= Semibold
FACES+= SemiboldItalic

SRC?= Source Files

AWK?=       awk
GREP?=      grep
FONTFORGE?= fontforge
GSED?=      sed
ESED?=      ${GSED} -E

all::

clean::

# comment out glyphs in the ik/*.fea files which do not exist in *.sfd
# XXX: this leaves references inside @_ classes for now
.for face in ${FACES}
mergefea:: # XXX: spaces in ${SRC}: ${SRC}/${FAMILY}-${face}.sfd
	bin/mergefea.pe "${SRC}/${FAMILY}-${face}.sfd" 2>&1 \
	| ${GREP} non-existent  \
	| ${AWK} '{print $$9}'  \
	| while read l; do      \
	    ${GSED} -ie $$l's/^/#/' "${SRC}/ik/${FAMILY}-${face}#00_ik.fea"; \
	done;                   \
	${ESED} -ie '/@_/ s/^#+//' "${SRC}/ik/${FAMILY}-${face}#00_ik.fea"
	bin/mergefea.pe "${SRC}/${FAMILY}-${face}.sfd"
.endfor

