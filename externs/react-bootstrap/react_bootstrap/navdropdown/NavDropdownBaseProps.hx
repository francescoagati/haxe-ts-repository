package react_bootstrap.navdropdown;
typedef NavDropdownBaseProps = {
	@:optional
	var active : Bool;
	@:optional
	var noCaret : Bool;
	@:optional
	var eventKey : Dynamic;
	var title : react_bootstrap.react.ReactNode;
	@:optional
	var bsClass : String;
	@:optional
	var componentClass : ts.AnyOf3<String, react_bootstrap.react.ComponentClass<Dynamic, Dynamic>, react_bootstrap.react.FunctionComponent<Dynamic>>;
	@:optional
	var disabled : Bool;
	@:optional
	var dropup : Bool;
	var id : String;
	@:optional
	var onClose : ts.lib.Function;
	@:optional
	var onSelect : react_bootstrap.SelectCallback;
	@:optional
	var onToggle : (isOpen:Bool) -> Void;
	@:optional
	var open : Bool;
	@:optional
	var pullRight : Bool;
	@:optional
	var role : String;
};