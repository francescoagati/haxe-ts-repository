package react_bootstrap;
@:jsRequire("react-bootstrap", "InputGroup") extern class InputGroup extends react_bootstrap.react.Component<react_bootstrap.inputgroup.InputGroupProps, { }, Dynamic> {
	public static var Addon : {
		/**
			If set, `this.context` will be set at runtime to the current value of the given Context.
			
			Usage:
			
			```ts
			type MyContext = number
			const Ctx = React.createContext<MyContext>(0)
			
			class Foo extends React.Component {
			   static contextType = Ctx
			   context!: React.ContextType<typeof Ctx>
			   render () {
			     return <>My context's value: {this.context}</>;
			   }
			}
			```
		**/
		@:optional
		var contextType : react_bootstrap.react.Context<Dynamic>;
	};
	public static var Button : {
		/**
			If set, `this.context` will be set at runtime to the current value of the given Context.
			
			Usage:
			
			```ts
			type MyContext = number
			const Ctx = React.createContext<MyContext>(0)
			
			class Foo extends React.Component {
			   static contextType = Ctx
			   context!: React.ContextType<typeof Ctx>
			   render () {
			     return <>My context's value: {this.context}</>;
			   }
			}
			```
		**/
		@:optional
		var contextType : react_bootstrap.react.Context<Dynamic>;
	};
}