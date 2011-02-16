define RULE
@+QPEDIR=$(QTOPIA_BUILD_TREE);\
if [ -z "$$QPEDIR" ]; then\
    QPEDIR=$(QPEDIR);\
fi;\
if [ -z "$$QPEDIR" ]; then\
    echo "ERROR: You must set QTOPIA_BUILD_TREE if you want to use depot hopping.";\
    echo "When this file was created, the Qtopia build tree was:";\
    echo "    /local/build/fic";\
    exit 1;\
fi;\
QPEDIR=`cd $$QPEDIR; /bin/pwd | sed 's/\/$$//'`;\
shadowdir=`echo $$PWD | perl -ne 's,/home/lpotter/depot/au/qtopia/4.2,'$$QPEDIR',;\
                                    s,/src/libraries/([^\d]+)\d?,/src/libraries/$$1,;\
                                    print'`;\
if [ "$$shadowdir" != "$$PWD" -a -d "$$shadowdir" ]; then\
    cd "$$shadowdir";\
    $(MAKE) $@;\
else\
    echo "ERROR: Can't resolve shadowdir.";\
    echo "       SOURCE tree = '/home/lpotter/depot/au/qtopia/4.2'";\
    echo "       BUILD  tree = '$$QPEDIR'";\
    echo "       PWD         = '$$PWD'";\
    echo "       shadowdir   = '$$shadowdir'";\
    exit 1;\
fi
endef

all:
	$(RULE)
install:
	$(RULE)
install_target:
	$(RULE)
packages:
	$(RULE)
lupdate:
	$(RULE)
sdk:
	$(RULE)
cleaninstall:
	$(RULE)
cinstall:
	$(RULE)
syncqtopia:
	$(RULE)
first_syncqtopia:
	$(RULE)
test:
	$(RULE)
checkp4:
	$(RULE)
remove_target:
	$(RULE)
relink:
	$(RULE)
printdependrules:
	$(RULE)
qmake_check:
	$(RULE)
auto_docs:
	$(RULE)
qtopia_first:
	$(RULE)
qtopia_all:
	$(RULE)
qtopia_clean:
	$(RULE)
qtopia_distclean:
	$(RULE)
qtopia_install:
	$(RULE)
qmake:
	$(RULE)
qmake-debug:
	$(RULE)
regenerate:
	$(RULE)
regenerate_all:
	$(RULE)
nodeps:
	$(RULE)
loud:
	$(RULE)
silent:
	$(RULE)
.PHONY: all install install_target packages lupdate sdk cleaninstall cinstall syncqtopia first_syncqtopia test checkp4 remove_target relink printdependrules qmake_check auto_docs qtopia_first qtopia_all qtopia_clean qtopia_distclean qtopia_install qmake qmake-debug regenerate regenerate_all nodeps loud silent
