#!/bin/bash
HOME=`pwd`
export HOME
echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros
mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,BUILDROOT,SRPMS}
cp ../R-3.1.2.tar.gz rpmbuild/SOURCES
cp ../packages/RevoBase.tar.gz rpmbuild
cd rpmbuild/SOURCES
tar xzf R-3.1.2.tar.gz
mv R-3.1.2 RRO-8.0.1-3.1.2
tar czf RRO-8.0.1-3.1.2.tar.gz RRO-8.0.1-3.1.2
rm -rf R-3.1.2.tar.gz RRO-8.0.1-3.1.2
cd ../
rpmbuild -ba SPECS/R.spec
