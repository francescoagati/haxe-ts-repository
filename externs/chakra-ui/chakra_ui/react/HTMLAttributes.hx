package chakra_ui.react;
typedef HTMLAttributes<T> = {
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
	var id : String;
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
	var title : String;
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
	@:optional
	var color : String;
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
	var children : chakra_ui.react.ReactNode;
	@:optional
	var dangerouslySetInnerHTML : {
		var __html : String;
	};
	@:optional
	var onCopy : (event:chakra_ui.react.ClipboardEvent<T>) -> Void;
	@:optional
	var onCopyCapture : (event:chakra_ui.react.ClipboardEvent<T>) -> Void;
	@:optional
	var onCut : (event:chakra_ui.react.ClipboardEvent<T>) -> Void;
	@:optional
	var onCutCapture : (event:chakra_ui.react.ClipboardEvent<T>) -> Void;
	@:optional
	var onPaste : (event:chakra_ui.react.ClipboardEvent<T>) -> Void;
	@:optional
	var onPasteCapture : (event:chakra_ui.react.ClipboardEvent<T>) -> Void;
	@:optional
	var onCompositionEnd : (event:chakra_ui.react.CompositionEvent<T>) -> Void;
	@:optional
	var onCompositionEndCapture : (event:chakra_ui.react.CompositionEvent<T>) -> Void;
	@:optional
	var onCompositionStart : (event:chakra_ui.react.CompositionEvent<T>) -> Void;
	@:optional
	var onCompositionStartCapture : (event:chakra_ui.react.CompositionEvent<T>) -> Void;
	@:optional
	var onCompositionUpdate : (event:chakra_ui.react.CompositionEvent<T>) -> Void;
	@:optional
	var onCompositionUpdateCapture : (event:chakra_ui.react.CompositionEvent<T>) -> Void;
	@:optional
	var onFocus : (event:chakra_ui.react.FocusEvent<T>) -> Void;
	@:optional
	var onFocusCapture : (event:chakra_ui.react.FocusEvent<T>) -> Void;
	@:optional
	var onBlur : (event:chakra_ui.react.FocusEvent<T>) -> Void;
	@:optional
	var onBlurCapture : (event:chakra_ui.react.FocusEvent<T>) -> Void;
	@:optional
	var onChange : (event:chakra_ui.react.FormEvent<T>) -> Void;
	@:optional
	var onChangeCapture : (event:chakra_ui.react.FormEvent<T>) -> Void;
	@:optional
	var onBeforeInput : (event:chakra_ui.react.FormEvent<T>) -> Void;
	@:optional
	var onBeforeInputCapture : (event:chakra_ui.react.FormEvent<T>) -> Void;
	@:optional
	var onInput : (event:chakra_ui.react.FormEvent<T>) -> Void;
	@:optional
	var onInputCapture : (event:chakra_ui.react.FormEvent<T>) -> Void;
	@:optional
	var onReset : (event:chakra_ui.react.FormEvent<T>) -> Void;
	@:optional
	var onResetCapture : (event:chakra_ui.react.FormEvent<T>) -> Void;
	@:optional
	var onSubmit : (event:chakra_ui.react.FormEvent<T>) -> Void;
	@:optional
	var onSubmitCapture : (event:chakra_ui.react.FormEvent<T>) -> Void;
	@:optional
	var onInvalid : (event:chakra_ui.react.FormEvent<T>) -> Void;
	@:optional
	var onInvalidCapture : (event:chakra_ui.react.FormEvent<T>) -> Void;
	@:optional
	var onLoad : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onError : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onErrorCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onKeyDown : (event:chakra_ui.react.KeyboardEvent<T>) -> Void;
	@:optional
	var onKeyDownCapture : (event:chakra_ui.react.KeyboardEvent<T>) -> Void;
	@:optional
	var onKeyPress : (event:chakra_ui.react.KeyboardEvent<T>) -> Void;
	@:optional
	var onKeyPressCapture : (event:chakra_ui.react.KeyboardEvent<T>) -> Void;
	@:optional
	var onKeyUp : (event:chakra_ui.react.KeyboardEvent<T>) -> Void;
	@:optional
	var onKeyUpCapture : (event:chakra_ui.react.KeyboardEvent<T>) -> Void;
	@:optional
	var onAbort : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onAbortCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onCanPlay : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onCanPlayCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onCanPlayThrough : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onCanPlayThroughCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onDurationChange : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onDurationChangeCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onEmptied : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onEmptiedCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onEncrypted : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onEncryptedCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onEnded : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onEndedCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadedData : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadedDataCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadedMetadata : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadedMetadataCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadStart : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadStartCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onPause : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onPauseCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onPlay : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onPlayCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onPlaying : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onPlayingCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onProgress : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onProgressCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onRateChange : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onRateChangeCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSeeked : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSeekedCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSeeking : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSeekingCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onStalled : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onStalledCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSuspend : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSuspendCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onTimeUpdate : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onTimeUpdateCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onVolumeChange : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onVolumeChangeCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onWaiting : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onWaitingCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onAuxClick : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onAuxClickCapture : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onClick : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onClickCapture : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onContextMenu : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onContextMenuCapture : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onDoubleClick : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onDoubleClickCapture : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onDrag : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragCapture : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragEnd : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragEndCapture : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragEnter : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragEnterCapture : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragExit : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragExitCapture : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragLeave : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragLeaveCapture : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragOver : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragOverCapture : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragStart : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDragStartCapture : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDrop : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onDropCapture : (event:chakra_ui.react.DragEvent<T>) -> Void;
	@:optional
	var onMouseDown : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseDownCapture : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseEnter : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseLeave : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseMove : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseMoveCapture : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseOut : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseOutCapture : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseOver : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseOverCapture : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseUp : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseUpCapture : (event:chakra_ui.react.MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onSelect : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSelectCapture : (event:chakra_ui.react.SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onTouchCancel : (event:chakra_ui.react.TouchEvent<T>) -> Void;
	@:optional
	var onTouchCancelCapture : (event:chakra_ui.react.TouchEvent<T>) -> Void;
	@:optional
	var onTouchEnd : (event:chakra_ui.react.TouchEvent<T>) -> Void;
	@:optional
	var onTouchEndCapture : (event:chakra_ui.react.TouchEvent<T>) -> Void;
	@:optional
	var onTouchMove : (event:chakra_ui.react.TouchEvent<T>) -> Void;
	@:optional
	var onTouchMoveCapture : (event:chakra_ui.react.TouchEvent<T>) -> Void;
	@:optional
	var onTouchStart : (event:chakra_ui.react.TouchEvent<T>) -> Void;
	@:optional
	var onTouchStartCapture : (event:chakra_ui.react.TouchEvent<T>) -> Void;
	@:optional
	var onPointerDown : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerDownCapture : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerMove : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerMoveCapture : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerUp : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerUpCapture : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerCancel : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerCancelCapture : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerEnter : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerEnterCapture : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerLeave : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerLeaveCapture : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerOver : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerOverCapture : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerOut : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onPointerOutCapture : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onGotPointerCapture : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onGotPointerCaptureCapture : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onLostPointerCapture : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onLostPointerCaptureCapture : (event:chakra_ui.react.PointerEvent<T>) -> Void;
	@:optional
	var onScroll : (event:chakra_ui.react.UIEvent<T, ts.html.UIEvent>) -> Void;
	@:optional
	var onScrollCapture : (event:chakra_ui.react.UIEvent<T, ts.html.UIEvent>) -> Void;
	@:optional
	var onWheel : (event:chakra_ui.react.WheelEvent<T>) -> Void;
	@:optional
	var onWheelCapture : (event:chakra_ui.react.WheelEvent<T>) -> Void;
	@:optional
	var onAnimationStart : (event:chakra_ui.react.AnimationEvent<T>) -> Void;
	@:optional
	var onAnimationStartCapture : (event:chakra_ui.react.AnimationEvent<T>) -> Void;
	@:optional
	var onAnimationEnd : (event:chakra_ui.react.AnimationEvent<T>) -> Void;
	@:optional
	var onAnimationEndCapture : (event:chakra_ui.react.AnimationEvent<T>) -> Void;
	@:optional
	var onAnimationIteration : (event:chakra_ui.react.AnimationEvent<T>) -> Void;
	@:optional
	var onAnimationIterationCapture : (event:chakra_ui.react.AnimationEvent<T>) -> Void;
	@:optional
	var onTransitionEnd : (event:chakra_ui.react.TransitionEvent<T>) -> Void;
	@:optional
	var onTransitionEndCapture : (event:chakra_ui.react.TransitionEvent<T>) -> Void;
};