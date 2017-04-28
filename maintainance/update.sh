#----------------------------------------------------------------------------#

# ensure that all executable
cd ${package_path}/bin
chmod +x *

# commit
cd ${package_path}
git add .
git commit -m ".."
git push

# install (assume that use basher)
basher uninstall claramarquardt/easy_peasy_lemon_squeezy
basher install claramarquardt/easy_peasy_lemon_squeezy

#----------------------------------------------------------------------------#
