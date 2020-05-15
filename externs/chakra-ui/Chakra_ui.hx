@:jsRequire("chakra-ui") @valueModuleOnly extern class Chakra_ui {
	static var Absolute : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.AbsoluteProps>;
	/**
		Accordions allow users to expand and collapse sections of content.
		It composes `Box` component.
	**/
	static var Accordion : chakra_ui.react.FC<chakra_ui.AccordionProps>;
	/**
		Alerts are used to communicate a state that affects a system, feature or page
	**/
	static var Alert : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.AlertProps>;
	static var Avatar : chakra_ui.react.FC<chakra_ui.AvatarProps>;
	/**
		AvatarGroup is a wrapper to render a collection of evenly spaced avatars.
	**/
	static var AvatarGroup : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.AvatarGroupProps>;
	/**
		The Badge component is used for state, general text, and number labels.
		
		This component composes `Box`
	**/
	static var Badge : chakra_ui.react.FunctionComponent<chakra_ui.BadgeProps>;
	static var Box : Dynamic;
	static var Breadcrumb : chakra_ui.react.FunctionComponent<chakra_ui.BreadcrumbProps>;
	static var Button : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.ButtonProps>;
	static var ButtonGroup : chakra_ui.react.FC<chakra_ui.ButtonGroupProps>;
	static var Center : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.CenterProps>;
	static var Checkbox : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.CheckboxProps>;
	static var Collapse : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.CollapseProps>;
	static var Drawer : chakra_ui.react.FC<chakra_ui.IDrawer>;
	static var Editable : chakra_ui.react.FC<chakra_ui.EditableProps>;
	static var Embed : chakra_ui.react.FC<chakra_ui.EmbedProps>;
	static var Fixed : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.FixedProps>;
	static var Flex : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.FlexProps>;
	/**
		FormControl provides context such as `id`, `isInvalid`, `isRequired`, `isDisabled` to it's children.
		This context is used by:
		- `FormLabel`
		- `FormHelperText`,
		- `FormValidationText`,
		- `Input`
	**/
	static var FormControl : chakra_ui.react.FC<chakra_ui.FormControlProps>;
	static var Grid : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.GridProps>;
	static var Heading : chakra_ui.react.FC<chakra_ui.HeadingProps>;
	static var Icon : chakra_ui.react.FC<chakra_ui.IconProps>;
	static var IconButton : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.IconButtonProps>;
	static var Image : chakra_ui.react.FC<chakra_ui.ImageProps>;
	static var Input : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.InputProps>;
	static var InputAddon : chakra_ui.react.FC<chakra_ui.InputAddonProps>;
	static var ControlBox : Dynamic;
	static var KeyboardKey : chakra_ui.react.FC<chakra_ui.BoxProps>;
	static var Link : chakra_ui.react.FunctionComponent<chakra_ui.LinkProps>;
	static var List : chakra_ui.react.FC<chakra_ui.ListProps>;
	static var Menu : chakra_ui.react.FC<chakra_ui.MenuProps>;
	static var Modal : chakra_ui.react.FC<chakra_ui.ModalProps>;
	static var NumberInput : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.NumberInputProps>;
	static var Popover : chakra_ui.react.FC<chakra_ui.PopoverProps>;
	static var Progress : chakra_ui.react.FC<chakra_ui.ProgressProps>;
	/**
		PseudoBox is an interactive wrapper that composes `Box`
		and converts common CSS pseudo-selectors to props for ease of styling.
		
		For example, to style `:hover` use `_hover`
	**/
	static var PseudoBox : Dynamic;
	static var Radio : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.RadioProps>;
	static var RadioGroup : chakra_ui.react.FC<chakra_ui.RadioButtonGroupProps_>;
	static var RadioButtonGroup : chakra_ui.react.FC<chakra_ui.RadioButtonGroupProps>;
	static var Select : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.SelectProps>;
	static var Slider : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.SliderProps>;
	static var Switch : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.SwitchProps>;
	static var Tabs : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.TabsProps>;
	static var Tag : chakra_ui.react.FC<chakra_ui.TagProps>;
	static var Text : chakra_ui.react.FC<chakra_ui.BoxProps>;
	static var Textarea : chakra_ui.react.ForwardRefExoticComponent<chakra_ui.InputProps>;
	static var Toast : chakra_ui.react.FC<chakra_ui.IToast>;
	static var Tooltip : chakra_ui.react.FC<chakra_ui.TooltipProps>;
	/**
		`useClipboard` is a custom hook to handle copying content to clipboard
	**/
	static function useClipboard<T>(value:T):chakra_ui.IClipboard<T>;
	/**
		useDisclosure is a custom hook to help handle common `open`, `close`, or `toggle` scenarios
	**/
	static function useDisclosure(?defaultIsOpen:String):chakra_ui.IDisclosure;
	static function usePrevious<T>(value:T):T;
	static var StatLabel : chakra_ui.react.FC<chakra_ui.BoxProps>;
	static var StatHelpText : chakra_ui.react.FC<chakra_ui.BoxProps>;
	static var StatNumber : chakra_ui.react.FC<chakra_ui.BoxProps>;
	static var StatArrow : chakra_ui.react.FC<chakra_ui.IconProps>;
	static var Stat : chakra_ui.react.FC<chakra_ui.BoxProps>;
	static var StatGroup : chakra_ui.react.FC<chakra_ui.FlexProps>;
}