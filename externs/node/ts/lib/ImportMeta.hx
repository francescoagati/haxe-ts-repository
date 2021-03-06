package ts.lib;
/**
	The type of `import.meta`.
	
	If you need to declare that a given property exists on `import.meta`,
	this type may be augmented via interface merging.
**/
typedef ImportMeta = {
	var url : String;
};