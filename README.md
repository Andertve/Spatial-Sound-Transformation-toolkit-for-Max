# Spatial-Sound-Transformation-toolkit-for-Max
Spatial Sound Transformation toolkit for Max is a collection of Max modules in the form of bpatchers built around IRCAM´s Spat5 library and has been developed throughout my own artistic practice and through lectures and workshops I have given in artistic and creative use of ambisonic over the past years.

Combined with my interest in mapping, sonification, and sound transformation, I have led me to create and explore artistic techniques of using (and misusing) ambisonics and other formats where these techniques emphasize thinking outside the box and establishing a direct relationship between shaping the material and “bending” the sounding space.
The toolkit offers a range of such methods, where spatiality arises naturally from the sound’s transformation rather than from a choreographed placement of point sources. Additionally, the toolkit simplifies both patching and working with ambisonics by providing automated channel and connection handling.

The toolkit is developed using Max 9*, Spat5 library from IRCAM, a few objects from the FluComa library, and JavaScript. 
Spat5 and FluComa need to be installed before the use of this toolkit.

As the toolkit is doing automatic handling of ambisonic ordering, channels, and connections, it is paramount that the included JavaScripts, abstractions, and all related patches in this package are in the specified folder and not moved across as this may break the functionality.  Furthermore, there is a chance of bugs and weirdness, and I will update rather infrequently trying to address any issues or requests should there be.

So in order for this toolkit to work, do the following: 
1) Install Spat5 from IRCAM
2) Install FluComa from the Package Manager in Max
3) Add the Spatial-Sound-Transformation-toolkit in Packages in Max
4) In File preferences in Max, add the folder to (+ for adding a folder) the search path
5) Do check out the SSTT Example-1 and the SSTT module: SSTT-encode for information of use.

* SSTT works in Max 8 (possible in 7 as well, not tested) with the exception of the param osc object, introduced in Max 9. For the next update (v2), I will switch over to the v8 JavaScript engine from the js objects; this is not compatible with Max 7 and will probably use the param family of objects more so, probably a good idea to upgrade to Max 9.
