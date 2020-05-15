package react_bootstrap.breadcrumbitem;
typedef BreadcrumbItemProps = {
	@:optional
	var active : Bool;
	@:optional
	var href : String;
	@:optional
	var title : react_bootstrap.react.ReactNode;
	@:optional
	var target : String;
	@:optional
	var children : react_bootstrap.react.ReactNode;
	@:optional
	var key : ts.AnyOf2<String, Float>;
	@:optional
	var ref : ts.AnyOf3<String, (instance:Null<react_bootstrap.BreadcrumbItem>) -> Void, react_bootstrap.react.RefObject<react_bootstrap.BreadcrumbItem>>;
};