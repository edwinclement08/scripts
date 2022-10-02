# recreating source *.orig.tar.xz
 dh_make --indep --createorig

# build
debuild -uc -us

# References
https://blog.packagecloud.io/how-to-build-debian-packages-for-simple-shell-scripts/
https://opensource.com/article/20/7/systemd-timers

# Future
https://blog.packagecloud.io/how-to-gpg-sign-and-verify-deb-packages-and-apt-repositories/
