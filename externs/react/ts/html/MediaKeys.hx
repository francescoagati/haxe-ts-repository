package ts.html;
/**
	This EncryptedMediaExtensions API interface the represents a set of keys that an associated HTMLMediaElement can use for decryption of media data during playback.
**/
@:native("MediaKeys") extern class MediaKeys {
	function new();
	function createSession(?sessionType:String):MediaKeySession;
	function setServerCertificate(serverCertificate:BufferSource):ts.lib.Promise<Bool>;
	static var prototype : MediaKeys;
}