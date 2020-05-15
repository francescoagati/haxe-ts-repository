package react;
typedef DOMAttributes<T> = {
	@:optional
	var children : ReactNode;
	@:optional
	var dangerouslySetInnerHTML : {
		var __html : String;
	};
	@:optional
	var onCopy : (event:ClipboardEvent<T>) -> Void;
	@:optional
	var onCopyCapture : (event:ClipboardEvent<T>) -> Void;
	@:optional
	var onCut : (event:ClipboardEvent<T>) -> Void;
	@:optional
	var onCutCapture : (event:ClipboardEvent<T>) -> Void;
	@:optional
	var onPaste : (event:ClipboardEvent<T>) -> Void;
	@:optional
	var onPasteCapture : (event:ClipboardEvent<T>) -> Void;
	@:optional
	var onCompositionEnd : (event:CompositionEvent<T>) -> Void;
	@:optional
	var onCompositionEndCapture : (event:CompositionEvent<T>) -> Void;
	@:optional
	var onCompositionStart : (event:CompositionEvent<T>) -> Void;
	@:optional
	var onCompositionStartCapture : (event:CompositionEvent<T>) -> Void;
	@:optional
	var onCompositionUpdate : (event:CompositionEvent<T>) -> Void;
	@:optional
	var onCompositionUpdateCapture : (event:CompositionEvent<T>) -> Void;
	@:optional
	var onFocus : (event:FocusEvent<T>) -> Void;
	@:optional
	var onFocusCapture : (event:FocusEvent<T>) -> Void;
	@:optional
	var onBlur : (event:FocusEvent<T>) -> Void;
	@:optional
	var onBlurCapture : (event:FocusEvent<T>) -> Void;
	@:optional
	var onChange : (event:FormEvent<T>) -> Void;
	@:optional
	var onChangeCapture : (event:FormEvent<T>) -> Void;
	@:optional
	var onBeforeInput : (event:FormEvent<T>) -> Void;
	@:optional
	var onBeforeInputCapture : (event:FormEvent<T>) -> Void;
	@:optional
	var onInput : (event:FormEvent<T>) -> Void;
	@:optional
	var onInputCapture : (event:FormEvent<T>) -> Void;
	@:optional
	var onReset : (event:FormEvent<T>) -> Void;
	@:optional
	var onResetCapture : (event:FormEvent<T>) -> Void;
	@:optional
	var onSubmit : (event:FormEvent<T>) -> Void;
	@:optional
	var onSubmitCapture : (event:FormEvent<T>) -> Void;
	@:optional
	var onInvalid : (event:FormEvent<T>) -> Void;
	@:optional
	var onInvalidCapture : (event:FormEvent<T>) -> Void;
	@:optional
	var onLoad : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onError : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onErrorCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onKeyDown : (event:KeyboardEvent<T>) -> Void;
	@:optional
	var onKeyDownCapture : (event:KeyboardEvent<T>) -> Void;
	@:optional
	var onKeyPress : (event:KeyboardEvent<T>) -> Void;
	@:optional
	var onKeyPressCapture : (event:KeyboardEvent<T>) -> Void;
	@:optional
	var onKeyUp : (event:KeyboardEvent<T>) -> Void;
	@:optional
	var onKeyUpCapture : (event:KeyboardEvent<T>) -> Void;
	@:optional
	var onAbort : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onAbortCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onCanPlay : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onCanPlayCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onCanPlayThrough : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onCanPlayThroughCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onDurationChange : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onDurationChangeCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onEmptied : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onEmptiedCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onEncrypted : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onEncryptedCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onEnded : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onEndedCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadedData : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadedDataCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadedMetadata : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadedMetadataCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadStart : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onLoadStartCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onPause : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onPauseCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onPlay : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onPlayCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onPlaying : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onPlayingCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onProgress : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onProgressCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onRateChange : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onRateChangeCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSeeked : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSeekedCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSeeking : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSeekingCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onStalled : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onStalledCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSuspend : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSuspendCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onTimeUpdate : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onTimeUpdateCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onVolumeChange : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onVolumeChangeCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onWaiting : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onWaitingCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onAuxClick : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onAuxClickCapture : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onClick : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onClickCapture : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onContextMenu : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onContextMenuCapture : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onDoubleClick : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onDoubleClickCapture : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onDrag : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragCapture : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragEnd : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragEndCapture : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragEnter : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragEnterCapture : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragExit : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragExitCapture : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragLeave : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragLeaveCapture : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragOver : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragOverCapture : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragStart : (event:DragEvent<T>) -> Void;
	@:optional
	var onDragStartCapture : (event:DragEvent<T>) -> Void;
	@:optional
	var onDrop : (event:DragEvent<T>) -> Void;
	@:optional
	var onDropCapture : (event:DragEvent<T>) -> Void;
	@:optional
	var onMouseDown : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseDownCapture : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseEnter : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseLeave : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseMove : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseMoveCapture : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseOut : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseOutCapture : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseOver : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseOverCapture : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseUp : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onMouseUpCapture : (event:MouseEvent<T, ts.html.MouseEvent>) -> Void;
	@:optional
	var onSelect : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onSelectCapture : (event:SyntheticEvent<T, ts.html.Event>) -> Void;
	@:optional
	var onTouchCancel : (event:TouchEvent<T>) -> Void;
	@:optional
	var onTouchCancelCapture : (event:TouchEvent<T>) -> Void;
	@:optional
	var onTouchEnd : (event:TouchEvent<T>) -> Void;
	@:optional
	var onTouchEndCapture : (event:TouchEvent<T>) -> Void;
	@:optional
	var onTouchMove : (event:TouchEvent<T>) -> Void;
	@:optional
	var onTouchMoveCapture : (event:TouchEvent<T>) -> Void;
	@:optional
	var onTouchStart : (event:TouchEvent<T>) -> Void;
	@:optional
	var onTouchStartCapture : (event:TouchEvent<T>) -> Void;
	@:optional
	var onPointerDown : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerDownCapture : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerMove : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerMoveCapture : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerUp : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerUpCapture : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerCancel : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerCancelCapture : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerEnter : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerEnterCapture : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerLeave : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerLeaveCapture : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerOver : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerOverCapture : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerOut : (event:PointerEvent<T>) -> Void;
	@:optional
	var onPointerOutCapture : (event:PointerEvent<T>) -> Void;
	@:optional
	var onGotPointerCapture : (event:PointerEvent<T>) -> Void;
	@:optional
	var onGotPointerCaptureCapture : (event:PointerEvent<T>) -> Void;
	@:optional
	var onLostPointerCapture : (event:PointerEvent<T>) -> Void;
	@:optional
	var onLostPointerCaptureCapture : (event:PointerEvent<T>) -> Void;
	@:optional
	var onScroll : (event:UIEvent<T, ts.html.UIEvent>) -> Void;
	@:optional
	var onScrollCapture : (event:UIEvent<T, ts.html.UIEvent>) -> Void;
	@:optional
	var onWheel : (event:WheelEvent<T>) -> Void;
	@:optional
	var onWheelCapture : (event:WheelEvent<T>) -> Void;
	@:optional
	var onAnimationStart : (event:AnimationEvent<T>) -> Void;
	@:optional
	var onAnimationStartCapture : (event:AnimationEvent<T>) -> Void;
	@:optional
	var onAnimationEnd : (event:AnimationEvent<T>) -> Void;
	@:optional
	var onAnimationEndCapture : (event:AnimationEvent<T>) -> Void;
	@:optional
	var onAnimationIteration : (event:AnimationEvent<T>) -> Void;
	@:optional
	var onAnimationIterationCapture : (event:AnimationEvent<T>) -> Void;
	@:optional
	var onTransitionEnd : (event:TransitionEvent<T>) -> Void;
	@:optional
	var onTransitionEndCapture : (event:TransitionEvent<T>) -> Void;
};