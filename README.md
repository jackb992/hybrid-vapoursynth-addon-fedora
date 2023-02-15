This Repo is for hosting the Plugins build set up for Hybrid and Vapoursynth On Arch Linux.

Directions

1. Run install-dep.sh. It will ask for root. It will install all dependencies needed for the plugins.
    
2. Open config.txt. Change `export VSPREFIX="$HOME/.hybrid"` to whatever Location you like. 
   Likewise open the misc.ini example file and change `vsPluginsPath=/home/fletcher/.hybrid/vsplugins` to the same path. 
   By default Hybrid will default to `$HOME/opt/vapoursynth/vsplugins` unless that line is included in the misc.ini
    
3. Run build-plugins.sh. It will install the plugins to whatever is `$VSPREFIX`.
