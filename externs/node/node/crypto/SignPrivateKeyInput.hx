package node.crypto;
typedef SignPrivateKeyInput = {
	var key : ts.AnyOf2<String, global.Buffer>;
	@:optional
	var format : String;
	@:optional
	var type : String;
	@:optional
	var passphrase : ts.AnyOf2<String, global.Buffer>;
	@:optional
	var padding : Float;
	@:optional
	var saltLength : Float;
};