package ts.html;
typedef IMSBlobBuilder = {
	function append(data:Dynamic, ?endings:String):Void;
	function getBlob(?contentType:String):Blob;
};