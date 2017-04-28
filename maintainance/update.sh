#----------------------------------------------------------------------------#

# ensure that all executable
cd ${package_path}/bin
chmod +x *

# commit
git add .
git commit -m ".."
git push

# install (assume that use basher)
basher upgrade claramarquardt/easy_peasy_lemon_squeezy

#----------------------------------------------------------------------------#
