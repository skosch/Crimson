
# bmake syntax. Packaged as "pmake" for some systems, "bmake" for others,
# native make(1) for BSDs. Or if you don't have a package, get it here:
# http://www.crufty.net/help/sjg/bmake.html

FAMILY?= Crimson

FACES+= Bold
FACES+= BoldItalic
FACES+= Italic
FACES+= Roman
FACES+= Semibold
FACES+= SemiboldItalic

EXTS+= otf
EXTS+= ttf
EXTS+= woff
EXTS+= eot
EXTS+= svg

SRC?= Source Files
OUT?= Desktop Fonts

AWK?=       awk
GREP?=      grep
FONTFORGE?= fontforge
GSED?=      sed
ESED?=      ${GSED} -E
MOVE?=      mv
MKDIR?=     mkdir -p

# XXX: depend on ${OUT}/OTF for mkdir, but spaces in filename
# XXX: generate in-situ, and get rid of ${MOVE}
.for face in ${FACES}
. for ext in ${EXTS}
all::
	bin/generate.pe ${ext} "${SRC}/${FAMILY}-${face}.sfd"
	${MKDIR} "${OUT}/${ext:tu}"
	${MOVE} "${SRC}/${FAMILY}-${face}.${ext}" "${OUT}/${ext:tu}"
. endfor
.endfor

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

