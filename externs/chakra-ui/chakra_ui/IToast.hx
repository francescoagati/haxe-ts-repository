package chakra_ui;
typedef IToast = {
	/**
		The title of the toast.
	**/
	@:optional
	var title : String;
	/**
		If `true` adds a close button to the toast.
	**/
	@:optional
	var isClosable : Bool;
	/**
		Callback function to close the toast.
	**/
	@:optional
	var onClose : () -> Void;
	/**
		The description of the toast
	**/
	@:optional
	var description : String;
	/**
		The id of the alert
	**/
	@:optional
	var id : String;
	/**
		The status of the alert
	**/
	@:optional
	var status : String;
	/**
		The variant of the alert style to use.
	**/
	@:optional
	var variant : String;
	/**
		Identifies the currently active element when DOM focus is on a composite widget, textbox, group, or application.
	**/
	@:native("aria-activedescendant")
	@:optional
	var aria_activedescendant : String;
	/**
		Indicates whether assistive technologies will present all, or only parts of, the changed region based on the change notifications defined by the aria-relevant attribute.
	**/
	@:native("aria-atomic")
	@:optional
	var aria_atomic : ts.AnyOf2<Bool, String>;
	/**
		Indicates whether inputting text could trigger display of one or more predictions of the user's intended value for an input and specifies how predictions would be
		presented if they are made.
	**/
	@:native("aria-autocomplete")
	@:optional
	var aria_autocomplete : String;
	/**
		Indicates an element is being modified and that assistive technologies MAY want to wait until the modifications are complete before exposing them to the user.
	**/
	@:native("aria-busy")
	@:optional
	var aria_busy : ts.AnyOf2<Bool, String>;
	/**
		Indicates the current "checked" state of checkboxes, radio buttons, and other widgets.
	**/
	@:native("aria-checked")
	@:optional
	var aria_checked : ts.AnyOf2<Bool, String>;
	/**
		Defines the total number of columns in a table, grid, or treegrid.
	**/
	@:native("aria-colcount")
	@:optional
	var aria_colcount : Float;
	/**
		Defines an element's column index or position with respect to the total number of columns within a table, grid, or treegrid.
	**/
	@:native("aria-colindex")
	@:optional
	var aria_colindex : Float;
	/**
		Defines the number of columns spanned by a cell or gridcell within a table, grid, or treegrid.
	**/
	@:native("aria-colspan")
	@:optional
	var aria_colspan : Float;
	/**
		Identifies the element (or elements) whose contents or presence are controlled by the current element.
	**/
	@:native("aria-controls")
	@:optional
	var aria_controls : String;
	/**
		Indicates the element that represents the current item within a container or set of related elements.
	**/
	@:native("aria-current")
	@:optional
	var aria_current : ts.AnyOf2<Bool, String>;
	/**
		Identifies the element (or elements) that describes the object.
	**/
	@:native("aria-describedby")
	@:optional
	var aria_describedby : String;
	/**
		Identifies the element that provides a detailed, extended description for the object.
	**/
	@:native("aria-details")
	@:optional
	var aria_details : String;
	/**
		Indicates that the element is perceivable but disabled, so it is not editable or otherwise operable.
	**/
	@:native("aria-disabled")
	@:optional
	var aria_disabled : ts.AnyOf2<Bool, String>;
	/**
		Indicates what functions can be performed when a dragged object is released on the drop target.
	**/
	@:native("aria-dropeffect")
	@:optional
	var aria_dropeffect : String;
	/**
		Identifies the element that provides an error message for the object.
	**/
	@:native("aria-errormessage")
	@:optional
	var aria_errormessage : String;
	/**
		Indicates whether the element, or another grouping element it controls, is currently expanded or collapsed.
	**/
	@:native("aria-expanded")
	@:optional
	var aria_expanded : ts.AnyOf2<Bool, String>;
	/**
		Identifies the next element (or elements) in an alternate reading order of content which, at the user's discretion,
		allows assistive technology to override the general default of reading in document source order.
	**/
	@:native("aria-flowto")
	@:optional
	var aria_flowto : String;
	/**
		Indicates an element's "grabbed" state in a drag-and-drop operation.
	**/
	@:native("aria-grabbed")
	@:optional
	var aria_grabbed : ts.AnyOf2<Bool, String>;
	/**
		Indicates the availability and type of interactive popup element, such as menu or dialog, that can be triggered by an element.
	**/
	@:native("aria-haspopup")
	@:optional
	var aria_haspopup : ts.AnyOf2<Bool, String>;
	/**
		Indicates whether the element is exposed to an accessibility API.
	**/
	@:native("aria-hidden")
	@:optional
	var aria_hidden : ts.AnyOf2<Bool, String>;
	/**
		Indicates the entered value does not conform to the format expected by the application.
	**/
	@:native("aria-invalid")
	@:optional
	var aria_invalid : ts.AnyOf2<Bool, String>;
	/**
		Indicates keyboard shortcuts that an author has implemented to activate or give focus to an element.
	**/
	@:native("aria-keyshortcuts")
	@:optional
	var aria_keyshortcuts : String;
	/**
		Defines a string value that labels the current element.
	**/
	@:native("aria-label")
	@:optional
	var aria_label : String;
	/**
		Identifies the element (or elements) that labels the current element.
	**/
	@:native("aria-labelledby")
	@:optional
	var aria_labelledby : String;
	/**
		Defines the hierarchical level of an element within a structure.
	**/
	@:native("aria-level")
	@:optional
	var aria_level : Float;
	/**
		Indicates that an element will be updated, and describes the types of updates the user agents, assistive technologies, and user can expect from the live region.
	**/
	@:native("aria-live")
	@:optional
	var aria_live : String;
	/**
		Indicates whether an element is modal when displayed.
	**/
	@:native("aria-modal")
	@:optional
	var aria_modal : ts.AnyOf2<Bool, String>;
	/**
		Indicates whether a text box accepts multiple lines of input or only a single line.
	**/
	@:native("aria-multiline")
	@:optional
	var aria_multiline : ts.AnyOf2<Bool, String>;
	/**
		Indicates that the user may select more than one item from the current selectable descendants.
	**/
	@:native("aria-multiselectable")
	@:optional
	var aria_multiselectable : ts.AnyOf2<Bool, String>;
	/**
		Indicates whether the element's orientation is horizontal, vertical, or unknown/ambiguous.
	**/
	@:native("aria-orientation")
	@:optional
	var aria_orientation : String;
	/**
		Identifies an element (or elements) in order to define a visual, functional, or contextual parent/child relationship
		between DOM elements where the DOM hierarchy cannot be used to represent the relationship.
	**/
	@:native("aria-owns")
	@:optional
	var aria_owns : String;
	/**
		Defines a short hint (a word or short phrase) intended to aid the user with data entry when the control has no value.
		A hint could be a sample value or a brief description of the expected format.
	**/
	@:native("aria-placeholder")
	@:optional
	var aria_placeholder : String;
	/**
		Defines an element's number or position in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM.
	**/
	@:native("aria-posinset")
	@:optional
	var aria_posinset : Float;
	/**
		Indicates the current "pressed" state of toggle buttons.
	**/
	@:native("aria-pressed")
	@:optional
	var aria_pressed : ts.AnyOf2<Bool, String>;
	/**
		Indicates that the element is not editable, but is otherwise operable.
	**/
	@:native("aria-readonly")
	@:optional
	var aria_readonly : ts.AnyOf2<Bool, String>;
	/**
		Indicates what notifications the user agent will trigger when the accessibility tree within a live region is modified.
	**/
	@:native("aria-relevant")
	@:optional
	var aria_relevant : String;
	/**
		Indicates that user input is required on the element before a form may be submitted.
	**/
	@:native("aria-required")
	@:optional
	var aria_required : ts.AnyOf2<Bool, String>;
	/**
		Defines a human-readable, author-localized description for the role of an element.
	**/
	@:native("aria-roledescription")
	@:optional
	var aria_roledescription : String;
	/**
		Defines the total number of rows in a table, grid, or treegrid.
	**/
	@:native("aria-rowcount")
	@:optional
	var aria_rowcount : Float;
	/**
		Defines an element's row index or position with respect to the total number of rows within a table, grid, or treegrid.
	**/
	@:native("aria-rowindex")
	@:optional
	var aria_rowindex : Float;
	/**
		Defines the number of rows spanned by a cell or gridcell within a table, grid, or treegrid.
	**/
	@:native("aria-rowspan")
	@:optional
	var aria_rowspan : Float;
	/**
		Indicates the current "selected" state of various widgets.
	**/
	@:native("aria-selected")
	@:optional
	var aria_selected : ts.AnyOf2<Bool, String>;
	/**
		Defines the number of items in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM.
	**/
	@:native("aria-setsize")
	@:optional
	var aria_setsize : Float;
	/**
		Indicates if items in a table or grid are sorted in ascending or descending order.
	**/
	@:native("aria-sort")
	@:optional
	var aria_sort : String;
	/**
		Defines the maximum allowed value for a range widget.
	**/
	@:native("aria-valuemax")
	@:optional
	var aria_valuemax : Float;
	/**
		Defines the minimum allowed value for a range widget.
	**/
	@:native("aria-valuemin")
	@:optional
	var aria_valuemin : Float;
	/**
		Defines the current value for a range widget.
	**/
	@:native("aria-valuenow")
	@:optional
	var aria_valuenow : Float;
	/**
		Defines the human readable text alternative of aria-valuenow for a range widget.
	**/
	@:native("aria-valuetext")
	@:optional
	var aria_valuetext : String;
	@:optional
	var ref : ts.AnyOf2<(instance:Null<ts.html.HTMLElement>) -> Void, chakra_ui.react.RefObject<ts.html.HTMLElement>>;
	@:optional
	var key : ts.AnyOf2<String, Float>;
	@:optional
	var defaultChecked : Bool;
	@:optional
	var defaultValue : ts.AnyOf3<String, Float, Array<String>>;
	@:optional
	var suppressContentEditableWarning : Bool;
	@:optional
	var suppressHydrationWarning : Bool;
	@:optional
	var accessKey : String;
	@:optional
	var className : String;
	@:optional
	var contentEditable : ts.AnyOf2<Bool, String>;
	@:optional
	var contextMenu : String;
	@:optional
	var dir : String;
	@:optional
	var draggable : ts.AnyOf2<Bool, String>;
	@:optional
	var hidden : Bool;
	@:optional
	var lang : String;
	@:optional
	var placeholder : String;
	@:optional
	var slot : String;
	@:optional
	var spellCheck : ts.AnyOf2<Bool, String>;
	@:optional
	var style : chakra_ui.react.CSSProperties;
	@:optional
	var tabIndex : Float;
	@:optional
	var translate : String;
	@:optional
	var radioGroup : String;
	@:optional
	var role : String;
	@:optional
	var about : String;
	@:optional
	var datatype : String;
	@:optional
	var inlist : Dynamic;
	@:optional
	var prefix : String;
	@:optional
	var property : String;
	@:optional
	var resource : String;
	@:optional
	var typeof : String;
	@:optional
	var vocab : String;
	@:optional
	var autoCapitalize : String;
	@:optional
	var autoCorrect : String;
	@:optional
	var autoSave : String;
	/**
		The color utility parses a component's `color` and `bg` props and converts them into CSS declarations.
		By default the raw value of the prop is returned.
		
		Color palettes can be configured with the ThemeProvider to use keys as prop values, with support for dot notation.
		Array values are converted into responsive values.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/color)
	**/
	@:optional
	var color : ts.AnyOf2<String, Dynamic>;
	@:optional
	var itemProp : String;
	@:optional
	var itemScope : Bool;
	@:optional
	var itemType : String;
	@:optional
	var itemID : String;
	@:optional
	var itemRef : String;
	@:optional
	var results : Float;
	@:optional
	var security : String;
	@:optional
	var unselectable : String;
	/**
		Hints at the type of data that might be entered by the user while editing the element or its contents
	**/
	@:optional
	var inputMode : String;
	/**
		Specify that a standard HTML element should behave like a defined custom built-in element
	**/
	@:optional
	var is : String;
	@:optional
	var children : chakra_ui.react.ReactNode;
	@:optional
	var dangerouslySetInnerHTML : {
		var __html : String;
	};
	@:optional
	var onCopy : (event:chakra_ui.react.ClipboardEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onCopyCapture : (event:chakra_ui.react.ClipboardEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onCut : (event:chakra_ui.react.ClipboardEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onCutCapture : (event:chakra_ui.react.ClipboardEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPaste : (event:chakra_ui.react.ClipboardEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPasteCapture : (event:chakra_ui.react.ClipboardEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onCompositionEnd : (event:chakra_ui.react.CompositionEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onCompositionEndCapture : (event:chakra_ui.react.CompositionEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onCompositionStart : (event:chakra_ui.react.CompositionEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onCompositionStartCapture : (event:chakra_ui.react.CompositionEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onCompositionUpdate : (event:chakra_ui.react.CompositionEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onCompositionUpdateCapture : (event:chakra_ui.react.CompositionEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onFocus : (event:chakra_ui.react.FocusEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onFocusCapture : (event:chakra_ui.react.FocusEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onBlur : (event:chakra_ui.react.FocusEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onBlurCapture : (event:chakra_ui.react.FocusEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onChange : (event:chakra_ui.react.FormEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onChangeCapture : (event:chakra_ui.react.FormEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onBeforeInput : (event:chakra_ui.react.FormEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onBeforeInputCapture : (event:chakra_ui.react.FormEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onInput : (event:chakra_ui.react.FormEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onInputCapture : (event:chakra_ui.react.FormEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onReset : (event:chakra_ui.react.FormEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onResetCapture : (event:chakra_ui.react.FormEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onSubmit : (event:chakra_ui.react.FormEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onSubmitCapture : (event:chakra_ui.react.FormEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onInvalid : (event:chakra_ui.react.FormEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onInvalidCapture : (event:chakra_ui.react.FormEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onLoad : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onLoadCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onError : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onErrorCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onKeyDown : (event:chakra_ui.react.KeyboardEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onKeyDownCapture : (event:chakra_ui.react.KeyboardEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onKeyPress : (event:chakra_ui.react.KeyboardEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onKeyPressCapture : (event:chakra_ui.react.KeyboardEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onKeyUp : (event:chakra_ui.react.KeyboardEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onKeyUpCapture : (event:chakra_ui.react.KeyboardEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onAbort : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onAbortCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onCanPlay : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onCanPlayCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onCanPlayThrough : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onCanPlayThroughCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onDurationChange : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onDurationChangeCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onEmptied : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onEmptiedCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onEncrypted : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onEncryptedCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onEnded : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onEndedCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onLoadedData : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onLoadedDataCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onLoadedMetadata : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onLoadedMetadataCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onLoadStart : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onLoadStartCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onPause : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onPauseCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onPlay : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onPlayCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onPlaying : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onPlayingCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onProgress : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onProgressCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onRateChange : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onRateChangeCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onSeeked : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onSeekedCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onSeeking : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onSeekingCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onStalled : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onStalledCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onSuspend : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onSuspendCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onTimeUpdate : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onTimeUpdateCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onVolumeChange : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onVolumeChangeCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onWaiting : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onWaitingCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onAuxClick : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onAuxClickCapture : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onClick : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onClickCapture : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onContextMenu : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onContextMenuCapture : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onDoubleClick : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onDoubleClickCapture : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onDrag : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragCapture : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragEnd : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragEndCapture : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragEnter : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragEnterCapture : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragExit : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragExitCapture : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragLeave : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragLeaveCapture : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragOver : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragOverCapture : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragStart : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDragStartCapture : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDrop : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onDropCapture : (event:chakra_ui.react.DragEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onMouseDown : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseDownCapture : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseEnter : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseLeave : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseMove : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseMoveCapture : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseOut : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseOutCapture : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseOver : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseOverCapture : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseUp : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseUpCapture : (event:chakra_ui.react.MouseEvent<ts.html.HTMLDivElement, ts.html.MouseEvent>) -> Void;
	@:optional
	var onSelect : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onSelectCapture : (event:chakra_ui.react.SyntheticEvent<ts.html.HTMLDivElement, ts.html.Event>) -> Void;
	@:optional
	var onTouchCancel : (event:chakra_ui.react.TouchEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onTouchCancelCapture : (event:chakra_ui.react.TouchEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onTouchEnd : (event:chakra_ui.react.TouchEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onTouchEndCapture : (event:chakra_ui.react.TouchEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onTouchMove : (event:chakra_ui.react.TouchEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onTouchMoveCapture : (event:chakra_ui.react.TouchEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onTouchStart : (event:chakra_ui.react.TouchEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onTouchStartCapture : (event:chakra_ui.react.TouchEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerDown : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerDownCapture : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerMove : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerMoveCapture : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerUp : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerUpCapture : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerCancel : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerCancelCapture : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerEnter : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerEnterCapture : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerLeave : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerLeaveCapture : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerOver : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerOverCapture : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerOut : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onPointerOutCapture : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onGotPointerCapture : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onGotPointerCaptureCapture : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onLostPointerCapture : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onLostPointerCaptureCapture : (event:chakra_ui.react.PointerEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onScroll : (event:chakra_ui.react.UIEvent<ts.html.HTMLDivElement, ts.html.UIEvent>) -> Void;
	@:optional
	var onScrollCapture : (event:chakra_ui.react.UIEvent<ts.html.HTMLDivElement, ts.html.UIEvent>) -> Void;
	@:optional
	var onWheel : (event:chakra_ui.react.WheelEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onWheelCapture : (event:chakra_ui.react.WheelEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onAnimationStart : (event:chakra_ui.react.AnimationEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onAnimationStartCapture : (event:chakra_ui.react.AnimationEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onAnimationEnd : (event:chakra_ui.react.AnimationEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onAnimationEndCapture : (event:chakra_ui.react.AnimationEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onAnimationIteration : (event:chakra_ui.react.AnimationEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onAnimationIterationCapture : (event:chakra_ui.react.AnimationEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onTransitionEnd : (event:chakra_ui.react.TransitionEvent<ts.html.HTMLDivElement>) -> Void;
	@:optional
	var onTransitionEndCapture : (event:chakra_ui.react.TransitionEvent<ts.html.HTMLDivElement>) -> Void;
	/**
		The width utility parses a component's `width` prop and converts it into a CSS width declaration.
		
		- Numbers from 0-1 are converted to percentage widths.
		- Numbers greater than 1 are converted to pixel values.
		- String values are passed as raw CSS values.
		- And arrays are converted to responsive width styles.
	**/
	@:optional
	var width : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The height CSS property specifies the height of an element. By default, the property defines the height of the
		content area. If box-sizing is set to border-box, however, it instead determines the height of the border area.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/height)
	**/
	@:optional
	var height : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The min-width CSS property sets the minimum width of an element.
		It prevents the used value of the width property from becoming smaller than the value specified for min-width.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/min-width)
	**/
	@:optional
	var minWidth : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The min-height CSS property sets the minimum height of an element. It prevents the used value of the height
		property from becoming smaller than the value specified for min-height.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/display)
	**/
	@:optional
	var minHeight : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The max-width CSS property sets the maximum width of an element.
		It prevents the used value of the width property from becoming larger than the value specified by max-width.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/max-width)
	**/
	@:optional
	var maxWidth : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The max-height CSS property sets the maximum height of an element. It prevents the used value of the height
		property from becoming larger than the value specified for max-height.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/max-height)
	**/
	@:optional
	var maxHeight : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The display CSS property defines the display type of an element, which consists of the two basic qualities
		of how an element generates boxes — the outer display type defining how the box participates in flow layout,
		and the inner display type defining how the children of the box are laid out.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/display)
	**/
	@:optional
	var display : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The vertical-align CSS property specifies sets vertical alignment of an inline or table-cell box.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/vertical-align)
	**/
	@:optional
	var verticalAlign : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var size : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The color utility parses a component's `color` and `bg` props and converts them into CSS declarations.
		By default the raw value of the prop is returned.
		
		Color palettes can be configured with the ThemeProvider to use keys as prop values, with support for dot notation.
		Array values are converted into responsive values.
		
		[MDN Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/background-color)
	**/
	@:optional
	var bg : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var backgroundColor : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The opacity CSS property sets the transparency of an element or the degree to which content
		behind an element is visible.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/opacity)
	**/
	@:optional
	var opacity : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
	/**
		Margin on top, left, bottom and right
	**/
	@:optional
	var m : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on top, left, bottom and right
	**/
	@:optional
	var margin : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on top
	**/
	@:optional
	var mt : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on top
	**/
	@:optional
	var marginTop : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on right
	**/
	@:optional
	var mr : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on right
	**/
	@:optional
	var marginRight : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on bottom
	**/
	@:optional
	var mb : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on bottom
	**/
	@:optional
	var marginBottom : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on left
	**/
	@:optional
	var ml : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on left
	**/
	@:optional
	var marginLeft : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on left and right
	**/
	@:optional
	var mx : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on left and right
	**/
	@:optional
	var marginX : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on top and bottom
	**/
	@:optional
	var my : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Margin on top and bottom
	**/
	@:optional
	var marginY : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on top, left, bottom and right
	**/
	@:optional
	var p : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on top, left, bottom and right
	**/
	@:optional
	var padding : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on top
	**/
	@:optional
	var pt : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on top
	**/
	@:optional
	var paddingTop : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on right
	**/
	@:optional
	var pr : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on right
	**/
	@:optional
	var paddingRight : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on bottom
	**/
	@:optional
	var pb : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on bottom
	**/
	@:optional
	var paddingBottom : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on left
	**/
	@:optional
	var pl : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on left
	**/
	@:optional
	var paddingLeft : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on left and right
	**/
	@:optional
	var px : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on left and right
	**/
	@:optional
	var paddingX : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on top and bottom
	**/
	@:optional
	var py : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		Padding on top and bottom
	**/
	@:optional
	var paddingY : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border CSS property sets an element's border. It's a shorthand for border-width, border-style,
		and border-color.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border)
	**/
	@:optional
	var border : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var borderX : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var borderY : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border-width shorthand CSS property sets the width of all sides of an element's border.
		
		[MDN * reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-width)
	**/
	@:optional
	var borderWidth : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border-style shorthand CSS property sets the style of all sides of an element's border.
		
		[MDN * reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-style)
	**/
	@:optional
	var borderStyle : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The border-color shorthand CSS property sets the color of all sides of an element's border.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-color)
	**/
	@:optional
	var borderColor : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The border-radius CSS property rounds the corners of an element's outer border edge. You can set a single
		radius to make circular corners, or two radii to make elliptical corners.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius)
	**/
	@:optional
	var borderRadius : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border-top CSS property is a shorthand that sets the values of border-top-width, border-top-style,
		and border-top-color. These properties describe an element's top border.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top)
	**/
	@:optional
	var borderTop : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border-right CSS property is a shorthand that sets border-right-width, border-right-style,
		and border-right-color. These properties set an element's right border.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right)
	**/
	@:optional
	var borderRight : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border-bottom CSS property sets an element's bottom border. It's a shorthand for
		border-bottom-width, border-bottom-style and border-bottom-color.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom)
	**/
	@:optional
	var borderBottom : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The border-left CSS property is a shorthand that sets the values of border-left-width,
		border-left-style, and border-left-color. These properties describe an element's left border.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left)
	**/
	@:optional
	var borderLeft : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The background shorthand CSS property sets all background style properties at once,
		such as color, image, origin and size, repeat method, and others.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/background)
	**/
	@:optional
	var background : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The background-image CSS property sets one or more background images on an element.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/background-image)
	**/
	@:optional
	var backgroundImage : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The background-size CSS property sets the size of the element's background image. The
		image can be left to its natural size, stretched, or constrained to fit the available space.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/background-size)
	**/
	@:optional
	var backgroundSize : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The background-position CSS property sets the initial position for each background image. The
		position is relative to the position layer set by background-origin.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/background-position)
	**/
	@:optional
	var backgroundPosition : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The background-repeat CSS property sets how background images are repeated. A background
		image can be repeated along the horizontal and vertical axes, or not repeated at all.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/background-repeat)
	**/
	@:optional
	var backgroundRepeat : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The position CSS property specifies how an element is positioned in a document.
		The top, right, bottom, and left properties determine the final location of positioned elements.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/position)
	**/
	@:optional
	var position : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The z-index CSS property sets the z-order of a positioned element and its descendants or
		flex items. Overlapping elements with a larger z-index cover those with a smaller one.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index)
	**/
	@:optional
	var zIndex : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
	/**
		The top CSS property participates in specifying the vertical position of a
		positioned element. It has no effect on non-positioned elements.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/top)
	**/
	@:optional
	var top : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The right CSS property participates in specifying the horizontal position of a
		positioned element. It has no effect on non-positioned elements.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/right)
	**/
	@:optional
	var right : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The bottom CSS property participates in specifying the vertical position of a
		positioned element. It has no effect on non-positioned elements.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/top)
	**/
	@:optional
	var bottom : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The left CSS property participates in specifying the horizontal position
		of a positioned element. It has no effect on non-positioned elements.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/left)
	**/
	@:optional
	var left : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The CSS align-items property sets the align-self value on all direct children as a group. The align-self
		property sets the alignment of an item within its containing block.
		
		In Flexbox it controls the alignment of items on the Cross Axis, in Grid Layout it controls the alignment
		of items on the Block Axis within their grid area.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/align-items)
	**/
	@:optional
	var alignItems : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The CSS align-content property sets how the browser distributes space between and around content items
		along the cross-axis of a flexbox container, and the main-axis of a grid container.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/align-content)
	**/
	@:optional
	var alignContent : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The CSS justify-items property defines the default justify-self for all items of the box, giving them all
		a default way of justifying each box along the appropriate axis.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/justify-items)
	**/
	@:optional
	var justifyItems : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The CSS justify-content property defines how the browser distributes space between and around content items
		along the main-axis of a flex container, and the inline axis of a grid container.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content)
	**/
	@:optional
	var justifyContent : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The flex-wrap CSS property sets whether flex items are forced onto one line or can wrap onto multiple lines.
		If wrapping is allowed, it sets the direction that lines are stacked.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-wrap)
	**/
	@:optional
	var flexWrap : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The flex-direction CSS property specifies how flex items are placed in the flex container defining the main
		axis and the direction (normal or reversed).
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-direction)
	**/
	@:optional
	var flexDirection : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The flex CSS property specifies how a flex item will grow or shrink so as to fit the space available in
		its flex container. This is a shorthand property that sets flex-grow, flex-shrink, and flex-basis.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/flex)
	**/
	@:optional
	var flex : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var flexGrow : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
	@:optional
	var flexShrink : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
	@:optional
	var flexBasis : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The CSS justify-self property set the way a box is justified inside its alignment container along
		the appropriate axis.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/justify-self)
	**/
	@:optional
	var justifySelf : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The align-self CSS property aligns flex items of the current flex line overriding the align-items value.
		
		If any of the item's cross-axis margin is set to auto, then align-self is ignored. In Grid layout align-self
		aligns the item inside the grid area.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/align-self)
	**/
	@:optional
	var alignSelf : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The order CSS property sets the order to lay out an item in a flex or grid container. Items in a container
		are sorted by ascending order value and then by their source code order.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/order)
	**/
	@:optional
	var order : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
	/**
		The box-shadow CSS property adds shadow effects around an element's frame. You can set multiple effects separated
		by commas. A box shadow is described by X and Y offsets relative to the element, blur and spread radii and color.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/box-shadow)
	**/
	@:optional
	var boxShadow : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	/**
		The `text-shadow` CSS property adds shadows to text. It accepts a comma-separated list of shadows to be applied
		to the text and any of its `decorations`. Each shadow is described by some combination of X and Y offsets from
		the element, blur radius, and color.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/text-shadow)
	**/
	@:optional
	var textShadow : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var fontFamily : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The fontSize utility parses a component's `fontSize` prop and converts it into a CSS font-size declaration.
		
		- Numbers from 0-8 (or `theme.fontSizes.length`) are converted to values on the [font size scale](#default-theme).
		- Numbers greater than `theme.fontSizes.length` are converted to raw pixel values.
		- String values are passed as raw CSS values.
		- And array values are converted into responsive values.
	**/
	var fontSize : Dynamic;
	/**
		The font-weight CSS property specifies the weight (or boldness) of the font.
		
		The font weights available to you will depend on the font-family you are using. Some fonts are only available in normal and bold.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight)
	**/
	@:optional
	var fontWeight : ts.AnyOf4<Float, String, Array<Null<ts.AnyOf2<Float, String>>>, { }>;
	/**
		The line-height CSS property sets the amount of space used for lines, such as in text. On block-level elements,
		it specifies the minimum height of line boxes within the element.
		
		On non-replaced inline elements, it specifies the height that is used to calculate line box height.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/line-height)
	**/
	var lineHeight : Dynamic;
	/**
		The letter-spacing CSS property sets the spacing behavior between text characters.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/letter-spacing)
	**/
	var letterSpacing : Dynamic;
	/**
		The font-style CSS property specifies whether a font should be styled with a normal, italic,
		or oblique face from its font-family.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/font-style)
	**/
	@:optional
	var fontStyle : ts.AnyOf3<String, Array<Null<String>>, { }>;
	/**
		The text-align CSS property specifies the horizontal alignment of an inline or table-cell box.
		
		[MDN reference](https://developer.mozilla.org/en-US/docs/Web/CSS/text-align)
	**/
	@:optional
	var textAlign : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var rounded : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedTop : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedBottom : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedLeft : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedRight : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedTopRight : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedTopLeft : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedBottomRight : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var roundedBottomLeft : chakra_ui.BorderRadiusProps<ts.AnyOf2<String, Float>>;
	@:optional
	var borderBottomColor : chakra_ui.BorderColorProps;
	@:optional
	var borderTopColor : chakra_ui.BorderColorProps;
	@:optional
	var borderRightColor : chakra_ui.BorderColorProps;
	@:optional
	var borderLeftColor : chakra_ui.BorderColorProps;
	@:optional
	var textDecoration : Dynamic;
	@:optional
	var textTransform : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var overflowX : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var overflowY : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var appearance : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var transform : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var transformOrigin : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var whiteSpace : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var animation : ts.AnyOf4<String, Float, Array<Null<ts.AnyOf2<String, Float>>>, { }>;
	@:optional
	var userSelect : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var pointerEvents : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var boxSizing : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var cursor : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var resize : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var transition : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var objectFit : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var objectPosition : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var backgroundAttachment : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var bgAttachment : ts.AnyOf3<String, Array<Null<String>>, { }>;
	@:optional
	var fill : chakra_ui.ColorProps;
	@:optional
	var stroke : chakra_ui.ColorProps;
	var wordBreak : String;
	var as : chakra_ui.react.ElementType<Dynamic>;
};