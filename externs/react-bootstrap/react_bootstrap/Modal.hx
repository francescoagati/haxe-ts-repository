package react_bootstrap;
@:jsRequire("react-bootstrap", "Modal") extern class Modal extends react_bootstrap.react.Component<react_bootstrap.modal.ModalProps, { }, Dynamic> {
	static var Body : {
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
	static var Header : {
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
	static var Title : {
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
	static var Footer : {
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
	static var Dialog : {
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