package puppeteer;

typedef RevisionInfo = {
	/**
		The revision the info was created from
	**/
	var revision : String;
	/**
		Path to the extracted revision folder
	**/
	var folderPath : String;
	/**
		Path to the revision executable
	**/
	var executablePath : String;
	/**
		URL this revision can be downloaded from
	**/
	var url : String;
	/**
		whether the revision is locally available on disk
	**/
	var local : Bool;
	var product : Product;
};