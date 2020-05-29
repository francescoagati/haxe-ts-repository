package puppeteer;

/**
	Represents a browser cookie.
**/
typedef Cookie = {
	/**
		The cookie name.
	**/
	var name : String;
	/**
		The cookie value.
	**/
	var value : String;
	/**
		The cookie domain.
	**/
	var domain : String;
	/**
		The cookie path.
	**/
	var path : String;
	/**
		The cookie Unix expiration time in seconds.
	**/
	var expires : Float;
	/**
		The cookie size
	**/
	var size : Float;
	/**
		The cookie http only flag.
	**/
	var httpOnly : Bool;
	/**
		The session cookie flag.
	**/
	var session : Bool;
	/**
		The cookie secure flag.
	**/
	var secure : Bool;
	/**
		The cookie same site definition.
	**/
	var sameSite : SameSiteSetting;
};