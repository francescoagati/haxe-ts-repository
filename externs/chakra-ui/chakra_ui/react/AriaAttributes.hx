package chakra_ui.react;
typedef AriaAttributes = {
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
};