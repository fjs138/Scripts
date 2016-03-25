sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get autoremove && sudo apt-get remove --purge $(deborphan) && sudo apt-get install -f && sudo dpkg --configure -a
# updates repositorys, then installs all upgrades without requiring yes, then removes unneeded packages, then purges all orphaned packages (requires deborphan) then completes installing incompleted installations, then does some dpkg configure magic hooha
# will edit the details with more complete information soon
