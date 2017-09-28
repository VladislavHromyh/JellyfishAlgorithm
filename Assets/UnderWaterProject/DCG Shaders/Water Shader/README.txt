Thanks for buying my asset :) !

Introduction:

This shader is highly customizable, so to get nice results you need to be carefully with the settings.

PLEASE, delete any previous version of this shader to work with this one, you may experience some conflicts with the files.

1 - To get the right waves arounds your islands you need to asign a proper mask texture to guide the shader. in the texture the WHITE area is where you waves flow freely but the BLACK area is an obstacle, or anything that stop the wave. the waves will be wrapped(if possible) around the black areas.

2 - The displacement mask is a black/white texture where white represent the wave, by default is a tiled voronoi noise texture, this is for giving more life to the water, but you can only put a black texture or put in 0 the displacement power if you dont want this to take effect.

3 - The displacement waves input is a texture in black/white with the shape of the waves, that shape will be wrapped around your displacement waves mask.

4 - To make the underwater effect i have scripted a simple code that enable two image effects on the camera, DOF effect with a very near blur values, and a color ramp effect so when you enter water, those effects get enabled, i did it with simply colliders on the "player" object, and in the camera, maybe you can try another solutionb for this :), mine are just for example.

5 - Keep an eye on the Tesselation level of the mesh and the underwater fog when you are targeting low-spec machines/devices.

6 - Make sure you put your main light source(sun) in the variable of the "WaterFog" script, attached to the water fog object, otherwise you will not get the sun scattering effect underwater.

7 - The image effects used in this package are from the "Standard Assets" by unity, so if you already have them, feel free to erase the "_Common" folder inside this package.

8- if you have any doubt please write me on my facebook page:
https://www.facebook.com/deadlycrow.games/

KNOWN ISSUES:
if you dont want to use a displacement waves mask but you still want to use the additional radial waves, please put a blank image in the texture input and just lower the mask intensity to 0. otherwise the waves will not work.
Also, sometimes a cube underwater gets a little glitchy with the caustics, hope you dont have trouble, im working on this :)

HAVE FUN :D !