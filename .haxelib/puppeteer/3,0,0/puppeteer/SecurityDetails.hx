package puppeteer;

typedef SecurityDetails = {
	/**
		A string with the name of issuer of the certificate. (e.g. "Let's Encrypt Authority X3").
	**/
	function issuer():String;
	/**
		String with the security protocol (e.g. TLS 1.2).
	**/
	function protocol():String;
	/**
		Name of the subject to which the certificate was issued to (e.g. "www.example.com").
	**/
	function subjectName():String;
	/**
		Timestamp stating the start of validity of the certificate.
	**/
	function validFrom():Float;
	/**
		Timestamp stating the end of validity of the certificate.
	**/
	function validTo():Float;
};