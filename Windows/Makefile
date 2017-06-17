GIFS   =tdybnr.gif tdydate.gif

SUBDIRS	=
TARGETS	=all install uninstall check
TARGET	=all

.PHONY: ${SUBDIRS} ${TARGETS}

${TARGETS}::
#${SUBDIRS}::
#	${MAKE} -C $@ ${TARGET}

check::	${GIFS}
	for x in $^; do pcp $${x} ':/Windows/$${x}'; done
