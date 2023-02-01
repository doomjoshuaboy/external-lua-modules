# external-lua-modules
This is the place were I upload and update Modules for IKEMEN GO.

# Modules

FADESND

fadein/fadeout sound execution in screenpacks. 

```
fadein.snd = 0,0
```
Sets a sound hear when fadein. Takes effect after fadein.anim animation.
 
```
fadeout.snd = 0,0
```
Sets a sound to hear when fadeout. Takes effect after fadeout.anim animation.


# How to Install them?
To install these modules, you have to place them inside the folder ``external/mods`` in your Ikemen GO installation.

or 

Alternatively, if you want to distribute these with a motif (screenpack), you can download an additional module from  called modloader.lua. Just place that mod in the root of your screenpack folder and, after that, add the next line in system.def, inside [Files]:

```[Files]
module = data/<yourscreenpackfolder>/modloader.lua
```

# External links:

@Wreq! Lua Modules:
https://www.mediafire.com/folder/xo5ope3c4c9i2/
