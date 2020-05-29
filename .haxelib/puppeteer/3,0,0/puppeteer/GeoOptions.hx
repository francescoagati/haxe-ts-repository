package puppeteer;

typedef GeoOptions = {
	/**
		Latitude between -90 and 90.
	**/
	var latitude : Float;
	/**
		Longitude between -180 and 180.
	**/
	var longitude : Float;
	/**
		Non-negative accuracy value.
	**/
	@:optional
	var accuracy : Float;
};