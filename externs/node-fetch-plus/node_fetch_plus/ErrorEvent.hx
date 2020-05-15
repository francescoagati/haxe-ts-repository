package node_fetch_plus;
typedef ErrorEvent = {
	var message : String;
	var responseTime : Float;
	var attempt : Float;
	var maxAttempts : Float;
	var method : String;
	var url : String;
};