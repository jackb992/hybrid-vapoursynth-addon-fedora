This Repo is for hosting the Plugins build set up for Hybrid and Vapoursynth On Fedora.

All plugins needed for hybrid are included, except from vcmod (source link is dead).

Directions

1. Run install-deps.sh. It will ask for root. It will install all dependencies needed for the plugins.
    
2. Open config.txt. Change `"$HOME/opt/vapoursynth"` to whatever location you like if you want. 
 
   By default Hybrid will use `$HOME/opt/vapoursynth` unless you change this. 
   
   I prefer `$HOME/.hybrid`.
   
   If you do change this open the misc.ini example file and change `vsPluginsPath=/home/fletcher/.hybrid/vsplugins` to the same path. 
   
    
3. Run build-plugins.sh. It will install the plugins to whatever is `$VSPREFIX`.

Note: You will need to make sure you have a copy of Vscripts either in the same directory of the Hybrid binary or on the `$HOME/.hybrid/` folder
