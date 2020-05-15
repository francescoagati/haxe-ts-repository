package node;
@:jsRequire("buffer") @valueModuleOnly extern class Buffer {
	static function transcode(source:ts.lib.Uint8Array, fromEnc:node.buffer.TranscodeEncoding, toEnc:node.buffer.TranscodeEncoding):global.Buffer;
	static var INSPECT_MAX_BYTES : Float;
	static var kMaxLength : Float;
	static var kStringMaxLength : Float;
	static var constants : {
		var MAX_LENGTH : Float;
		var MAX_STRING_LENGTH : Float;
	};
}