package global;
typedef HTMLWebViewElement = {
	var accessKey : String;
	final accessKeyLabel : String;
	var autocapitalize : String;
	var dir : String;
	var draggable : Bool;
	var hidden : Bool;
	var innerText : String;
	var lang : String;
	final offsetHeight : Float;
	final offsetLeft : Float;
	final offsetParent : Null<ts.html.Element>;
	final offsetTop : Float;
	final offsetWidth : Float;
	var spellcheck : Bool;
	var title : String;
	var translate : Bool;
	function click():Void;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	@:overload(function(type:String, listener:ts.html.EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, ts.html.AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, ts.html.AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:ts.html.EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, ts.html.EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, ts.html.EventListenerOptions>):Void;
	final assignedSlot : Null<ts.html.HTMLSlotElement>;
	final attributes : ts.html.NamedNodeMap;
	/**
		Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
	**/
	final classList : ts.html.DOMTokenList;
	/**
		Returns the value of element's class content attribute. Can be set to change it.
	**/
	var className : String;
	final clientHeight : Float;
	final clientLeft : Float;
	final clientTop : Float;
	final clientWidth : Float;
	/**
		Returns the value of element's id content attribute. Can be set to change it.
	**/
	var id : String;
	/**
		Returns the local name.
	**/
	final localName : String;
	/**
		Returns the namespace.
	**/
	final namespaceURI : Null<String>;
	var onfullscreenchange : Null<(ev:ts.html.Event) -> Dynamic>;
	var onfullscreenerror : Null<(ev:ts.html.Event) -> Dynamic>;
	var outerHTML : String;
	/**
		Returns the namespace prefix.
	**/
	final prefix : Null<String>;
	final scrollHeight : Float;
	var scrollLeft : Float;
	var scrollTop : Float;
	final scrollWidth : Float;
	/**
		Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
	**/
	final shadowRoot : Null<ts.html.ShadowRoot>;
	/**
		Returns the value of element's slot content attribute. Can be set to change it.
	**/
	var slot : String;
	/**
		Returns the HTML-uppercased qualified name.
	**/
	final tagName : String;
	/**
		Creates a shadow root for element and returns it.
	**/
	function attachShadow(init:ts.html.ShadowRootInit):ts.html.ShadowRoot;
	/**
		Returns the first (starting at element) inclusive ancestor that matches selectors, and null otherwise.
	**/
	@:overload(function<K>(selector:K):Null<Dynamic> { })
	@:overload(function<E>(selector:String):Null<E> { })
	function closest<K>(selector:K):Null<Dynamic>;
	/**
		Returns element's first attribute whose qualified name is qualifiedName, and null if there is no such attribute otherwise.
	**/
	function getAttribute(qualifiedName:String):Null<String>;
	/**
		Returns element's attribute whose namespace is namespace and local name is localName, and null if there is no such attribute otherwise.
	**/
	function getAttributeNS(namespace:Null<String>, localName:String):Null<String>;
	/**
		Returns the qualified names of all element's attributes. Can contain duplicates.
	**/
	function getAttributeNames():Array<String>;
	function getAttributeNode(name:String):Null<ts.html.Attr>;
	function getAttributeNodeNS(namespaceURI:String, localName:String):Null<ts.html.Attr>;
	function getBoundingClientRect():ts.html.DOMRect;
	function getClientRects():ts.html.DOMRectList;
	/**
		Returns a HTMLCollection of the elements in the object on which the method was invoked (a document or an element) that have all the classes given by classNames. The classNames argument is interpreted as a space-separated list of classes.
	**/
	function getElementsByClassName(classNames:String):ts.html.HTMLCollectionOf<ts.html.Element>;
	@:overload(function<K>(qualifiedName:K):ts.html.HTMLCollectionOf<Dynamic> { })
	@:overload(function(qualifiedName:String):ts.html.HTMLCollectionOf<ts.html.Element> { })
	function getElementsByTagName<K>(qualifiedName:K):ts.html.HTMLCollectionOf<Dynamic>;
	@:overload(function(namespaceURI:String, localName:String):ts.html.HTMLCollectionOf<ts.html.SVGElement> { })
	@:overload(function(namespaceURI:String, localName:String):ts.html.HTMLCollectionOf<ts.html.Element> { })
	function getElementsByTagNameNS(namespaceURI:String, localName:String):ts.html.HTMLCollectionOf<ts.html.HTMLElement>;
	/**
		Returns true if element has an attribute whose qualified name is qualifiedName, and false otherwise.
	**/
	function hasAttribute(qualifiedName:String):Bool;
	/**
		Returns true if element has an attribute whose namespace is namespace and local name is localName.
	**/
	function hasAttributeNS(namespace:Null<String>, localName:String):Bool;
	/**
		Returns true if element has attributes, and false otherwise.
	**/
	function hasAttributes():Bool;
	function hasPointerCapture(pointerId:Float):Bool;
	function insertAdjacentElement(position:ts.html.InsertPosition, insertedElement:ts.html.Element):Null<ts.html.Element>;
	function insertAdjacentHTML(where:ts.html.InsertPosition, html:String):Void;
	function insertAdjacentText(where:ts.html.InsertPosition, text:String):Void;
	/**
		Returns true if matching selectors against element's root yields element, and false otherwise.
	**/
	function matches(selectors:String):Bool;
	function msGetRegionContent():Dynamic;
	function releasePointerCapture(pointerId:Float):Void;
	/**
		Removes element's first attribute whose qualified name is qualifiedName.
	**/
	function removeAttribute(qualifiedName:String):Void;
	/**
		Removes element's attribute whose namespace is namespace and local name is localName.
	**/
	function removeAttributeNS(namespace:Null<String>, localName:String):Void;
	function removeAttributeNode(attr:ts.html.Attr):ts.html.Attr;
	/**
		Displays element fullscreen and resolves promise when done.
		
		When supplied, options's navigationUI member indicates whether showing navigation UI while in fullscreen is preferred or not. If set to "show", navigation simplicity is preferred over screen space, and if set to "hide", more screen space is preferred. User agents are always free to honor user preference over the application's. The default value "auto" indicates no application preference.
	**/
	function requestFullscreen(?options:ts.html.FullscreenOptions):ts.lib.Promise<Void>;
	function requestPointerLock():Void;
	@:overload(function(x:Float, y:Float):Void { })
	function scroll(?options:ts.html.ScrollToOptions):Void;
	@:overload(function(x:Float, y:Float):Void { })
	function scrollBy(?options:ts.html.ScrollToOptions):Void;
	function scrollIntoView(?arg:ts.AnyOf2<Bool, ts.html.ScrollIntoViewOptions>):Void;
	@:overload(function(x:Float, y:Float):Void { })
	function scrollTo(?options:ts.html.ScrollToOptions):Void;
	/**
		Sets the value of element's first attribute whose qualified name is qualifiedName to value.
	**/
	function setAttribute(qualifiedName:String, value:String):Void;
	/**
		Sets the value of element's attribute whose namespace is namespace and local name is localName to value.
	**/
	function setAttributeNS(namespace:Null<String>, qualifiedName:String, value:String):Void;
	function setAttributeNode(attr:ts.html.Attr):Null<ts.html.Attr>;
	function setAttributeNodeNS(attr:ts.html.Attr):Null<ts.html.Attr>;
	function setPointerCapture(pointerId:Float):Void;
	/**
		If force is not given, "toggles" qualifiedName, removing it if it is present and adding it if it is not present. If force is true, adds qualifiedName. If force is false, removes qualifiedName.
		
		Returns true if qualifiedName is now present, and false otherwise.
	**/
	function toggleAttribute(qualifiedName:String, ?force:Bool):Bool;
	function webkitMatchesSelector(selectors:String):Bool;
	/**
		Returns node's node document's document base URL.
	**/
	final baseURI : String;
	/**
		Returns the children.
	**/
	final childNodes : ts.html.NodeListOf<ts.html.ChildNode>;
	/**
		Returns the first child.
	**/
	final firstChild : Null<ts.html.ChildNode>;
	/**
		Returns true if node is connected and false otherwise.
	**/
	final isConnected : Bool;
	/**
		Returns the last child.
	**/
	final lastChild : Null<ts.html.ChildNode>;
	/**
		Returns the next sibling.
	**/
	final nextSibling : Null<ts.html.ChildNode>;
	/**
		Returns a string appropriate for the type of node.
	**/
	final nodeName : String;
	/**
		Returns the type of node.
	**/
	final nodeType : Float;
	var nodeValue : Null<String>;
	/**
		Returns the node document. Returns null for documents.
	**/
	final ownerDocument : Null<ts.html.Document>;
	/**
		Returns the parent element.
	**/
	final parentElement : Null<ts.html.HTMLElement>;
	/**
		Returns the parent.
	**/
	final parentNode : Null<ts.html.INode & ts.html.ParentNode>;
	/**
		Returns the previous sibling.
	**/
	final previousSibling : Null<ts.html.Node>;
	var textContent : Null<String>;
	function appendChild<T>(newChild:T):T;
	/**
		Returns a copy of node. If deep is true, the copy also includes the node's descendants.
	**/
	function cloneNode(?deep:Bool):ts.html.Node;
	/**
		Returns a bitmask indicating the position of other relative to node.
	**/
	function compareDocumentPosition(other:ts.html.Node):Float;
	/**
		Returns true if other is an inclusive descendant of node, and false otherwise.
	**/
	function contains(other:Null<ts.html.Node>):Bool;
	/**
		Returns node's root.
	**/
	function getRootNode(?options:ts.html.GetRootNodeOptions):ts.html.Node;
	/**
		Returns whether node has children.
	**/
	function hasChildNodes():Bool;
	function insertBefore<T>(newChild:T, refChild:Null<ts.html.Node>):T;
	function isDefaultNamespace(namespace:Null<String>):Bool;
	/**
		Returns whether node and otherNode have the same properties.
	**/
	function isEqualNode(otherNode:Null<ts.html.Node>):Bool;
	function isSameNode(otherNode:Null<ts.html.Node>):Bool;
	function lookupNamespaceURI(prefix:Null<String>):Null<String>;
	function lookupPrefix(namespace:Null<String>):Null<String>;
	/**
		Removes empty exclusive Text nodes and concatenates the data of remaining contiguous exclusive Text nodes into the first of their nodes.
	**/
	function normalize():Void;
	function removeChild<T>(oldChild:T):T;
	function replaceChild<T>(newChild:ts.html.Node, oldChild:T):T;
	final ATTRIBUTE_NODE : Float;
	/**
		node is a CDATASection node.
	**/
	final CDATA_SECTION_NODE : Float;
	/**
		node is a Comment node.
	**/
	final COMMENT_NODE : Float;
	/**
		node is a DocumentFragment node.
	**/
	final DOCUMENT_FRAGMENT_NODE : Float;
	/**
		node is a document.
	**/
	final DOCUMENT_NODE : Float;
	/**
		Set when other is a descendant of node.
	**/
	final DOCUMENT_POSITION_CONTAINED_BY : Float;
	/**
		Set when other is an ancestor of node.
	**/
	final DOCUMENT_POSITION_CONTAINS : Float;
	/**
		Set when node and other are not in the same tree.
	**/
	final DOCUMENT_POSITION_DISCONNECTED : Float;
	/**
		Set when other is following node.
	**/
	final DOCUMENT_POSITION_FOLLOWING : Float;
	final DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC : Float;
	/**
		Set when other is preceding node.
	**/
	final DOCUMENT_POSITION_PRECEDING : Float;
	/**
		node is a doctype.
	**/
	final DOCUMENT_TYPE_NODE : Float;
	/**
		node is an element.
	**/
	final ELEMENT_NODE : Float;
	final ENTITY_NODE : Float;
	final ENTITY_REFERENCE_NODE : Float;
	final NOTATION_NODE : Float;
	/**
		node is a ProcessingInstruction node.
	**/
	final PROCESSING_INSTRUCTION_NODE : Float;
	/**
		node is a Text node.
	**/
	final TEXT_NODE : Float;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:ts.html.Event):Bool;
	function animate(keyframes:Null<ts.AnyOf2<Array<ts.html.Keyframe>, ts.html.PropertyIndexedKeyframes>>, ?options:ts.AnyOf2<Float, ts.html.KeyframeAnimationOptions>):ts.html.Animation;
	function getAnimations():Array<ts.html.Animation>;
	/**
		Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function after(nodes:haxe.extern.Rest<ts.AnyOf2<String, ts.html.Node>>):Void;
	/**
		Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function before(nodes:haxe.extern.Rest<ts.AnyOf2<String, ts.html.Node>>):Void;
	/**
		Removes node.
	**/
	function remove():Void;
	/**
		Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function replaceWith(nodes:haxe.extern.Rest<ts.AnyOf2<String, ts.html.Node>>):Void;
	var innerHTML : String;
	/**
		Returns the first following sibling that is an element, and null otherwise.
	**/
	final nextElementSibling : Null<ts.html.Element>;
	/**
		Returns the first preceding sibling that is an element, and null otherwise.
	**/
	final previousElementSibling : Null<ts.html.Element>;
	final childElementCount : Float;
	/**
		Returns the child elements.
	**/
	final children : ts.html.HTMLCollection;
	/**
		Returns the first child that is an element, and null otherwise.
	**/
	final firstElementChild : Null<ts.html.Element>;
	/**
		Returns the last child that is an element, and null otherwise.
	**/
	final lastElementChild : Null<ts.html.Element>;
	/**
		Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function append(nodes:haxe.extern.Rest<ts.AnyOf2<String, ts.html.Node>>):Void;
	/**
		Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function prepend(nodes:haxe.extern.Rest<ts.AnyOf2<String, ts.html.Node>>):Void;
	/**
		Returns the first element that is a descendant of node that matches selectors.
	**/
	@:overload(function<K>(selectors:K):Null<Dynamic> { })
	@:overload(function<E>(selectors:String):Null<E> { })
	function querySelector<K>(selectors:K):Null<Dynamic>;
	/**
		Returns all element descendants of node that match selectors.
	**/
	@:overload(function<K>(selectors:K):ts.html.NodeListOf<Dynamic> { })
	@:overload(function<E>(selectors:String):ts.html.NodeListOf<E> { })
	function querySelectorAll<K>(selectors:K):ts.html.NodeListOf<Dynamic>;
	var oncopy : Null<(ev:ts.html.ClipboardEvent) -> Dynamic>;
	var oncut : Null<(ev:ts.html.ClipboardEvent) -> Dynamic>;
	var onpaste : Null<(ev:ts.html.ClipboardEvent) -> Dynamic>;
	final style : ts.html.CSSStyleDeclaration;
	var contentEditable : String;
	var inputMode : String;
	final isContentEditable : Bool;
	/**
		Fires when the user aborts the download.
	**/
	var onabort : Null<(ev:ts.html.UIEvent) -> Dynamic>;
	var onanimationcancel : Null<(ev:ts.html.AnimationEvent) -> Dynamic>;
	var onanimationend : Null<(ev:ts.html.AnimationEvent) -> Dynamic>;
	var onanimationiteration : Null<(ev:ts.html.AnimationEvent) -> Dynamic>;
	var onanimationstart : Null<(ev:ts.html.AnimationEvent) -> Dynamic>;
	var onauxclick : Null<(ev:ts.html.MouseEvent) -> Dynamic>;
	/**
		Fires when the object loses the input focus.
	**/
	var onblur : Null<(ev:ts.html.FocusEvent) -> Dynamic>;
	var oncancel : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Occurs when playback is possible, but would require further buffering.
	**/
	var oncanplay : Null<(ev:ts.html.Event) -> Dynamic>;
	var oncanplaythrough : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Fires when the contents of the object or selection have changed.
	**/
	var onchange : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Fires when the user clicks the left mouse button on the object
	**/
	var onclick : Null<(ev:ts.html.MouseEvent) -> Dynamic>;
	var onclose : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Fires when the user clicks the right mouse button in the client area, opening the context menu.
	**/
	var oncontextmenu : Null<(ev:ts.html.MouseEvent) -> Dynamic>;
	var oncuechange : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Fires when the user double-clicks the object.
	**/
	var ondblclick : Null<(ev:ts.html.MouseEvent) -> Dynamic>;
	/**
		Fires on the source object continuously during a drag operation.
	**/
	var ondrag : Null<(ev:ts.html.DragEvent) -> Dynamic>;
	/**
		Fires on the source object when the user releases the mouse at the close of a drag operation.
	**/
	var ondragend : Null<(ev:ts.html.DragEvent) -> Dynamic>;
	/**
		Fires on the target element when the user drags the object to a valid drop target.
	**/
	var ondragenter : Null<(ev:ts.html.DragEvent) -> Dynamic>;
	var ondragexit : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Fires on the target object when the user moves the mouse out of a valid drop target during a drag operation.
	**/
	var ondragleave : Null<(ev:ts.html.DragEvent) -> Dynamic>;
	/**
		Fires on the target element continuously while the user drags the object over a valid drop target.
	**/
	var ondragover : Null<(ev:ts.html.DragEvent) -> Dynamic>;
	/**
		Fires on the source object when the user starts to drag a text selection or selected object.
	**/
	var ondragstart : Null<(ev:ts.html.DragEvent) -> Dynamic>;
	var ondrop : Null<(ev:ts.html.DragEvent) -> Dynamic>;
	/**
		Occurs when the duration attribute is updated.
	**/
	var ondurationchange : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Occurs when the media element is reset to its initial state.
	**/
	var onemptied : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Occurs when the end of playback is reached.
	**/
	var onended : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Fires when an error occurs during object loading.
	**/
	var onerror : ts.html.OnErrorEventHandler;
	/**
		Fires when the object receives focus.
	**/
	var onfocus : Null<(ev:ts.html.FocusEvent) -> Dynamic>;
	var ongotpointercapture : Null<(ev:ts.html.PointerEvent) -> Dynamic>;
	var oninput : Null<(ev:ts.html.Event) -> Dynamic>;
	var oninvalid : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Fires when the user presses a key.
	**/
	var onkeydown : Null<(ev:ts.html.KeyboardEvent) -> Dynamic>;
	/**
		Fires when the user presses an alphanumeric key.
	**/
	var onkeypress : Null<(ev:ts.html.KeyboardEvent) -> Dynamic>;
	/**
		Fires when the user releases a key.
	**/
	var onkeyup : Null<(ev:ts.html.KeyboardEvent) -> Dynamic>;
	/**
		Fires immediately after the browser loads the object.
	**/
	var onload : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Occurs when media data is loaded at the current playback position.
	**/
	var onloadeddata : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Occurs when the duration and dimensions of the media have been determined.
	**/
	var onloadedmetadata : Null<(ev:ts.html.Event) -> Dynamic>;
	var onloadend : Null<(ev:ts.html.ProgressEvent<ts.html.EventTarget>) -> Dynamic>;
	/**
		Occurs when Internet Explorer begins looking for media data.
	**/
	var onloadstart : Null<(ev:ts.html.Event) -> Dynamic>;
	var onlostpointercapture : Null<(ev:ts.html.PointerEvent) -> Dynamic>;
	/**
		Fires when the user clicks the object with either mouse button.
	**/
	var onmousedown : Null<(ev:ts.html.MouseEvent) -> Dynamic>;
	var onmouseenter : Null<(ev:ts.html.MouseEvent) -> Dynamic>;
	var onmouseleave : Null<(ev:ts.html.MouseEvent) -> Dynamic>;
	/**
		Fires when the user moves the mouse over the object.
	**/
	var onmousemove : Null<(ev:ts.html.MouseEvent) -> Dynamic>;
	/**
		Fires when the user moves the mouse pointer outside the boundaries of the object.
	**/
	var onmouseout : Null<(ev:ts.html.MouseEvent) -> Dynamic>;
	/**
		Fires when the user moves the mouse pointer into the object.
	**/
	var onmouseover : Null<(ev:ts.html.MouseEvent) -> Dynamic>;
	/**
		Fires when the user releases a mouse button while the mouse is over the object.
	**/
	var onmouseup : Null<(ev:ts.html.MouseEvent) -> Dynamic>;
	/**
		Occurs when playback is paused.
	**/
	var onpause : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Occurs when the play method is requested.
	**/
	var onplay : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Occurs when the audio or video has started playing.
	**/
	var onplaying : Null<(ev:ts.html.Event) -> Dynamic>;
	var onpointercancel : Null<(ev:ts.html.PointerEvent) -> Dynamic>;
	var onpointerdown : Null<(ev:ts.html.PointerEvent) -> Dynamic>;
	var onpointerenter : Null<(ev:ts.html.PointerEvent) -> Dynamic>;
	var onpointerleave : Null<(ev:ts.html.PointerEvent) -> Dynamic>;
	var onpointermove : Null<(ev:ts.html.PointerEvent) -> Dynamic>;
	var onpointerout : Null<(ev:ts.html.PointerEvent) -> Dynamic>;
	var onpointerover : Null<(ev:ts.html.PointerEvent) -> Dynamic>;
	var onpointerup : Null<(ev:ts.html.PointerEvent) -> Dynamic>;
	/**
		Occurs to indicate progress while downloading media data.
	**/
	var onprogress : Null<(ev:ts.html.ProgressEvent<ts.html.EventTarget>) -> Dynamic>;
	/**
		Occurs when the playback rate is increased or decreased.
	**/
	var onratechange : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Fires when the user resets a form.
	**/
	var onreset : Null<(ev:ts.html.Event) -> Dynamic>;
	var onresize : Null<(ev:ts.html.UIEvent) -> Dynamic>;
	/**
		Fires when the user repositions the scroll box in the scroll bar on the object.
	**/
	var onscroll : Null<(ev:ts.html.Event) -> Dynamic>;
	var onsecuritypolicyviolation : Null<(ev:ts.html.SecurityPolicyViolationEvent) -> Dynamic>;
	/**
		Occurs when the seek operation ends.
	**/
	var onseeked : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Occurs when the current playback position is moved.
	**/
	var onseeking : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Fires when the current selection changes.
	**/
	var onselect : Null<(ev:ts.html.Event) -> Dynamic>;
	var onselectionchange : Null<(ev:ts.html.Event) -> Dynamic>;
	var onselectstart : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Occurs when the download has stopped.
	**/
	var onstalled : Null<(ev:ts.html.Event) -> Dynamic>;
	var onsubmit : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Occurs if the load operation has been intentionally halted.
	**/
	var onsuspend : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Occurs to indicate the current playback position.
	**/
	var ontimeupdate : Null<(ev:ts.html.Event) -> Dynamic>;
	var ontoggle : Null<(ev:ts.html.Event) -> Dynamic>;
	var ontouchcancel : Null<(ev:ts.html.TouchEvent) -> Dynamic>;
	var ontouchend : Null<(ev:ts.html.TouchEvent) -> Dynamic>;
	var ontouchmove : Null<(ev:ts.html.TouchEvent) -> Dynamic>;
	var ontouchstart : Null<(ev:ts.html.TouchEvent) -> Dynamic>;
	var ontransitioncancel : Null<(ev:ts.html.TransitionEvent) -> Dynamic>;
	var ontransitionend : Null<(ev:ts.html.TransitionEvent) -> Dynamic>;
	var ontransitionrun : Null<(ev:ts.html.TransitionEvent) -> Dynamic>;
	var ontransitionstart : Null<(ev:ts.html.TransitionEvent) -> Dynamic>;
	/**
		Occurs when the volume is changed, or playback is muted or unmuted.
	**/
	var onvolumechange : Null<(ev:ts.html.Event) -> Dynamic>;
	/**
		Occurs when playback stops because the next frame of a video resource is not available.
	**/
	var onwaiting : Null<(ev:ts.html.Event) -> Dynamic>;
	var onwheel : Null<(ev:ts.html.WheelEvent) -> Dynamic>;
	final dataset : ts.html.DOMStringMap;
	@:optional
	var nonce : String;
	var tabIndex : Float;
	function blur():Void;
	function focus(?options:ts.html.FocusOptions):Void;
};