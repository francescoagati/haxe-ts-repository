package node.crypto;

typedef VerifyKeyWithOptions = {
	@:optional
	var asymmetricKeyType : KeyType;
	/**
		For asymmetric keys, this property represents the size of the embedded key in
		bytes. This property is `undefined` for symmetric keys.
	**/
	@:optional
	var asymmetricKeySize : Float;
	@:overload(function(?options:KeyExportOptions<String>):global.Buffer { })
	function export(options:KeyExportOptions<String>):ts.AnyOf2<String, global.Buffer>;
	@:optional
	var symmetricKeySize : Float;
	var type : KeyObjectType;
	@:optional
	var padding : Float;
	@:optional
	var saltLength : Float;
};