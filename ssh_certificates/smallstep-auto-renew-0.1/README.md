# recreating source *.orig.tar.xz
 dh_make --indep --createorig

# build
debuild -uc -us