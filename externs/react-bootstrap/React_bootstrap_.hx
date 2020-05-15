@:jsRequire("react-bootstrap") @valueModuleOnly extern class React_bootstrap_ {
	static function prefix(props:{ @:optional var bsClass : Dynamic; }, ?variant:String):String;
	static function bsClass(defaultClass:Dynamic, Component:Dynamic):Dynamic;
	static function bsStyles(styles:Dynamic, defaultStyle:Dynamic, Component:Dynamic):Dynamic;
	static function bsSizes(sizes:Dynamic, defaultSize:Dynamic, Component:Dynamic):Dynamic;
	static function getClassSet(props:Dynamic):Dynamic;
	static function getBsProps(props:Dynamic):react_bootstrap.BSProps;
	static function isBsProp(propName:String):Bool;
	static function splitBsProps(props:Dynamic):ts.Tuple2<react_bootstrap.BSProps, Dynamic>;
	static function splitBsPropsAndOmit(props:Dynamic, omittedPropNames:Dynamic):ts.Tuple2<react_bootstrap.BSProps, Dynamic>;
	static function addStyle(Component:Dynamic, styleVariant:haxe.extern.Rest<Dynamic>):Dynamic;
}