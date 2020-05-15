package chakra_ui;
typedef MenuProps = ts.AnyOf2<chakra_ui.IMenu & {
	var children : chakra_ui.react.ReactNode;
}, chakra_ui.IMenu & {
	var children : (props:chakra_ui.IRenderProps) -> chakra_ui.react.ReactNode;
}>;