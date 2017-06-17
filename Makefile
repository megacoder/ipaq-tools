PREFIX	=/opt
BINDIR	=${PREFIX}/bin

SUBDIRS	=Windows
TARGETS	=all install uninstall check
TARGET	=all

.PHONY: ${SUBDIRS} ${TARGETS}

all:: ipaq-dockware.zsh

install:: ipaq-dockware.zsh
	install -d ${BINDIR}
	install -c $< ${BINDIR}/ipaq-dockware

uninstall::
	${RM} ${BINDIR}/ipaq-dockware

check::	ipaq-dockware.zsh

${TARGETS}::
	${MAKE} TARGET=$@ ${SUBDIRS}

${SUBDIRS}::
	${MAKE} -C $@ ${TARGET}
