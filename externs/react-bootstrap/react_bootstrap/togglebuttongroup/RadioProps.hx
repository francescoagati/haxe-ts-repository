package react_bootstrap.togglebuttongroup;
typedef RadioProps = {
	/**
		Required if `type` is set to "radio"
	**/
	var name : String;
	var type : String;
	@:optional
	function onChange(value:Dynamic):Void;
};