package puppeteer;

typedef SetCookie = {
	/**
		The cookie name.
	**/
	var name : String;
	/**
		The cookie value.
	**/
	var value : String;
	/**
		The request-URI to associate with the setting of the cookie. This value can affect the default domain and path values of the created cookie.
	**/
	@:optional
	var url : String;
	/**
		The cookie domain.
	**/
	@:optional
	var domain : String;
	/**
		The cookie path.
	**/
	@:optional
	var path : String;
	/**
		The cookie Unix expiration time in seconds.
	**/
	@:optional
	var expires : Float;
	/**
		The cookie http only flag.
	**/
	@:optional
	var httpOnly : Bool;
	/**
		The session cookie flag.
	**/
	@:optional
	var session : Bool;
	/**
		The cookie secure flag.
	**/
	@:optional
	var secure : Bool;
	/**
		The cookie same site definition.
	**/
	@:optional
	var sameSite : SameSiteSetting;
};