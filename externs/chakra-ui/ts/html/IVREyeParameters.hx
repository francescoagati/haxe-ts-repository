package ts.html;
/**
	This WebVR API interface represents all the information required to correctly render a scene for a given eye, including field of view information.
**/
typedef IVREyeParameters = {
	final fieldOfView : VRFieldOfView;
	final offset : ts.lib.Float32Array;
	final renderHeight : Float;
	final renderWidth : Float;
};