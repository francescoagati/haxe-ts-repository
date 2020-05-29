package node.fs;

typedef RmDirOptions = {
	/**
		If `true`, perform a recursive directory removal. In
		recursive mode, errors are not reported if `path` does not exist, and
		operations are retried on failure.
	**/
	@:optional
	var recursive : Bool;
};