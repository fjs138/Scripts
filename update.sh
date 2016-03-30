sudo apt-get update &&
# updates the local package index with the latest changes made in the repositories
# the APT package index is essentially a database of available packages
# the repositories are defined in the /etc/apt/sources.list file and in the /etc/apt/sources.list.d directory.
sudo apt-get dist-upgrade -y &&
# "upgrade" is used to install the newest versions of all packages
# currently installed on the system from the sources enumerated in
# /etc/apt/sources.list
# "dist-upgrade", in addition to performing the function of "upgrade",
# also intelligently handles changing dependencies with new versions of packages
sudo apt-get autoremove &&
# is used to remove packages that were automatically installed to satisfy dependencies that are no longer needed
sudo apt-get remove --purge $(deborphan) &&
# finds packages that have no packages depending on them, that you did not explicitly install; removes them
# sudo apt-get -f install &&
# sudo apt-get install -f &&
# this does not work in-script, but works from prompt, not sure why yet
# attempt to correct a system with broken dependencies in place.
sudo dpkg --configure -a
# completes interrupted package operations
