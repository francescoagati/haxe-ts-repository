package node.fs;
typedef IStats = {
	function isFile():Bool;
	function isDirectory():Bool;
	function isBlockDevice():Bool;
	function isCharacterDevice():Bool;
	function isSymbolicLink():Bool;
	function isFIFO():Bool;
	function isSocket():Bool;
	var dev : Float;
	var ino : Float;
	var mode : Float;
	var nlink : Float;
	var uid : Float;
	var gid : Float;
	var rdev : Float;
	var size : Float;
	var blksize : Float;
	var blocks : Float;
	var atimeMs : Float;
	var mtimeMs : Float;
	var ctimeMs : Float;
	var birthtimeMs : Float;
	var atime : ts.lib.Date_;
	var mtime : ts.lib.Date_;
	var ctime : ts.lib.Date_;
	var birthtime : ts.lib.Date_;
};