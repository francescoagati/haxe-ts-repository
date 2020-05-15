package node_fetch_plus;
typedef ResponseEvent = {
	var responseTime : Float;
	var statusCode : Float;
	var attempt : Float;
	var maxAttempts : Float;
	var method : String;
	var url : String;
};