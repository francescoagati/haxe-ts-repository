package chakra_ui.react;
typedef CSSProperties = {
	/**
		The CSS **`align-content`** property sets how the browser distributes space between and around content items along the cross-axis of a flexbox container, and the main-axis of a grid container.
		
		**Syntax**: `normal | <baseline-position> | <content-distribution> | <overflow-position>? <content-position>`
		
		**Initial value**: `normal`
		
		---
		
		_Supported in Flex Layout_
		
		|  Chrome  | Firefox |  Safari   |  Edge  |   IE   |
		| :------: | :-----: | :-------: | :----: | :----: |
		|  **29**  | **28**  |   **9**   | **12** | **11** |
		| 21 _-x-_ |         | 6.1 _-x-_ |        |        |
		
		---
		
		_Supported in Grid Layout_
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
		
		---
	**/
	@:optional
	var alignContent : String;
	/**
		The CSS **`align-items`** property sets the `align-self` value on all direct children as a group. The align-self property sets the alignment of an item within its containing block. In Flexbox it controls the alignment of items on the Cross Axis, in Grid Layout it controls the alignment of items on the Block Axis within their grid area.
		
		**Syntax**: `normal | stretch | <baseline-position> | [ <overflow-position>? <self-position> ]`
		
		**Initial value**: `normal`
		
		---
		
		_Supported in Flex Layout_
		
		|  Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :------: | :-----: | :-----: | :----: | :----: |
		|  **52**  | **20**  |  **9**  | **12** | **11** |
		| 21 _-x-_ |         | 7 _-x-_ |        |        |
		
		---
		
		_Supported in Grid Layout_
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
		
		---
	**/
	@:optional
	var alignItems : String;
	/**
		The **`align-self`** CSS property aligns flex items of the current flex line overriding the `align-items` value. If any of the item's cross-axis margin is set to `auto`, then `align-self` is ignored. In Grid layout `align-self` aligns the item inside the grid area.
		
		**Syntax**: `auto | normal | stretch | <baseline-position> | <overflow-position>? <self-position>`
		
		**Initial value**: `auto`
		
		---
		
		_Supported in Flex Layout_
		
		|  Chrome  | Firefox |  Safari   |  Edge  |   IE   |
		| :------: | :-----: | :-------: | :----: | :----: |
		|  **36**  | **20**  |   **9**   | **12** | **11** |
		| 21 _-x-_ |         | 6.1 _-x-_ |        |        |
		
		---
		
		_Supported in Grid Layout_
		
		| Chrome | Firefox |  Safari  |  Edge  |      IE      |
		| :----: | :-----: | :------: | :----: | :----------: |
		| **57** | **52**  | **10.1** | **16** | **10** _-x-_ |
		
		---
	**/
	@:optional
	var alignSelf : String;
	/**
		The **`animation-delay`** CSS property sets when an animation starts. The animation can start later, immediately from its beginning, or immediately and partway through the animation.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **43**  | **16**  |  **9**  | **12** | **10** |
		| 3 _-x-_ | 5 _-x-_ | 4 _-x-_ |        |        |
	**/
	@:optional
	var animationDelay : String;
	/**
		The **`animation-direction`** CSS property sets whether an animation should play forwards, backwards, or alternating back and forth.
		
		**Syntax**: `<single-animation-direction>#`
		
		**Initial value**: `normal`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **43**  | **16**  |  **9**  | **12** | **10** |
		| 3 _-x-_ | 5 _-x-_ | 4 _-x-_ |        |        |
	**/
	@:optional
	var animationDirection : String;
	/**
		The **`animation-duration`** CSS property sets the length of time that an animation takes to complete one cycle.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **43**  | **16**  |  **9**  | **12** | **10** |
		| 3 _-x-_ | 5 _-x-_ | 4 _-x-_ |        |        |
	**/
	@:optional
	var animationDuration : String;
	/**
		The **`animation-fill-mode`** CSS property sets how a CSS animation applies styles to its target before and after its execution.
		
		**Syntax**: `<single-animation-fill-mode>#`
		
		**Initial value**: `none`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **43**  | **16**  |  **9**  | **12** | **10** |
		| 3 _-x-_ | 5 _-x-_ | 5 _-x-_ |        |        |
	**/
	@:optional
	var animationFillMode : String;
	/**
		The **`animation-iteration-count`** CSS property sets the number of times an animation cycle should be played before stopping.
		
		**Syntax**: `<single-animation-iteration-count>#`
		
		**Initial value**: `1`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **43**  | **16**  |  **9**  | **12** | **10** |
		| 3 _-x-_ | 5 _-x-_ | 4 _-x-_ |        |        |
	**/
	@:optional
	var animationIterationCount : ts.AnyOf2<String, Float>;
	/**
		The **`animation-name`** CSS property sets one or more animations to apply to an element. Each name is an `@keyframes` at-rule that sets the property values for the animation sequence.
		
		**Syntax**: `[ none | <keyframes-name> ]#`
		
		**Initial value**: `none`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **43**  | **16**  |  **9**  | **12** | **10** |
		| 3 _-x-_ | 5 _-x-_ | 4 _-x-_ |        |        |
	**/
	@:optional
	var animationName : String;
	/**
		The **`animation-play-state`** CSS property sets whether an animation is running or paused.
		
		**Syntax**: `<single-animation-play-state>#`
		
		**Initial value**: `running`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **43**  | **16**  |  **9**  | **12** | **10** |
		| 3 _-x-_ | 5 _-x-_ | 4 _-x-_ |        |        |
	**/
	@:optional
	var animationPlayState : String;
	/**
		The `**animation-timing-function**` CSS property sets how an animation progresses through the duration of each cycle.
		
		**Syntax**: `<timing-function>#`
		
		**Initial value**: `ease`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **43**  | **16**  |  **9**  | **12** | **10** |
		| 3 _-x-_ | 5 _-x-_ | 4 _-x-_ |        |        |
	**/
	@:optional
	var animationTimingFunction : String;
	/**
		The **`-moz-appearance`** CSS property is used in Gecko (Firefox) to display an element using platform-native styling based on the operating system's theme.
		
		**Syntax**: `none | auto | button | textfield | <compat>`
		
		**Initial value**: `auto`
		
		|   Chrome    |   Firefox   |   Safari    |     Edge     | IE  |
		| :---------: | :---------: | :---------: | :----------: | :-: |
		| **1** _-x-_ | **1** _-x-_ | **3** _-x-_ | **12** _-x-_ | No  |
	**/
	@:optional
	var appearance : String;
	/**
		The **`aspect-ratio`**    CSS property sets a _**preferred aspect ratio**_ for the box, which will be used in the calculation of auto sizes and some other layout functions.
		
		**Syntax**: `auto | <ratio>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **79** | **71**  |   No   | **79** | No  |
	**/
	@:optional
	var aspectRatio : String;
	/**
		The **`backdrop-filter`** CSS property lets you apply graphical effects such as blurring or color shifting to the area behind an element. Because it applies to everything _behind_ the element, to see the effect you must make the element or its background at least partially transparent.
		
		**Syntax**: `none | <filter-function-list>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox |   Safari    |  Edge  | IE  |
		| :----: | :-----: | :---------: | :----: | :-: |
		| **76** |   n/a   | **9** _-x-_ | **17** | No  |
	**/
	@:optional
	var backdropFilter : String;
	/**
		The **`backface-visibility`** CSS property sets whether the back face of an element is visible when turned towards the user.
		
		**Syntax**: `visible | hidden`
		
		**Initial value**: `visible`
		
		|  Chrome  | Firefox  |    Safari     |  Edge  |   IE   |
		| :------: | :------: | :-----------: | :----: | :----: |
		|  **36**  |  **16**  | **5.1** _-x-_ | **12** | **10** |
		| 12 _-x-_ | 10 _-x-_ |               |        |        |
	**/
	@:optional
	var backfaceVisibility : String;
	/**
		The **`background-attachment`** CSS property sets whether a background image's position is fixed within the viewport, or scrolls with its containing block.
		
		**Syntax**: `<attachment>#`
		
		**Initial value**: `scroll`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var backgroundAttachment : String;
	/**
		The **`background-blend-mode`** CSS property sets how an element's background images should blend with each other and with the element's background color.
		
		**Syntax**: `<blend-mode>#`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **35** | **30**  | **8**  | **79** | No  |
	**/
	@:optional
	var backgroundBlendMode : String;
	/**
		The **`background-clip`** CSS property sets whether an element's background `<color>` or `<image>` extends underneath its border.
		
		**Syntax**: `<box>#`
		
		**Initial value**: `border-box`
		
		| Chrome | Firefox |   Safari    |  Edge  |  IE   |
		| :----: | :-----: | :---------: | :----: | :---: |
		| **1**  |  **4**  | **3** _-x-_ | **12** | **9** |
	**/
	@:optional
	var backgroundClip : String;
	/**
		The **`background-color`** CSS property sets the background color of an element.
		
		**Syntax**: `<color>`
		
		**Initial value**: `transparent`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var backgroundColor : String;
	/**
		The **`background-image`** CSS property sets one or more background images on an element.
		
		**Syntax**: `<bg-image>#`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var backgroundImage : String;
	/**
		The **`background-origin`** CSS property sets the _background positioning area_. In other words, it sets the origin position of an image set with the `background-image` property.
		
		**Syntax**: `<box>#`
		
		**Initial value**: `padding-box`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **4**  | **3**  | **12** | **9** |
	**/
	@:optional
	var backgroundOrigin : String;
	/**
		The **`background-position`** CSS property sets the initial position for each background image. The position is relative to the position layer set by `background-origin`.
		
		**Syntax**: `<bg-position>#`
		
		**Initial value**: `0% 0%`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var backgroundPosition : ts.AnyOf2<String, Float>;
	/**
		The **`background-position-x`** CSS property sets the initial horizontal position for each background image. The position is relative to the position layer set by `background-origin`.
		
		**Syntax**: `[ center | [ [ left | right | x-start | x-end ]? <length-percentage>? ]! ]#`
		
		**Initial value**: `left`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  | **49**  | **1**  | **12** | **6** |
	**/
	@:optional
	var backgroundPositionX : ts.AnyOf2<String, Float>;
	/**
		The **`background-position-y`** CSS property sets the initial vertical position, relative to the background position layer defined by `background-origin`, for each defined background image.
		
		**Syntax**: `[ center | [ [ top | bottom | y-start | y-end ]? <length-percentage>? ]! ]#`
		
		**Initial value**: `top`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  | **49**  | **1**  | **12** | **6** |
	**/
	@:optional
	var backgroundPositionY : ts.AnyOf2<String, Float>;
	/**
		The **`background-repeat`** CSS property sets how background images are repeated. A background image can be repeated along the horizontal and vertical axes, or not repeated at all.
		
		**Syntax**: `<repeat-style>#`
		
		**Initial value**: `repeat`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var backgroundRepeat : String;
	/**
		The **`background-size`** CSS property sets the size of the element's background image. The image can be left to its natural size, stretched, or constrained to fit the available space.
		
		**Syntax**: `<bg-size>#`
		
		**Initial value**: `auto auto`
		
		| Chrome  | Firefox | Safari  |  Edge  |  IE   |
		| :-----: | :-----: | :-----: | :----: | :---: |
		|  **3**  |  **4**  |  **5**  | **12** | **9** |
		| 1 _-x-_ |         | 3 _-x-_ |        |       |
	**/
	@:optional
	var backgroundSize : ts.AnyOf2<String, Float>;
	/**
		**Syntax**: `clip | ellipsis | <string>`
		
		**Initial value**: `clip`
	**/
	@:optional
	var blockOverflow : String;
	/**
		The **`block-size`** CSS property defines the horizontal or vertical size of an element's block, depending on its writing mode. It corresponds to either the `width` or the `height` property, depending on the value of `writing-mode`.
		
		**Syntax**: `<'width'>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var blockSize : ts.AnyOf2<String, Float>;
	/**
		The **`border-block-color`** CSS property defines the color of the logical block borders of an element, which maps to a physical border color depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-color` and `border-bottom-color`, or `border-right-color` and `border-left-color` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-color'>{1,2}`
		
		**Initial value**: `currentcolor`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|  n/a   | **66**  |   No   | n/a  | No  |
	**/
	@:optional
	var borderBlockColor : String;
	/**
		The **`border-block-end-color`** CSS property defines the color of the logical block-end border of an element, which maps to a physical border color depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-color`, `border-right-color`, `border-bottom-color`, or `border-left-color` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-color'>`
		
		**Initial value**: `currentcolor`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var borderBlockEndColor : String;
	/**
		The **`border-block-end-style`** CSS property defines the style of the logical block end border of an element, which maps to a physical border style depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-style`, `border-right-style`, `border-bottom-style`, or `border-left-style` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-style'>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var borderBlockEndStyle : String;
	/**
		The **`border-block-end-width`** CSS property defines the width of the logical block-end border of an element, which maps to a physical border width depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-width`, `border-right-width`, `border-bottom-width`, or `border-left-width` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-width'>`
		
		**Initial value**: `medium`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var borderBlockEndWidth : ts.AnyOf2<String, Float>;
	/**
		The **`border-block-start-color`** CSS property defines the color of the logical block-start border of an element, which maps to a physical border color depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-color`, `border-right-color`, `border-bottom-color`, or `border-left-color` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-color'>`
		
		**Initial value**: `currentcolor`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var borderBlockStartColor : String;
	/**
		The **`border-block-start-style`** CSS property defines the style of the logical block start border of an element, which maps to a physical border style depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-style`, `border-right-style`, `border-bottom-style`, or `border-left-style` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-style'>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var borderBlockStartStyle : String;
	/**
		The **`border-block-start-width`** CSS property defines the width of the logical block-start border of an element, which maps to a physical border width depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-width`, `border-right-width`, `border-bottom-width`, or `border-left-width` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-width'>`
		
		**Initial value**: `medium`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var borderBlockStartWidth : ts.AnyOf2<String, Float>;
	/**
		The **`border-block-style`** CSS property defines the style of the logical block borders of an element, which maps to a physical border style depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-style` and `border-bottom-style`, or `border-left-style` and `border-right-style` properties depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-style'>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **66**  |   No   | **79** | No  |
	**/
	@:optional
	var borderBlockStyle : String;
	/**
		The **`border-block-width`** CSS property defines the width of the logical block borders of an element, which maps to a physical border width depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-width` and `border-bottom-width`, or `border-left-width`, and `border-right-width` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-width'>`
		
		**Initial value**: `medium`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **66**  |   No   | **79** | No  |
	**/
	@:optional
	var borderBlockWidth : ts.AnyOf2<String, Float>;
	/**
		The **`border-bottom-color`** CSS property sets the color of an element's bottom border. It can also be set with the shorthand CSS properties `border-color` or `border-bottom`.
		
		**Syntax**: `<'border-top-color'>`
		
		**Initial value**: `currentcolor`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderBottomColor : String;
	/**
		The **`border-bottom-left-radius`** CSS property rounds the bottom-left corner of an element.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome  | Firefox | Safari  |  Edge  |  IE   |
		| :-----: | :-----: | :-----: | :----: | :---: |
		|  **4**  |  **4**  |  **5**  | **12** | **9** |
		| 1 _-x-_ |         | 3 _-x-_ |        |       |
	**/
	@:optional
	var borderBottomLeftRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-bottom-right-radius`** CSS property rounds the bottom-right corner of an element.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome  | Firefox | Safari  |  Edge  |  IE   |
		| :-----: | :-----: | :-----: | :----: | :---: |
		|  **4**  |  **4**  |  **5**  | **12** | **9** |
		| 1 _-x-_ |         | 3 _-x-_ |        |       |
	**/
	@:optional
	var borderBottomRightRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-bottom-style`** CSS property sets the line style of an element's bottom `border`.
		
		**Syntax**: `<line-style>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **1**  |  **1**  | **1**  | **12** | **5.5** |
	**/
	@:optional
	var borderBottomStyle : String;
	/**
		The **`border-bottom-width`** CSS property sets the width of the bottom border of a box.
		
		**Syntax**: `<line-width>`
		
		**Initial value**: `medium`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderBottomWidth : ts.AnyOf2<String, Float>;
	/**
		The **`border-collapse`** CSS property sets whether cells inside a `<table>` have shared or separate borders.
		
		**Syntax**: `collapse | separate`
		
		**Initial value**: `separate`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **1**  |  **1**  | **1.2** | **12** | **5** |
	**/
	@:optional
	var borderCollapse : String;
	/**
		The **`border-end-end-radius`** CSS property defines a logical border radius on an element, which maps to a physical border radius that depends on on the element's `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **66**  |   No   |  No  | No  |
	**/
	@:optional
	var borderEndEndRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-end-start-radius`** CSS property defines a logical border radius on an element, which maps to a physical border radius depending on the element's `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **66**  |   No   |  No  | No  |
	**/
	@:optional
	var borderEndStartRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-image-outset`** CSS property sets the distance by which an element's border image is set out from its border box.
		
		**Syntax**: `[ <length> | <number> ]{1,4}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **15** | **15**  | **6**  | **12** | **11** |
	**/
	@:optional
	var borderImageOutset : ts.AnyOf2<String, Float>;
	/**
		The **`border-image-repeat`** CSS property defines how the edge regions of a source image are adjusted to fit the dimensions of an element's border image.
		
		**Syntax**: `[ stretch | repeat | round | space ]{1,2}`
		
		**Initial value**: `stretch`
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **15** | **15**  | **6**  | **12** | **11** |
	**/
	@:optional
	var borderImageRepeat : String;
	/**
		The **`border-image-slice`** CSS property divides the image specified by `border-image-source` into regions. These regions form the components of an element's border image.
		
		**Syntax**: `<number-percentage>{1,4} && fill?`
		
		**Initial value**: `100%`
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **15** | **15**  | **6**  | **12** | **11** |
	**/
	@:optional
	var borderImageSlice : ts.AnyOf2<String, Float>;
	/**
		The **`border-image-source`** CSS property sets the source image used to create an element's border image.
		
		**Syntax**: `none | <image>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **15** | **15**  | **6**  | **12** | **11** |
	**/
	@:optional
	var borderImageSource : String;
	/**
		The **`border-image-width`** CSS property sets the width of an element's border image.
		
		**Syntax**: `[ <length-percentage> | <number> | auto ]{1,4}`
		
		**Initial value**: `1`
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **15** | **13**  | **6**  | **12** | **11** |
	**/
	@:optional
	var borderImageWidth : ts.AnyOf2<String, Float>;
	/**
		The **`border-inline-color`** CSS property defines the color of the logical inline borders of an element, which maps to a physical border color depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-color` and `border-bottom-color`, or `border-right-color` and `border-left-color` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-color'>{1,2}`
		
		**Initial value**: `currentcolor`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **66**  |   No   | **79** | No  |
	**/
	@:optional
	var borderInlineColor : String;
	/**
		The **`border-inline-end-color`** CSS property defines the color of the logical inline-end border of an element, which maps to a physical border color depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-color`, `border-right-color`, `border-bottom-color`, or `border-left-color` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-color'>`
		
		**Initial value**: `currentcolor`
		
		| Chrome |           Firefox           |  Safari  |  Edge  | IE  |
		| :----: | :-------------------------: | :------: | :----: | :-: |
		| **69** |           **41**            | **12.1** | **79** | No  |
		|        | 3 _(-moz-border-end-color)_ |          |        |     |
	**/
	@:optional
	var borderInlineEndColor : String;
	/**
		The **`border-inline-end-style`** CSS property defines the style of the logical inline end border of an element, which maps to a physical border style depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-style`, `border-right-style`, `border-bottom-style`, or `border-left-style` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-style'>`
		
		**Initial value**: `none`
		
		| Chrome |           Firefox           |  Safari  |  Edge  | IE  |
		| :----: | :-------------------------: | :------: | :----: | :-: |
		| **69** |           **41**            | **12.1** | **79** | No  |
		|        | 3 _(-moz-border-end-style)_ |          |        |     |
	**/
	@:optional
	var borderInlineEndStyle : String;
	/**
		The **`border-inline-end-width`** CSS property defines the width of the logical inline-end border of an element, which maps to a physical border width depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-width`, `border-right-width`, `border-bottom-width`, or `border-left-width` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-width'>`
		
		**Initial value**: `medium`
		
		| Chrome |           Firefox           |  Safari  |  Edge  | IE  |
		| :----: | :-------------------------: | :------: | :----: | :-: |
		| **69** |           **41**            | **12.1** | **79** | No  |
		|        | 3 _(-moz-border-end-width)_ |          |        |     |
	**/
	@:optional
	var borderInlineEndWidth : ts.AnyOf2<String, Float>;
	/**
		The **`border-inline-start-color`** CSS property defines the color of the logical inline start border of an element, which maps to a physical border color depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-color`, `border-right-color`, `border-bottom-color`, or `border-left-color` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-color'>`
		
		**Initial value**: `currentcolor`
		
		| Chrome |            Firefox            |  Safari  |  Edge  | IE  |
		| :----: | :---------------------------: | :------: | :----: | :-: |
		| **69** |            **41**             | **12.1** | **79** | No  |
		|        | 3 _(-moz-border-start-color)_ |          |        |     |
	**/
	@:optional
	var borderInlineStartColor : String;
	/**
		The **`border-inline-start-style`** CSS property defines the style of the logical inline start border of an element, which maps to a physical border style depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-style`, `border-right-style`, `border-bottom-style`, or `border-left-style` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-style'>`
		
		**Initial value**: `none`
		
		| Chrome |            Firefox            |  Safari  |  Edge  | IE  |
		| :----: | :---------------------------: | :------: | :----: | :-: |
		| **69** |            **41**             | **12.1** | **79** | No  |
		|        | 3 _(-moz-border-start-style)_ |          |        |     |
	**/
	@:optional
	var borderInlineStartStyle : String;
	/**
		The **`border-inline-start-width`** CSS property defines the width of the logical inline-start border of an element, which maps to a physical border width depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-width`, `border-right-width`, `border-bottom-width`, or `border-left-width` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-width'>`
		
		**Initial value**: `medium`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var borderInlineStartWidth : ts.AnyOf2<String, Float>;
	/**
		The **`border-inline-style`** CSS property defines the style of the logical inline borders of an element, which maps to a physical border style depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-style` and `border-bottom-style`, or `border-left-style` and `border-right-style` properties depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-style'>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **66**  |   No   | **79** | No  |
	**/
	@:optional
	var borderInlineStyle : String;
	/**
		The **`border-inline-width`** CSS property defines the width of the logical inline borders of an element, which maps to a physical border width depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-width` and `border-bottom-width`, or `border-left-width`, and `border-right-width` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-width'>`
		
		**Initial value**: `medium`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **66**  |   No   | **79** | No  |
	**/
	@:optional
	var borderInlineWidth : ts.AnyOf2<String, Float>;
	/**
		The **`border-left-color`** CSS property sets the color of an element's left border. It can also be set with the shorthand CSS properties `border-color` or `border-left`.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderLeftColor : String;
	/**
		The **`border-left-style`** CSS property sets the line style of an element's left `border`.
		
		**Syntax**: `<line-style>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **1**  |  **1**  | **1**  | **12** | **5.5** |
	**/
	@:optional
	var borderLeftStyle : String;
	/**
		The **`border-left-width`** CSS property sets the width of the left border of an element.
		
		**Syntax**: `<line-width>`
		
		**Initial value**: `medium`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderLeftWidth : ts.AnyOf2<String, Float>;
	/**
		The **`border-right-color`** CSS property sets the color of an element's right border. It can also be set with the shorthand CSS properties `border-color` or `border-right`.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderRightColor : String;
	/**
		The **`border-right-style`** CSS property sets the line style of an element's right `border`.
		
		**Syntax**: `<line-style>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **1**  |  **1**  | **1**  | **12** | **5.5** |
	**/
	@:optional
	var borderRightStyle : String;
	/**
		The **`border-right-width`** CSS property sets the width of the right border of an element.
		
		**Syntax**: `<line-width>`
		
		**Initial value**: `medium`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderRightWidth : ts.AnyOf2<String, Float>;
	/**
		The **`border-spacing`** CSS property sets the distance between the borders of adjacent `<table>` cells. This property applies only when `border-collapse` is `separate`.
		
		**Syntax**: `<length> <length>?`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **8** |
	**/
	@:optional
	var borderSpacing : ts.AnyOf2<String, Float>;
	/**
		The **`border-start-end-radius`** CSS property defines a logical border radius on an element, which maps to a physical border radius depending on the element's `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **66**  |   No   |  No  | No  |
	**/
	@:optional
	var borderStartEndRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-start-start-radius`** CSS property defines a logical border radius on an element, which maps to a physical border radius that depends on the element's `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **66**  |   No   |  No  | No  |
	**/
	@:optional
	var borderStartStartRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-top-color`** CSS property sets the color of an element's top border. It can also be set with the shorthand CSS properties `border-color` or `border-top`.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderTopColor : String;
	/**
		The **`border-top-left-radius`** CSS property rounds the top-left corner of an element.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome  | Firefox | Safari  |  Edge  |  IE   |
		| :-----: | :-----: | :-----: | :----: | :---: |
		|  **4**  |  **4**  |  **5**  | **12** | **9** |
		| 1 _-x-_ |         | 3 _-x-_ |        |       |
	**/
	@:optional
	var borderTopLeftRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-top-right-radius`** CSS property rounds the top-right corner of an element.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome  | Firefox | Safari  |  Edge  |  IE   |
		| :-----: | :-----: | :-----: | :----: | :---: |
		|  **4**  |  **4**  |  **5**  | **12** | **9** |
		| 1 _-x-_ |         | 3 _-x-_ |        |       |
	**/
	@:optional
	var borderTopRightRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-top-style`** CSS property sets the line style of an element's top `border`.
		
		**Syntax**: `<line-style>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **1**  |  **1**  | **1**  | **12** | **5.5** |
	**/
	@:optional
	var borderTopStyle : String;
	/**
		The **`border-top-width`** CSS property sets the width of the top border of an element.
		
		**Syntax**: `<line-width>`
		
		**Initial value**: `medium`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderTopWidth : ts.AnyOf2<String, Float>;
	/**
		The **`bottom`** CSS property participates in specifying the vertical position of a _positioned element_. It has no effect on non-positioned elements.
		
		**Syntax**: `<length> | <percentage> | auto`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **5** |
	**/
	@:optional
	var bottom : ts.AnyOf2<String, Float>;
	/**
		The **`box-decoration-break`** CSS property specifies how an element's fragments should be rendered when broken across multiple lines, columns, or pages.
		
		**Syntax**: `slice | clone`
		
		**Initial value**: `slice`
		
		|    Chrome    | Firefox |    Safari     |     Edge     | IE  |
		| :----------: | :-----: | :-----------: | :----------: | :-: |
		| **22** _-x-_ | **32**  | **6.1** _-x-_ | **79** _-x-_ | No  |
	**/
	@:optional
	var boxDecorationBreak : String;
	/**
		The **`box-shadow`** CSS property adds shadow effects around an element's frame. You can set multiple effects separated by commas. A box shadow is described by X and Y offsets relative to the element, blur and spread radii, and color.
		
		**Syntax**: `none | <shadow>#`
		
		**Initial value**: `none`
		
		| Chrome  | Firefox | Safari  |  Edge  |  IE   |
		| :-----: | :-----: | :-----: | :----: | :---: |
		| **10**  |  **4**  | **5.1** | **12** | **9** |
		| 1 _-x-_ |         | 3 _-x-_ |        |       |
	**/
	@:optional
	var boxShadow : String;
	/**
		The **`box-sizing`** CSS property defines how the user agent should calculate the total width and height of an element.
		
		**Syntax**: `content-box | border-box`
		
		**Initial value**: `content-box`
		
		| Chrome  | Firefox | Safari  |  Edge  |  IE   |
		| :-----: | :-----: | :-----: | :----: | :---: |
		| **10**  | **29**  | **5.1** | **12** | **8** |
		| 1 _-x-_ | 1 _-x-_ | 3 _-x-_ |        |       |
	**/
	@:optional
	var boxSizing : String;
	/**
		The **`break-after`** CSS property defines how page, column, or region breaks should behave after a generated box. If there is no generated box, the property is ignored.
		
		**Syntax**: `auto | avoid | always | all | avoid-page | page | left | right | recto | verso | avoid-column | column | avoid-region | region`
		
		**Initial value**: `auto`
		
		---
		
		_Supported in Multi-column Layout_
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **50** |   No    |   No   | **12** | **10** |
		
		---
		
		_Supported in Paged Media_
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **50** | **65**  | **10** | **12** | **10** |
		
		---
		
		_Supported in CSS Regions_
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   |   No    |   No   |  No  | No  |
		
		---
	**/
	@:optional
	var breakAfter : String;
	/**
		The **`break-before`** CSS property sets how page, column, or region breaks should behave before a generated box. If there is no generated box, the property is ignored.
		
		**Syntax**: `auto | avoid | always | all | avoid-page | page | left | right | recto | verso | avoid-column | column | avoid-region | region`
		
		**Initial value**: `auto`
		
		---
		
		_Supported in Multi-column Layout_
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **50** | **65**  |   No   | **12** | **10** |
		
		---
		
		_Supported in Paged Media_
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **50** | **65**  | **10** | **12** | **10** |
		
		---
		
		_Supported in CSS Regions_
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   |   No    |   No   |  No  | No  |
		
		---
	**/
	@:optional
	var breakBefore : String;
	/**
		The **`break-inside`** CSS property defines how page, column, or region breaks should behave inside a generated box. If there is no generated box, the property is ignored.
		
		**Syntax**: `auto | avoid | avoid-page | avoid-column | avoid-region`
		
		**Initial value**: `auto`
		
		---
		
		_Supported in Multi-column Layout_
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **50** | **65**  | **10** | **12** | **10** |
		
		---
		
		_Supported in Paged Media_
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **50** | **65**  | **10** | **12** | **10** |
		
		---
		
		_Supported in CSS Regions_
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   |   No    |   No   |  No  | No  |
		
		---
	**/
	@:optional
	var breakInside : String;
	/**
		The **`caption-side`** CSS property puts the content of a table's `<caption>` on the specified side. The values are relative to the `writing-mode` of the table.
		
		**Syntax**: `top | bottom | block-start | block-end | inline-start | inline-end`
		
		**Initial value**: `top`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **8** |
	**/
	@:optional
	var captionSide : String;
	/**
		The **`caret-color`** CSS property sets the color of the insertion caret, the visible marker where the next character typed will be inserted. The caret appears in elements such as `<input>` or those with the `contenteditable` attribute. The caret is typically a thin vertical line that flashes to help make it more noticeable. By default, it is black, but its color can be altered with this property.
		
		**Syntax**: `auto | <color>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **53**  | **11.1** | **79** | No  |
	**/
	@:optional
	var caretColor : String;
	/**
		The **`clear`** CSS property sets whether an element must be moved below (cleared) floating elements that precede it. The `clear` property applies to floating and non-floating elements.
		
		**Syntax**: `none | left | right | both | inline-start | inline-end`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var clear : String;
	/**
		The `**clip-path**` CSS property creates a clipping region that sets what part of an element should be shown. Parts that are inside the region are shown, while those outside are hidden.
		
		**Syntax**: `<clip-source> | [ <basic-shape> || <geometry-box> ] | none`
		
		**Initial value**: `none`
		
		|  Chrome  | Firefox |  Safari   |  Edge  |   IE   |
		| :------: | :-----: | :-------: | :----: | :----: |
		|  **55**  | **3.5** |  **9.1**  | **12** | **10** |
		| 23 _-x-_ |         | 6.1 _-x-_ |        |        |
	**/
	@:optional
	var clipPath : String;
	/**
		The **`color`** CSS property sets the foreground color value of an element's text and text decorations, and sets the `currentcolor` value. `currentcolor` may be used as an indirect value on _other_ properties and is the default for other color properties, such as `border-color`.
		
		**Syntax**: `<color>`
		
		**Initial value**: Varies from one browser to another
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **3** |
	**/
	@:optional
	var color : String;
	/**
		The **`color-adjust`** CSS property sets what, if anything, the user agent may do to optimize the appearance of the element on the output device. By default, the browser is allowed to make any adjustments to the element's appearance it determines to be necessary and prudent given the type and capabilities of the output device.
		
		**Syntax**: `economy | exact`
		
		**Initial value**: `economy`
		
		|    Chrome    | Firefox |   Safari    |     Edge     | IE  |
		| :----------: | :-----: | :---------: | :----------: | :-: |
		| **49** _-x-_ | **48**  | **6** _-x-_ | **79** _-x-_ | No  |
	**/
	@:optional
	var colorAdjust : String;
	/**
		The **`column-count`** CSS property breaks an element's content into the specified number of columns.
		
		**Syntax**: `<integer> | auto`
		
		**Initial value**: `auto`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **50**  | **52**  |  **9**  | **12** | **10** |
		| 1 _-x-_ |         | 3 _-x-_ |        |        |
	**/
	@:optional
	var columnCount : ts.AnyOf2<Float, String>;
	/**
		The **`column-fill`** CSS property controls how an element's contents are balanced when broken into columns.
		
		**Syntax**: `auto | balance | balance-all`
		
		**Initial value**: `balance`
		
		| Chrome | Firefox | Safari  |  Edge  |   IE   |
		| :----: | :-----: | :-----: | :----: | :----: |
		| **50** | **52**  |  **9**  | **12** | **10** |
		|        |         | 8 _-x-_ |        |        |
	**/
	@:optional
	var columnFill : String;
	/**
		The **`column-gap`** CSS property sets the size of the gap (gutter) between an element's columns.
		
		**Syntax**: `normal | <length-percentage>`
		
		**Initial value**: `normal`
		
		---
		
		_Supported in Flex Layout_
		
		| Chrome | Firefox |   Safari    | Edge | IE  |
		| :----: | :-----: | :---------: | :--: | :-: |
		|   No   | **63**  | **3** _-x-_ |  No  | No  |
		
		---
		
		_Supported in Grid Layout_
		
		|     Chrome      |     Firefox     |        Safari         |  Edge  | IE  |
		| :-------------: | :-------------: | :-------------------: | :----: | :-: |
		|     **66**      |     **61**      | **10.1** _(grid-gap)_ | **16** | No  |
		| 57 _(grid-gap)_ | 52 _(grid-gap)_ |                       |        |     |
		
		---
		
		_Supported in Multi-column Layout_
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **50**  | **52**  | **10**  | **12** | **10** |
		| 1 _-x-_ |         | 3 _-x-_ |        |        |
		
		---
	**/
	@:optional
	var columnGap : ts.AnyOf2<String, Float>;
	/**
		The **`column-rule-color`** CSS property sets the color of the rule (line) drawn between columns in a multi-column layout.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **50**  | **52**  |  **9**  | **12** | **10** |
		| 1 _-x-_ |         | 3 _-x-_ |        |        |
	**/
	@:optional
	var columnRuleColor : String;
	/**
		The **`column-rule-style`** CSS property sets the style of the line drawn between columns in a multi-column layout.
		
		**Syntax**: `<'border-style'>`
		
		**Initial value**: `none`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **50**  | **52**  |  **9**  | **12** | **10** |
		| 1 _-x-_ |         | 3 _-x-_ |        |        |
	**/
	@:optional
	var columnRuleStyle : String;
	/**
		The **`column-rule-width`** CSS property sets the width of the rule (line) drawn between columns in a multi-column layout.
		
		**Syntax**: `<'border-width'>`
		
		**Initial value**: `medium`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **50**  | **52**  |  **9**  | **12** | **10** |
		| 1 _-x-_ |         | 3 _-x-_ |        |        |
	**/
	@:optional
	var columnRuleWidth : ts.AnyOf2<String, Float>;
	/**
		The **`column-span`** CSS property makes it possible for an element to span across all columns when its value is set to `all`.
		
		**Syntax**: `none | all`
		
		**Initial value**: `none`
		
		| Chrome  | Firefox |  Safari   |  Edge  |   IE   |
		| :-----: | :-----: | :-------: | :----: | :----: |
		| **50**  | **71**  |   **9**   | **12** | **10** |
		| 6 _-x-_ |         | 5.1 _-x-_ |        |        |
	**/
	@:optional
	var columnSpan : String;
	/**
		The **`column-width`** CSS property specifies the ideal column width in a multi-column layout. The container will have as many columns as can fit without any of them having a width less than the `column-width` value. If the width of the container is narrower than the specified value, the single column's width will be smaller than the declared column width.
		
		**Syntax**: `<length> | auto`
		
		**Initial value**: `auto`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **50**  | **50**  |  **9**  | **12** | **10** |
		| 1 _-x-_ |         | 3 _-x-_ |        |        |
	**/
	@:optional
	var columnWidth : ts.AnyOf2<String, Float>;
	/**
		The **`contain`** CSS property allows an author to indicate that an element and its contents are, as much as possible, _independent_ of the rest of the document tree. This allows the browser to recalculate layout, style, paint, size, or any combination of them for a limited area of the DOM and not the entire page.
		
		**Syntax**: `none | strict | content | [ size || layout || style || paint ]`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **52** | **69**  |   No   | **79** | No  |
	**/
	@:optional
	var contain : String;
	/**
		The **`content`** CSS property replaces an element with a generated value. Objects inserted using the `content` property are _anonymous replaced elements._
		
		**Syntax**: `normal | none | [ <content-replacement> | <content-list> ] [/ <string> ]?`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **8** |
	**/
	@:optional
	var content : String;
	/**
		The **`counter-increment`** CSS property increases or decreases the value of a CSS counter by a given value.
		
		**Syntax**: `[ <custom-ident> <integer>? ]+ | none`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **2**  |  **1**  | **3**  | **12** | **8** |
	**/
	@:optional
	var counterIncrement : String;
	/**
		The **`counter-reset`** CSS property resets a CSS counter to a given value.
		
		**Syntax**: `[ <custom-ident> <integer>? ]+ | none`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **2**  |  **1**  | **3**  | **12** | **8** |
	**/
	@:optional
	var counterReset : String;
	/**
		The **`counter-set`** CSS property sets a CSS counter to a given value. It manipulates the value of existing counters, and will only create new counters if there isn't already a counter of the given name on the element.
		
		**Syntax**: `[ <custom-ident> <integer>? ]+ | none`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **68**  |   No   |  No  | No  |
	**/
	@:optional
	var counterSet : String;
	/**
		The **`cursor`** CSS property sets mouse cursor to display when the mouse pointer is over an element.
		
		**Syntax**: `[ [ <url> [ <x> <y> ]? , ]* [ auto | default | none | context-menu | help | pointer | progress | wait | cell | crosshair | text | vertical-text | alias | copy | move | no-drop | not-allowed | e-resize | n-resize | ne-resize | nw-resize | s-resize | se-resize | sw-resize | w-resize | ew-resize | ns-resize | nesw-resize | nwse-resize | col-resize | row-resize | all-scroll | zoom-in | zoom-out | grab | grabbing ] ]`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **1**  |  **1**  | **1.2** | **12** | **4** |
	**/
	@:optional
	var cursor : String;
	/**
		The **`direction`** CSS property sets the direction of text, table columns, and horizontal overflow. Use `rtl` for languages written from right to left (like Hebrew or Arabic), and `ltr` for those written from left to right (like English and most other languages).
		
		**Syntax**: `ltr | rtl`
		
		**Initial value**: `ltr`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **2**  |  **1**  | **1**  | **12** | **5.5** |
	**/
	@:optional
	var direction : String;
	/**
		The **`display`** CSS property defines the _display type_ of an element, which consists of the two basic qualities of how an element generates boxes — the **outer display type** defining how the box participates in flow layout, and the **inner display type** defining how the children of the box are laid out.
		
		**Syntax**: `[ <display-outside> || <display-inside> ] | <display-listitem> | <display-internal> | <display-box> | <display-legacy>`
		
		**Initial value**: `inline`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var display : String;
	/**
		The **`empty-cells`** CSS property sets whether borders and backgrounds appear around `<table>` cells that have no visible content.
		
		**Syntax**: `show | hide`
		
		**Initial value**: `show`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **1**  |  **1**  | **1.2** | **12** | **8** |
	**/
	@:optional
	var emptyCells : String;
	/**
		The **`filter`** CSS property applies graphical effects like blur or color shift to an element. Filters are commonly used to adjust the rendering of images, backgrounds, and borders.
		
		**Syntax**: `none | <filter-function-list>`
		
		**Initial value**: `none`
		
		|  Chrome  | Firefox | Safari  |  Edge  | IE  |
		| :------: | :-----: | :-----: | :----: | :-: |
		|  **53**  | **35**  | **9.1** | **12** | No  |
		| 18 _-x-_ |         | 6 _-x-_ |        |     |
	**/
	@:optional
	var filter : String;
	/**
		The **`flex-basis`** CSS property sets the initial main size of a flex item. It sets the size of the content box unless otherwise set with `box-sizing`.
		
		**Syntax**: `content | <'width'>`
		
		**Initial value**: `auto`
		
		|  Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :------: | :-----: | :-----: | :----: | :----: |
		|  **29**  | **22**  |  **9**  | **12** | **11** |
		| 22 _-x-_ |         | 7 _-x-_ |        |        |
	**/
	@:optional
	var flexBasis : ts.AnyOf2<String, Float>;
	/**
		The **`flex-direction`** CSS property sets how flex items are placed in the flex container defining the main axis and the direction (normal or reversed).
		
		**Syntax**: `row | row-reverse | column | column-reverse`
		
		**Initial value**: `row`
		
		|  Chrome  | Firefox | Safari  |  Edge  |    IE    |
		| :------: | :-----: | :-----: | :----: | :------: |
		|  **29**  | **20**  |  **9**  | **12** |  **11**  |
		| 21 _-x-_ |         | 7 _-x-_ |        | 10 _-x-_ |
	**/
	@:optional
	var flexDirection : String;
	/**
		The **`flex-grow`** CSS property sets how much of the available space in the flex container should be assigned to that item (the flex grow factor). If all sibling items have the same flex grow factor, then all items will receive the same share of available space, otherwise it is distributed according to the ratio defined by the different flex grow factors.
		
		**Syntax**: `<number>`
		
		**Initial value**: `0`
		
		|  Chrome  | Firefox |  Safari   |  Edge  |            IE            |
		| :------: | :-----: | :-------: | :----: | :----------------------: |
		|  **29**  | **20**  |   **9**   | **12** |          **11**          |
		| 22 _-x-_ |         | 6.1 _-x-_ |        | 10 _(-ms-flex-positive)_ |
	**/
	@:optional
	var flexGrow : ts.AnyOf2<Float, String>;
	/**
		The **`flex-shrink`** CSS property sets the flex shrink factor of a flex item. If the size of flex items is larger than the flex container, items shrink to fit according to `flex-shrink`.
		
		**Syntax**: `<number>`
		
		**Initial value**: `1`
		
		|  Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :------: | :-----: | :-----: | :----: | :----: |
		|  **29**  | **20**  |  **9**  | **12** | **10** |
		| 22 _-x-_ |         | 8 _-x-_ |        |        |
	**/
	@:optional
	var flexShrink : ts.AnyOf2<Float, String>;
	/**
		The **`flex-wrap`** CSS property sets whether flex items are forced onto one line or can wrap onto multiple lines. If wrapping is allowed, it sets the direction that lines are stacked.
		
		**Syntax**: `nowrap | wrap | wrap-reverse`
		
		**Initial value**: `nowrap`
		
		|  Chrome  | Firefox |  Safari   |  Edge  |   IE   |
		| :------: | :-----: | :-------: | :----: | :----: |
		|  **29**  | **28**  |   **9**   | **12** | **11** |
		| 21 _-x-_ |         | 6.1 _-x-_ |        |        |
	**/
	@:optional
	var flexWrap : String;
	/**
		The **`float`** CSS property places an element on the left or right side of its container, allowing text and inline elements to wrap around it. The element is removed from the normal flow of the page, though still remaining a part of the flow (in contrast to absolute positioning).
		
		**Syntax**: `left | right | none | inline-start | inline-end`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var float : String;
	/**
		The **`font-family`** CSS property specifies a prioritized list of one or more font family names and/or generic family names for the selected element.
		
		**Syntax**: `[ <family-name> | <generic-family> ]#`
		
		**Initial value**: depends on user agent
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **3** |
	**/
	@:optional
	var fontFamily : String;
	/**
		The **`font-feature-settings`** CSS property controls advanced typographic features in OpenType fonts.
		
		**Syntax**: `normal | <feature-tag-value>#`
		
		**Initial value**: `normal`
		
		|  Chrome  | Firefox  | Safari  |  Edge  |   IE   |
		| :------: | :------: | :-----: | :----: | :----: |
		|  **48**  |  **34**  | **9.1** | **15** | **10** |
		| 16 _-x-_ | 15 _-x-_ |         |        |        |
	**/
	@:optional
	var fontFeatureSettings : String;
	/**
		The **`font-kerning`** CSS property sets the use of the kerning information stored in a font.
		
		**Syntax**: `auto | normal | none`
		
		**Initial value**: `auto`
		
		|    Chrome    | Firefox | Safari |     Edge     | IE  |
		| :----------: | :-----: | :----: | :----------: | :-: |
		| **32** _-x-_ | **32**  | **7**  | **79** _-x-_ | No  |
	**/
	@:optional
	var fontKerning : String;
	/**
		The **`font-language-override`** CSS property controls the use of language-specific glyphs in a typeface.
		
		**Syntax**: `normal | <string>`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **34**  |   No   |  No  | No  |
		|        | 4 _-x-_ |        |      |     |
	**/
	@:optional
	var fontLanguageOverride : String;
	/**
		The **`font-optical-sizing`** CSS property sets whether text rendering is optimized for viewing at different sizes. This only works for fonts that have an optical size variation axis.
		
		**Syntax**: `auto | none`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **79** | **62**  | **11** | **17** | No  |
	**/
	@:optional
	var fontOpticalSizing : String;
	/**
		The **`font-size`** CSS property sets the size of the font. This property is also used to compute the size of `em`, `ex`, and other relative `<length>` units.
		
		**Syntax**: `<absolute-size> | <relative-size> | <length-percentage>`
		
		**Initial value**: `medium`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **1**  |  **1**  | **1**  | **12** | **5.5** |
	**/
	@:optional
	var fontSize : ts.AnyOf2<String, Float>;
	/**
		The **`font-size-adjust`** CSS property sets how the font size should be chosen based on the height of lowercase rather than capital letters.
		
		**Syntax**: `none | <number>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|  n/a   |  **1**  |   No   | n/a  | No  |
	**/
	@:optional
	var fontSizeAdjust : ts.AnyOf2<Float, String>;
	/**
		The **`font-stretch`** CSS property selects a normal, condensed, or expanded face from a font.
		
		**Syntax**: `<font-stretch-absolute>`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **60** |  **9**  | **11** | **12** | **9** |
	**/
	@:optional
	var fontStretch : String;
	/**
		The **`font-style`** CSS property sets whether a font should be styled with a normal, italic, or oblique face from its `font-family`.
		
		**Syntax**: `normal | italic | oblique <angle>?`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var fontStyle : String;
	/**
		The **`font-synthesis`** CSS property controls which missing typefaces, bold or italic, may be synthesized by the browser.
		
		**Syntax**: `none | [ weight || style ]`
		
		**Initial value**: `weight style`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **34**  | **9**  |  No  | No  |
	**/
	@:optional
	var fontSynthesis : String;
	/**
		The **font-variant** CSS property is a shorthand for the longhand properties `font-variant-caps`, `font-variant-numeric`, `font-variant-alternates`, `font-variant-ligatures`, and `font-variant-east-asian`. You can also set the CSS Level 2 (Revision 1) values of `font-variant`, (that is, `normal` or `small-caps`), by using the `font` shorthand.
		
		**Syntax**: `normal | none | [ <common-lig-values> || <discretionary-lig-values> || <historical-lig-values> || <contextual-alt-values> || stylistic( <feature-value-name> ) || historical-forms || styleset( <feature-value-name># ) || character-variant( <feature-value-name># ) || swash( <feature-value-name> ) || ornaments( <feature-value-name> ) || annotation( <feature-value-name> ) || [ small-caps | all-small-caps | petite-caps | all-petite-caps | unicase | titling-caps ] || <numeric-figure-values> || <numeric-spacing-values> || <numeric-fraction-values> || ordinal || slashed-zero || <east-asian-variant-values> || <east-asian-width-values> || ruby ]`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var fontVariant : String;
	/**
		The **`font-variant-caps`** CSS property controls the use of alternate glyphs for capital letters.
		
		**Syntax**: `normal | small-caps | all-small-caps | petite-caps | all-petite-caps | unicase | titling-caps`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **52** | **34**  |   No   | **79** | No  |
	**/
	@:optional
	var fontVariantCaps : String;
	/**
		The **`font-variant-east-asian`** CSS property controls the use of alternate glyphs for East Asian scripts, like Japanese and Chinese.
		
		**Syntax**: `normal | [ <east-asian-variant-values> || <east-asian-width-values> || ruby ]`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **63** | **34**  |   No   | **79** | No  |
	**/
	@:optional
	var fontVariantEastAsian : String;
	/**
		The **`font-variant-ligatures`** CSS property controls which ligatures and contextual forms are used in textual content of the elements it applies to. This leads to more harmonized forms in the resulting text.
		
		**Syntax**: `normal | none | [ <common-lig-values> || <discretionary-lig-values> || <historical-lig-values> || <contextual-alt-values> ]`
		
		**Initial value**: `normal`
		
		|  Chrome  | Firefox | Safari  |  Edge  | IE  |
		| :------: | :-----: | :-----: | :----: | :-: |
		|  **34**  | **34**  | **9.1** | **79** | No  |
		| 31 _-x-_ |         | 7 _-x-_ |        |     |
	**/
	@:optional
	var fontVariantLigatures : String;
	/**
		The **`font-variant-numeric`** CSS property controls the usage of alternate glyphs for numbers, fractions, and ordinal markers.
		
		**Syntax**: `normal | [ <numeric-figure-values> || <numeric-spacing-values> || <numeric-fraction-values> || ordinal || slashed-zero ]`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari  |  Edge  | IE  |
		| :----: | :-----: | :-----: | :----: | :-: |
		| **52** | **34**  | **9.1** | **79** | No  |
	**/
	@:optional
	var fontVariantNumeric : String;
	/**
		The **`font-variant-position`** CSS property controls the use of alternate, smaller glyphs that are positioned as superscript or subscript.
		
		**Syntax**: `normal | sub | super`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **34**  |   No   |  No  | No  |
	**/
	@:optional
	var fontVariantPosition : String;
	/**
		The **`font-variation-settings`** CSS property provides low-level control over variable font characteristics, by specifying the four letter axis names of the characteristics you want to vary, along with their values.
		
		**Syntax**: `normal | [ <string> <number> ]#`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **62** | **62**  | **11** | **17** | No  |
	**/
	@:optional
	var fontVariationSettings : String;
	/**
		The **`font-weight`** CSS property specifies the weight (or boldness) of the font. The font weights available to you will depend on the `font-family` you are using. Some fonts are only available in `normal` and `bold`.
		
		**Syntax**: `<font-weight-absolute> | bolder | lighter`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **2**  |  **1**  | **1**  | **12** | **3** |
	**/
	@:optional
	var fontWeight : ts.AnyOf2<Float, String>;
	/**
		The **`grid-auto-columns`** CSS property specifies the size of an implicitly-created grid column track.
		
		**Syntax**: `<track-size>+`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  |          Edge           |             IE              |
		| :----: | :-----: | :------: | :---------------------: | :-------------------------: |
		| **57** | **70**  | **10.1** |         **16**          | **10** _(-ms-grid-columns)_ |
		|        |         |          | 12 _(-ms-grid-columns)_ |                             |
	**/
	@:optional
	var gridAutoColumns : ts.AnyOf2<String, Float>;
	/**
		The **`grid-auto-flow`** CSS property controls how the auto-placement algorithm works, specifying exactly how auto-placed items get flowed into the grid.
		
		**Syntax**: `[ row | column ] || dense`
		
		**Initial value**: `row`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var gridAutoFlow : String;
	/**
		The **`grid-auto-rows`** CSS property specifies the size of an implicitly-created grid row track.
		
		**Syntax**: `<track-size>+`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  |         Edge         |            IE            |
		| :----: | :-----: | :------: | :------------------: | :----------------------: |
		| **57** | **70**  | **10.1** |        **16**        | **10** _(-ms-grid-rows)_ |
		|        |         |          | 12 _(-ms-grid-rows)_ |                          |
	**/
	@:optional
	var gridAutoRows : ts.AnyOf2<String, Float>;
	/**
		The **`grid-column-end`** CSS property specifies a grid item’s end position within the grid column by contributing a line, a span, or nothing (automatic) to its grid placement, thereby specifying the block-end edge of its grid area.
		
		**Syntax**: `<grid-line>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var gridColumnEnd : ts.AnyOf2<String, Float>;
	/**
		The **`grid-column-start`** CSS property specifies a grid item’s start position within the grid column by contributing a line, a span, or nothing (automatic) to its grid placement. This start position defines the block-start edge of the grid area.
		
		**Syntax**: `<grid-line>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var gridColumnStart : ts.AnyOf2<String, Float>;
	/**
		The **`grid-row-end`** CSS property specifies a grid item’s end position within the grid row by contributing a line, a span, or nothing (automatic) to its grid placement, thereby specifying the inline-end edge of its grid area.
		
		**Syntax**: `<grid-line>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var gridRowEnd : ts.AnyOf2<String, Float>;
	/**
		The **`grid-row-start`** CSS property specifies a grid item’s start position within the grid row by contributing a line, a span, or nothing (automatic) to its grid placement, thereby specifying the inline-start edge of its grid area.
		
		**Syntax**: `<grid-line>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var gridRowStart : ts.AnyOf2<String, Float>;
	/**
		The **`grid-template-areas`** CSS property specifies named grid areas.
		
		**Syntax**: `none | <string>+`
		
		**Initial value**: `none`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var gridTemplateAreas : String;
	/**
		The **`grid-template-columns`** CSS property defines the line names and track sizing functions of the grid columns.
		
		**Syntax**: `none | <track-list> | <auto-track-list> | subgrid <line-name-list>?`
		
		**Initial value**: `none`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var gridTemplateColumns : ts.AnyOf2<String, Float>;
	/**
		The **`grid-template-rows`** CSS property defines the line names and track sizing functions of the grid rows.
		
		**Syntax**: `none | <track-list> | <auto-track-list> | subgrid <line-name-list>?`
		
		**Initial value**: `none`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var gridTemplateRows : ts.AnyOf2<String, Float>;
	/**
		The **`hanging-punctuation`** CSS property specifies whether a punctuation mark should hang at the start or end of a line of text. Hanging punctuation may be placed outside the line box.
		
		**Syntax**: `none | [ first || [ force-end | allow-end ] || last ]`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   |   No    | **10** |  No  | No  |
	**/
	@:optional
	var hangingPunctuation : String;
	/**
		The **`height`** CSS property specifies the height of an element. By default, the property defines the height of the content area. If `box-sizing` is set to `border-box`, however, it instead determines the height of the border area.
		
		**Syntax**: `auto | <length> | <percentage> | min-content | max-content | fit-content(<length-percentage>)`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var height : ts.AnyOf2<String, Float>;
	/**
		The **`hyphens`** CSS property specifies how words should be hyphenated when text wraps across multiple lines. You can prevent hyphenation entirely, use hyphenation in manually-specified points within the text, or let the browser automatically insert hyphens where appropriate.
		
		**Syntax**: `none | manual | auto`
		
		**Initial value**: `manual`
		
		|  Chrome  | Firefox |    Safari     |     Edge     |      IE      |
		| :------: | :-----: | :-----------: | :----------: | :----------: |
		|  **55**  | **43**  | **5.1** _-x-_ | **12** _-x-_ | **10** _-x-_ |
		| 13 _-x-_ | 6 _-x-_ |               |              |              |
	**/
	@:optional
	var hyphens : String;
	/**
		The **`image-orientation`** CSS property specifies a layout-independent correction to the orientation of an image. It should _not_ be used for any other orientation adjustments; instead, the `transform` property should be used with the `rotate` `<transform-function>`.
		
		**Syntax**: `from-image | <angle> | [ <angle>? flip ]`
		
		**Initial value**: `0deg`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **26**  |   No   |  No  | No  |
	**/
	@:optional
	var imageOrientation : String;
	/**
		The **`image-rendering`** CSS property sets an image scaling algorithm. The property applies to an element itself, to any images set in its other properties, and to its descendants.
		
		**Syntax**: `auto | crisp-edges | pixelated`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **13** | **3.6** | **6**  | **79** | No  |
	**/
	@:optional
	var imageRendering : String;
	/**
		**Syntax**: `[ from-image || <resolution> ] && snap?`
		
		**Initial value**: `1dppx`
	**/
	@:optional
	var imageResolution : String;
	/**
		The `initial-letter` CSS property sets styling for dropped, raised, and sunken initial letters.
		
		**Syntax**: `normal | [ <number> <integer>? ]`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   |   No    | **9**  |  No  | No  |
	**/
	@:optional
	var initialLetter : ts.AnyOf2<String, Float>;
	/**
		The **`inline-size`** CSS property defines the horizontal or vertical size of an element's block, depending on its writing mode. It corresponds to either the `width` or the `height` property, depending on the value of `writing-mode`.
		
		**Syntax**: `<'width'>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var inlineSize : ts.AnyOf2<String, Float>;
	/**
		The **`inset`** CSS property defines the logical block and inline start and end offsets of an element, which map to physical offsets depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top` and `bottom`, or `right` and `left` properties depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>{1,4}`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **66**  |   No   |  No  | No  |
	**/
	@:optional
	var inset : ts.AnyOf2<String, Float>;
	/**
		The **`inset-block`** CSS property defines the logical block start and end offsets of an element, which maps to physical offsets depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top` and `bottom`, or `right` and `left` properties depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>{1,2}`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|  n/a   | **63**  |   No   | n/a  | No  |
	**/
	@:optional
	var insetBlock : ts.AnyOf2<String, Float>;
	/**
		The **`inset-block-end`** CSS property defines the logical block end offset of an element, which maps to a physical inset depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top`, `right`, `bottom`, or `left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|  n/a   | **63**  |   No   | n/a  | No  |
	**/
	@:optional
	var insetBlockEnd : ts.AnyOf2<String, Float>;
	/**
		The **`inset-block-start`** CSS property defines the logical block start offset of an element, which maps to a physical inset depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top`, `right`, `bottom`, or `left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|  n/a   | **63**  |   No   | n/a  | No  |
	**/
	@:optional
	var insetBlockStart : ts.AnyOf2<String, Float>;
	/**
		The **`inset-inline`** CSS property defines the logical block start and end offsets of an element, which maps to physical offsets depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top` and `bottom`, or `right` and `left` properties depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>{1,2}`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|  n/a   | **63**  |   No   | n/a  | No  |
	**/
	@:optional
	var insetInline : ts.AnyOf2<String, Float>;
	/**
		The **`inset-inline-end`** CSS property defines the logical inline end inset of an element, which maps to a physical inset depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top`, `right`, `bottom`, or `left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|  n/a   | **63**  |   No   | n/a  | No  |
	**/
	@:optional
	var insetInlineEnd : ts.AnyOf2<String, Float>;
	/**
		The **`inset-inline-start`** CSS property defines the logical inline start inset of an element, which maps to a physical offset depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top`, `right`, `bottom`, or `left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|  n/a   | **63**  |   No   | n/a  | No  |
	**/
	@:optional
	var insetInlineStart : ts.AnyOf2<String, Float>;
	/**
		The **`isolation`** CSS property determines whether an element must create a new stacking context.
		
		**Syntax**: `auto | isolate`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **41** | **36**  | **8**  | **79** | No  |
	**/
	@:optional
	var isolation : String;
	/**
		The CSS **`justify-content`** property defines how the browser distributes space between and around content items along the main-axis of a flex container, and the inline axis of a grid container.
		
		**Syntax**: `normal | <content-distribution> | <overflow-position>? [ <content-position> | left | right ]`
		
		**Initial value**: `normal`
		
		---
		
		_Supported in Flex Layout_
		
		|  Chrome  | Firefox |  Safari   |  Edge  |   IE   |
		| :------: | :-----: | :-------: | :----: | :----: |
		|  **52**  | **20**  |   **9**   | **12** | **11** |
		| 21 _-x-_ |         | 6.1 _-x-_ |        |        |
		
		---
		
		_Supported in Grid Layout_
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
		
		---
	**/
	@:optional
	var justifyContent : String;
	/**
		The CSS **`justify-items`** property defines the default `justify-self` for all items of the box, giving them all a default way of justifying each box along the appropriate axis.
		
		**Syntax**: `normal | stretch | <baseline-position> | <overflow-position>? [ <self-position> | left | right ] | legacy | legacy && [ left | right | center ]`
		
		**Initial value**: `legacy`
		
		---
		
		_Supported in Flex Layout_
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **52** | **20**  | **9**  | **12** | **11** |
		
		---
		
		_Supported in Grid Layout_
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **45**  | **10.1** | **16** | No  |
		
		---
	**/
	@:optional
	var justifyItems : String;
	/**
		The CSS **`justify-self`** property set the way a box is justified inside its alignment container along the appropriate axis.
		
		**Syntax**: `auto | normal | stretch | <baseline-position> | <overflow-position>? [ <self-position> | left | right ]`
		
		**Initial value**: `auto`
		
		---
		
		_Supported in Flex Layout_
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **45**  | **10.1** | **16** | No  |
		
		---
		
		_Supported in Grid Layout_
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **45**  | **10.1** | **16** | No  |
		
		---
	**/
	@:optional
	var justifySelf : String;
	/**
		The **`left`** CSS property participates in specifying the horizontal position of a _positioned element_. It has no effect on non-positioned elements.
		
		**Syntax**: `<length> | <percentage> | auto`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **1**  |  **1**  | **1**  | **12** | **5.5** |
	**/
	@:optional
	var left : ts.AnyOf2<String, Float>;
	/**
		The **`letter-spacing`** CSS property sets the spacing behavior between text characters.
		
		**Syntax**: `normal | <length>`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var letterSpacing : ts.AnyOf2<String, Float>;
	/**
		The **`line-break`** CSS property sets how to break lines of Chinese, Japanese, or Korean (CJK) text when working with punctuation and symbols.
		
		**Syntax**: `auto | loose | normal | strict | anywhere`
		
		**Initial value**: `auto`
		
		| Chrome  | Firefox |   Safari    |  Edge  |   IE    |
		| :-----: | :-----: | :---------: | :----: | :-----: |
		| **58**  | **69**  | **3** _-x-_ | **14** | **5.5** |
		| 1 _-x-_ |         |             |        |         |
	**/
	@:optional
	var lineBreak : String;
	/**
		The **`line-height`** CSS property sets the amount of space used for lines, such as in text. On block-level elements, it specifies the minimum height of line boxes within the element. On non-replaced inline elements, it specifies the height that is used to calculate line box height.
		
		**Syntax**: `normal | <number> | <length> | <percentage>`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var lineHeight : ts.AnyOf2<String, Float>;
	/**
		The **`line-height-step`** CSS property sets the step unit for line box heights. When the property is set, line box heights are rounded up to the closest multiple of the unit.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|  n/a   |   No    |   No   | n/a  | No  |
	**/
	@:optional
	var lineHeightStep : ts.AnyOf2<String, Float>;
	/**
		The **`list-style-image`** CSS property sets an image to be used as the list item marker.
		
		**Syntax**: `<url> | none`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var listStyleImage : String;
	/**
		The **`list-style-position`** CSS property sets the position of the `::marker` relative to a list item.
		
		**Syntax**: `inside | outside`
		
		**Initial value**: `outside`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var listStylePosition : String;
	/**
		The **`list-style-type`** CSS property sets the marker (such as a disc, character, or custom counter style) of a list item element.
		
		**Syntax**: `<counter-style> | <string> | none`
		
		**Initial value**: `disc`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var listStyleType : String;
	/**
		The **`margin-block`** CSS property defines the logical block start and end margins of an element, which maps to physical margins depending on the element's writing mode, directionality, and text orientation.
		
		**Syntax**: `<'margin-left'>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **66**  |   No   | **79** | No  |
	**/
	@:optional
	var marginBlock : ts.AnyOf2<String, Float>;
	/**
		The **`margin-block-end`** CSS property defines the logical block end margin of an element, which maps to a physical margin depending on the element's writing mode, directionality, and text orientation.
		
		**Syntax**: `<'margin-left'>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var marginBlockEnd : ts.AnyOf2<String, Float>;
	/**
		The **`margin-block-start`** CSS property defines the logical block start margin of an element, which maps to a physical margin depending on the element's writing mode, directionality, and text orientation.
		
		**Syntax**: `<'margin-left'>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var marginBlockStart : ts.AnyOf2<String, Float>;
	/**
		The **`margin-bottom`** CSS property sets the margin area on the bottom of an element. A positive value places it farther from its neighbors, while a negative value places it closer.
		
		**Syntax**: `<length> | <percentage> | auto`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **3** |
	**/
	@:optional
	var marginBottom : ts.AnyOf2<String, Float>;
	/**
		The **`margin-inline`** CSS property defines the logical inline start and end margins of an element, which maps to physical margins depending on the element's writing mode, directionality, and text orientation.
		
		**Syntax**: `<'margin-left'>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **66**  |   No   | **79** | No  |
	**/
	@:optional
	var marginInline : ts.AnyOf2<String, Float>;
	/**
		The **`margin-inline-end`** CSS property defines the logical inline end margin of an element, which maps to a physical margin depending on the element's writing mode, directionality, and text orientation. In other words, it corresponds to the `margin-top`, `margin-right`, `margin-bottom` or `margin-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'margin-left'>`
		
		**Initial value**: `0`
		
		|          Chrome          |        Firefox        |          Safari          |  Edge  | IE  |
		| :----------------------: | :-------------------: | :----------------------: | :----: | :-: |
		|          **69**          |        **41**         |         **12.1**         | **79** | No  |
		| 2 _(-webkit-margin-end)_ | 3 _(-moz-margin-end)_ | 3 _(-webkit-margin-end)_ |        |     |
	**/
	@:optional
	var marginInlineEnd : ts.AnyOf2<String, Float>;
	/**
		The **`margin-inline-start`** CSS property defines the logical inline start margin of an element, which maps to a physical margin depending on the element's writing mode, directionality, and text orientation. It corresponds to the `margin-top`, `margin-right`, `margin-bottom`, or `margin-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'margin-left'>`
		
		**Initial value**: `0`
		
		|           Chrome           |         Firefox         |           Safari           |  Edge  | IE  |
		| :------------------------: | :---------------------: | :------------------------: | :----: | :-: |
		|           **69**           |         **41**          |          **12.1**          | **79** | No  |
		| 2 _(-webkit-margin-start)_ | 3 _(-moz-margin-start)_ | 3 _(-webkit-margin-start)_ |        |     |
	**/
	@:optional
	var marginInlineStart : ts.AnyOf2<String, Float>;
	/**
		The **`margin-left`** CSS property sets the margin area on the left side of an element. A positive value places it farther from its neighbors, while a negative value places it closer.
		
		**Syntax**: `<length> | <percentage> | auto`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **3** |
	**/
	@:optional
	var marginLeft : ts.AnyOf2<String, Float>;
	/**
		The **`margin-right`** CSS property sets the margin area on the right side of an element. A positive value places it farther from its neighbors, while a negative value places it closer.
		
		**Syntax**: `<length> | <percentage> | auto`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **3** |
	**/
	@:optional
	var marginRight : ts.AnyOf2<String, Float>;
	/**
		The **`margin-top`** CSS property sets the margin area on the top of an element. A positive value places it farther from its neighbors, while a negative value places it closer.
		
		**Syntax**: `<length> | <percentage> | auto`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **3** |
	**/
	@:optional
	var marginTop : ts.AnyOf2<String, Float>;
	/**
		The **`mask-border-mode`** CSS property specifies the blending mode used in a mask border.
		
		**Syntax**: `luminance | alpha`
		
		**Initial value**: `alpha`
	**/
	@:optional
	var maskBorderMode : String;
	/**
		The **`mask-border-outset`** CSS property specifies the distance by which an element's mask border is set out from its border box.
		
		**Syntax**: `[ <length> | <number> ]{1,4}`
		
		**Initial value**: `0`
	**/
	@:optional
	var maskBorderOutset : ts.AnyOf2<String, Float>;
	/**
		The **`mask-border-repeat`** CSS property sets how the edge regions of a source image are adjusted to fit the dimensions of an element's mask border.
		
		**Syntax**: `[ stretch | repeat | round | space ]{1,2}`
		
		**Initial value**: `stretch`
	**/
	@:optional
	var maskBorderRepeat : String;
	/**
		The **`mask-border-slice`** CSS property divides the image set by `mask-border-source` into regions. These regions are used to form the components of an element's mask border.
		
		**Syntax**: `<number-percentage>{1,4} fill?`
		
		**Initial value**: `0`
	**/
	@:optional
	var maskBorderSlice : ts.AnyOf2<String, Float>;
	/**
		The **`mask-border-source`** CSS property sets the source image used to create an element's mask border.
		
		**Syntax**: `none | <image>`
		
		**Initial value**: `none`
	**/
	@:optional
	var maskBorderSource : String;
	/**
		The **`mask-border-width`** CSS property sets the width of an element's mask border.
		
		**Syntax**: `[ <length-percentage> | <number> | auto ]{1,4}`
		
		**Initial value**: `auto`
	**/
	@:optional
	var maskBorderWidth : ts.AnyOf2<String, Float>;
	/**
		The **`mask-clip`** CSS property determines the area, which is affected by a mask. The painted content of an element must be restricted to this area.
		
		**Syntax**: `[ <geometry-box> | no-clip ]#`
		
		**Initial value**: `border-box`
		
		|   Chrome    | Firefox |   Safari    |     Edge     | IE  |
		| :---------: | :-----: | :---------: | :----------: | :-: |
		| **1** _-x-_ | **53**  | **4** _-x-_ | **79** _-x-_ | No  |
	**/
	@:optional
	var maskClip : String;
	/**
		The **`mask-composite`** CSS property represents a compositing operation used on the current mask layer with the mask layers below it.
		
		**Syntax**: `<compositing-operator>#`
		
		**Initial value**: `add`
		
		| Chrome | Firefox | Safari | Edge  | IE  |
		| :----: | :-----: | :----: | :---: | :-: |
		|   No   | **53**  |   No   | 18-79 | No  |
	**/
	@:optional
	var maskComposite : String;
	/**
		The **`mask-image`** CSS property sets the image that is used as mask layer for an element.
		
		**Syntax**: `<mask-reference>#`
		
		**Initial value**: `none`
		
		|   Chrome    | Firefox |   Safari    |  Edge  | IE  |
		| :---------: | :-----: | :---------: | :----: | :-: |
		| **1** _-x-_ | **53**  | **4** _-x-_ | **16** | No  |
	**/
	@:optional
	var maskImage : String;
	/**
		The **`mask-mode`** CSS property sets whether the mask reference defined by `mask-image` is treated as a luminance or alpha mask.
		
		**Syntax**: `<masking-mode>#`
		
		**Initial value**: `match-source`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **53**  |   No   |  No  | No  |
	**/
	@:optional
	var maskMode : String;
	/**
		The **`mask-origin`** CSS property sets the origin of a mask.
		
		**Syntax**: `<geometry-box>#`
		
		**Initial value**: `border-box`
		
		|   Chrome    | Firefox |   Safari    |     Edge     | IE  |
		| :---------: | :-----: | :---------: | :----------: | :-: |
		| **1** _-x-_ | **53**  | **4** _-x-_ | **79** _-x-_ | No  |
	**/
	@:optional
	var maskOrigin : String;
	/**
		The **`mask-position`** CSS property sets the initial position, relative to the mask position layer set by `mask-origin`, for each defined mask image.
		
		**Syntax**: `<position>#`
		
		**Initial value**: `center`
		
		|   Chrome    | Firefox |    Safari     |  Edge  | IE  |
		| :---------: | :-----: | :-----------: | :----: | :-: |
		| **1** _-x-_ | **53**  | **3.2** _-x-_ | **18** | No  |
	**/
	@:optional
	var maskPosition : ts.AnyOf2<String, Float>;
	/**
		The **`mask-repeat`** CSS property sets how mask images are repeated. A mask image can be repeated along the horizontal axis, the vertical axis, both axes, or not repeated at all.
		
		**Syntax**: `<repeat-style>#`
		
		**Initial value**: `no-repeat`
		
		|   Chrome    | Firefox |    Safari     |  Edge  | IE  |
		| :---------: | :-----: | :-----------: | :----: | :-: |
		| **1** _-x-_ | **53**  | **3.2** _-x-_ | **18** | No  |
	**/
	@:optional
	var maskRepeat : String;
	/**
		The **`mask-size`** CSS property specifies the sizes of the mask images. The size of the image can be fully or partially constrained in order to preserve its intrinsic ratio.
		
		**Syntax**: `<bg-size>#`
		
		**Initial value**: `auto`
		
		|   Chrome    | Firefox |   Safari    |  Edge  | IE  |
		| :---------: | :-----: | :---------: | :----: | :-: |
		| **4** _-x-_ | **53**  | **4** _-x-_ | **18** | No  |
	**/
	@:optional
	var maskSize : ts.AnyOf2<String, Float>;
	/**
		The **`mask-type`** CSS property sets whether an SVG `<mask>` element is used as a _luminance_ or an _alpha_ mask. It applies to the `<mask>` element itself.
		
		**Syntax**: `luminance | alpha`
		
		**Initial value**: `luminance`
		
		| Chrome | Firefox | Safari  |  Edge  | IE  |
		| :----: | :-----: | :-----: | :----: | :-: |
		| **24** | **35**  | **6.1** | **79** | No  |
	**/
	@:optional
	var maskType : String;
	/**
		The `**max-block-size**` CSS property specifies the maximum size of an element in the direction opposite that of the writing direction as specified by `writing-mode`. That is, if the writing direction is horizontal, then `max-block-size` is equivalent to `max-height`; if the writing direction is vertical, `max-block-size` is the same as `max-width`.
		
		**Syntax**: `<'max-width'>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var maxBlockSize : ts.AnyOf2<String, Float>;
	/**
		The **`max-height`** CSS property sets the maximum height of an element. It prevents the used value of the `height` property from becoming larger than the value specified for `max-height`.
		
		**Syntax**: `auto | <length> | <percentage> | min-content | max-content | fit-content(<length-percentage>)`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **18** |  **1**  | **1.3** | **12** | **7** |
	**/
	@:optional
	var maxHeight : ts.AnyOf2<String, Float>;
	/**
		The **`max-inline-size`** CSS property defines the horizontal or vertical maximum size of an element's block depending on its writing mode. It corresponds to the `max-width` or the `max-height` property depending on the value defined for `writing-mode`. If the writing mode is vertically oriented, the value of `max-inline-size` relates to the maximal height of the element, otherwise it relates to the maximal width of the element. It relates to `max-block-size`, which defines the other dimension of the element.
		
		**Syntax**: `<'max-width'>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |   Safari   |  Edge  | IE  |
		| :----: | :-----: | :--------: | :----: | :-: |
		| **57** | **41**  |  **12.1**  | **79** | No  |
		|        |         | 10.1 _-x-_ |        |     |
	**/
	@:optional
	var maxInlineSize : ts.AnyOf2<String, Float>;
	/**
		**Syntax**: `none | <integer>`
		
		**Initial value**: `none`
	**/
	@:optional
	var maxLines : ts.AnyOf2<Float, String>;
	/**
		The **`max-width`** CSS property sets the maximum width of an element. It prevents the used value of the `width` property from becoming larger than the value specified by `max-width`.
		
		**Syntax**: `auto | <length> | <percentage> | min-content | max-content | fit-content(<length-percentage>)`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **7** |
	**/
	@:optional
	var maxWidth : ts.AnyOf2<String, Float>;
	/**
		The **`min-block-size`** CSS property defines the minimum horizontal or vertical size of an element's block, depending on its writing mode. It corresponds to either the `min-width` or the `min-height` property, depending on the value of `writing-mode`.
		
		**Syntax**: `<'min-width'>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var minBlockSize : ts.AnyOf2<String, Float>;
	/**
		The **`min-height`** CSS property sets the minimum height of an element. It prevents the used value of the `height` property from becoming smaller than the value specified for `min-height`.
		
		**Syntax**: `auto | <length> | <percentage> | min-content | max-content | fit-content(<length-percentage>)`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **1**  |  **3**  | **1.3** | **12** | **7** |
	**/
	@:optional
	var minHeight : ts.AnyOf2<String, Float>;
	/**
		The **`min-inline-size`** CSS property defines the horizontal or vertical minimal size of an element's block, depending on its writing mode. It corresponds to either the `min-width` or the `min-height` property, depending on the value of `writing-mode`.
		
		**Syntax**: `<'min-width'>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var minInlineSize : ts.AnyOf2<String, Float>;
	/**
		The **`min-width`** CSS property sets the minimum width of an element. It prevents the used value of the `width` property from becoming smaller than the value specified for `min-width`.
		
		**Syntax**: `auto | <length> | <percentage> | min-content | max-content | fit-content(<length-percentage>)`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **7** |
	**/
	@:optional
	var minWidth : ts.AnyOf2<String, Float>;
	/**
		The **`mix-blend-mode`** CSS property sets how an element's content should blend with the content of the element's parent and the element's background.
		
		**Syntax**: `<blend-mode>`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **41** | **32**  | **8**  | **79** | No  |
	**/
	@:optional
	var mixBlendMode : String;
	/**
		The **`offset-distance`** CSS property specifies a position along an `offset-path`.
		
		**Syntax**: `<length-percentage>`
		
		**Initial value**: `0`
		
		|         Chrome         | Firefox | Safari |  Edge  | IE  |
		| :--------------------: | :-----: | :----: | :----: | :-: |
		|         **55**         | **72**  |   No   | **79** | No  |
		| 46 _(motion-distance)_ |         |        |        |     |
	**/
	@:optional
	var motionDistance : ts.AnyOf2<String, Float>;
	/**
		The **`offset-path`** CSS property specifies a motion path for an element to follow and defines the element's positioning within the parent container or SVG coordinate system.
		
		**Syntax**: `none | ray( [ <angle> && <size>? && contain? ] ) | <path()> | <url> | [ <basic-shape> || <geometry-box> ]`
		
		**Initial value**: `none`
		
		|       Chrome       | Firefox | Safari |  Edge  | IE  |
		| :----------------: | :-----: | :----: | :----: | :-: |
		|       **55**       | **72**  |   No   | **79** | No  |
		| 46 _(motion-path)_ |         |        |        |     |
	**/
	@:optional
	var motionPath : String;
	/**
		The **`offset-rotate`** CSS property defines the direction of the element while positioning along the offset path.
		
		**Syntax**: `[ auto | reverse ] || <angle>`
		
		**Initial value**: `auto`
		
		|         Chrome         | Firefox | Safari |  Edge  | IE  |
		| :--------------------: | :-----: | :----: | :----: | :-: |
		|         **56**         | **72**  |   No   | **79** | No  |
		| 46 _(motion-rotation)_ |         |        |        |     |
	**/
	@:optional
	var motionRotation : String;
	/**
		The **`object-fit`** CSS property sets how the content of a replaced element, such as an `<img>` or `<video>`, should be resized to fit its container.
		
		**Syntax**: `fill | contain | cover | none | scale-down`
		
		**Initial value**: `fill`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **31** | **36**  | **10** | **16** | No  |
	**/
	@:optional
	var objectFit : String;
	/**
		The **`object-position`** CSS property specifies the alignment of the selected replaced element's contents within the element's box. Areas of the box which aren't covered by the replaced element's object will show the element's background.
		
		**Syntax**: `<position>`
		
		**Initial value**: `50% 50%`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **31** | **36**  | **10** | **16** | No  |
	**/
	@:optional
	var objectPosition : ts.AnyOf2<String, Float>;
	/**
		**Syntax**: `auto | <position>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **79** | **72**  |   No   | **79** | No  |
	**/
	@:optional
	var offsetAnchor : ts.AnyOf2<String, Float>;
	/**
		The **`offset-distance`** CSS property specifies a position along an `offset-path`.
		
		**Syntax**: `<length-percentage>`
		
		**Initial value**: `0`
		
		|         Chrome         | Firefox | Safari |  Edge  | IE  |
		| :--------------------: | :-----: | :----: | :----: | :-: |
		|         **55**         | **72**  |   No   | **79** | No  |
		| 46 _(motion-distance)_ |         |        |        |     |
	**/
	@:optional
	var offsetDistance : ts.AnyOf2<String, Float>;
	/**
		The **`offset-path`** CSS property specifies a motion path for an element to follow and defines the element's positioning within the parent container or SVG coordinate system.
		
		**Syntax**: `none | ray( [ <angle> && <size>? && contain? ] ) | <path()> | <url> | [ <basic-shape> || <geometry-box> ]`
		
		**Initial value**: `none`
		
		|       Chrome       | Firefox | Safari |  Edge  | IE  |
		| :----------------: | :-----: | :----: | :----: | :-: |
		|       **55**       | **72**  |   No   | **79** | No  |
		| 46 _(motion-path)_ |         |        |        |     |
	**/
	@:optional
	var offsetPath : String;
	/**
		The **`offset-rotate`** CSS property defines the direction of the element while positioning along the offset path.
		
		**Syntax**: `[ auto | reverse ] || <angle>`
		
		**Initial value**: `auto`
		
		|         Chrome         | Firefox | Safari |  Edge  | IE  |
		| :--------------------: | :-----: | :----: | :----: | :-: |
		|         **56**         | **72**  |   No   | **79** | No  |
		| 46 _(motion-rotation)_ |         |        |        |     |
	**/
	@:optional
	var offsetRotate : String;
	/**
		The **`offset-rotate`** CSS property defines the direction of the element while positioning along the offset path.
		
		**Syntax**: `[ auto | reverse ] || <angle>`
		
		**Initial value**: `auto`
		
		|         Chrome         | Firefox | Safari |  Edge  | IE  |
		| :--------------------: | :-----: | :----: | :----: | :-: |
		|         **56**         | **72**  |   No   | **79** | No  |
		| 46 _(motion-rotation)_ |         |        |        |     |
	**/
	@:optional
	var offsetRotation : String;
	/**
		The **`opacity`** CSS property sets the transparency of an element or the degree to which content behind an element is visible.
		
		**Syntax**: `<alpha-value>`
		
		**Initial value**: `1.0`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **2**  | **12** | **9** |
	**/
	@:optional
	var opacity : ts.AnyOf2<String, Float>;
	/**
		The **`order`** CSS property sets the order to lay out an item in a flex or grid container. Items in a container are sorted by ascending `order` value and then by their source code order.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `0`
		
		|  Chrome  | Firefox | Safari  |  Edge  |    IE    |
		| :------: | :-----: | :-----: | :----: | :------: |
		|  **29**  | **20**  |  **9**  | **12** |  **11**  |
		| 21 _-x-_ |         | 7 _-x-_ |        | 10 _-x-_ |
	**/
	@:optional
	var order : ts.AnyOf2<Float, String>;
	/**
		The **`orphans`** CSS property sets the minimum number of lines in a block container that must be shown at the _bottom_ of a page, region, or column.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `2`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **25** |   No    | **1.3** | **12** | **8** |
	**/
	@:optional
	var orphans : ts.AnyOf2<Float, String>;
	/**
		The **`outline-color`** CSS property sets the color of an element's outline.
		
		**Syntax**: `<color> | invert`
		
		**Initial value**: `invert`, for browsers supporting it, `currentColor` for the other
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **1**  | **1.5** | **1.2** | **12** | **8** |
	**/
	@:optional
	var outlineColor : String;
	/**
		The **`outline-offset`** CSS property sets the amount of space between an outline and the edge or border of an element.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari  |  Edge  | IE  |
		| :----: | :-----: | :-----: | :----: | :-: |
		| **1**  | **1.5** | **1.2** | **15** | No  |
	**/
	@:optional
	var outlineOffset : ts.AnyOf2<String, Float>;
	/**
		The **`outline-style`** CSS property sets the style of an element's outline. An outline is a line that is drawn around an element, outside the `border`.
		
		**Syntax**: `auto | <'border-style'>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **1**  | **1.5** | **1.2** | **12** | **8** |
	**/
	@:optional
	var outlineStyle : String;
	/**
		The **`outline-width`** CSS property sets the thickness of an element's outline. An outline is a line that is drawn around an element, outside the `border`.
		
		**Syntax**: `<line-width>`
		
		**Initial value**: `medium`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **1**  | **1.5** | **1.2** | **12** | **8** |
	**/
	@:optional
	var outlineWidth : ts.AnyOf2<String, Float>;
	/**
		**Syntax**: `auto | none`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **56** | **66**  |   No   | **79** | No  |
	**/
	@:optional
	var overflowAnchor : String;
	/**
		**Syntax**: `visible | hidden | clip | scroll | auto`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **69**  |   No   |  No  | No  |
	**/
	@:optional
	var overflowBlock : String;
	/**
		The **`overflow-clip-box`** CSS property specifies relative to which box the clipping happens when there is an overflow. It is short hand for the `overflow-clip-box-inline` and `overflow-clip-box-block` properties.
		
		**Syntax**: `padding-box | content-box`
		
		**Initial value**: `padding-box`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **29**  |   No   |  No  | No  |
	**/
	@:optional
	var overflowClipBox : String;
	/**
		**Syntax**: `visible | hidden | clip | scroll | auto`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **69**  |   No   |  No  | No  |
	**/
	@:optional
	var overflowInline : String;
	/**
		The `**overflow-wrap**` CSS property sets whether the browser should insert line breaks within words to prevent text from overflowing its content box.
		
		**Syntax**: `normal | break-word | anywhere`
		
		**Initial value**: `normal`
		
		|     Chrome      |      Firefox      |     Safari      |       Edge       |          IE           |
		| :-------------: | :---------------: | :-------------: | :--------------: | :-------------------: |
		|     **23**      |      **49**       |     **6.1**     |      **18**      | **5.5** _(word-wrap)_ |
		| 1 _(word-wrap)_ | 3.5 _(word-wrap)_ | 1 _(word-wrap)_ | 12 _(word-wrap)_ |                       |
	**/
	@:optional
	var overflowWrap : String;
	/**
		The **`overflow-x`** CSS property sets what shows when content overflows a block-level element's left and right edges. This may be nothing, a scroll bar, or the overflow content.
		
		**Syntax**: `visible | hidden | clip | scroll | auto`
		
		**Initial value**: `visible`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  | **3.5** | **3**  | **12** | **5** |
	**/
	@:optional
	var overflowX : String;
	/**
		The **`overflow-y`** CSS property sets what shows when content overflows a block-level element's top and bottom edges. This may be nothing, a scroll bar, or the overflow content.
		
		**Syntax**: `visible | hidden | clip | scroll | auto`
		
		**Initial value**: `visible`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  | **1.5** | **3**  | **12** | **5** |
	**/
	@:optional
	var overflowY : String;
	/**
		The **`overscroll-behavior`** CSS property sets what a browser does when reaching the boundary of a scrolling area. It's a shorthand for `overscroll-behavior-x` and `overscroll-behavior-y`.
		
		**Syntax**: `[ contain | none | auto ]{1,2}`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **63** | **59**  |   No   | **18** | No  |
	**/
	@:optional
	var overscrollBehavior : String;
	/**
		The **`overscroll-behavior-block`** CSS property sets the browser's behavior when the block direction boundary of a scrolling area is reached.
		
		**Syntax**: `contain | none | auto`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **77** | **73**  |   No   | **79** | No  |
	**/
	@:optional
	var overscrollBehaviorBlock : String;
	/**
		The **`overscroll-behavior-inline`** CSS property sets the browser's behavior when the inline direction boundary of a scrolling area is reached.
		
		**Syntax**: `contain | none | auto`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **77** | **73**  |   No   | **79** | No  |
	**/
	@:optional
	var overscrollBehaviorInline : String;
	/**
		The **`overscroll-behavior-x`** CSS property sets the browser's behavior when the horizontal boundary of a scrolling area is reached.
		
		**Syntax**: `contain | none | auto`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **63** | **59**  |   No   | **18** | No  |
	**/
	@:optional
	var overscrollBehaviorX : String;
	/**
		The **`overscroll-behavior-y`** CSS property sets the browser's behavior when the vertical boundary of a scrolling area is reached.
		
		**Syntax**: `contain | none | auto`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **63** | **59**  |   No   | **18** | No  |
	**/
	@:optional
	var overscrollBehaviorY : String;
	/**
		The **`padding-block`** CSS property defines the logical block start and end padding of an element, which maps to physical padding properties depending on the element's writing mode, directionality, and text orientation.
		
		**Syntax**: `<'padding-left'>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **66**  |   No   | **79** | No  |
	**/
	@:optional
	var paddingBlock : ts.AnyOf2<String, Float>;
	/**
		The **`padding-block-end`** CSS property defines the logical block end padding of an element, which maps to a physical padding depending on the element's writing mode, directionality, and text orientation. It corresponds to the `padding-top`, `padding-right`, `padding-bottom`, or `padding-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'padding-left'>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var paddingBlockEnd : ts.AnyOf2<String, Float>;
	/**
		The **`padding-block-start`** CSS property defines the logical block start padding of an element, which maps to a physical padding depending on the element's writing mode, directionality, and text orientation. It corresponds to the `padding-top`, `padding-right`, `padding-bottom`, or `padding-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'padding-left'>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var paddingBlockStart : ts.AnyOf2<String, Float>;
	/**
		The **`padding-bottom`** CSS property sets the height of the padding area on the bottom of an element.
		
		**Syntax**: `<length> | <percentage>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var paddingBottom : ts.AnyOf2<String, Float>;
	/**
		The **`padding-inline`** CSS property defines the logical inline start and end padding of an element, which maps to physical padding properties depending on the element's writing mode, directionality, and text orientation.
		
		**Syntax**: `<'padding-left'>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **66**  |   No   | **79** | No  |
	**/
	@:optional
	var paddingInline : ts.AnyOf2<String, Float>;
	/**
		The **`padding-inline-end`** CSS property defines the logical inline end padding of an element, which maps to a physical padding depending on the element's writing mode, directionality, and text orientation. It corresponds to the `padding-top`, `padding-right`, `padding-bottom`, or `padding-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'padding-left'>`
		
		**Initial value**: `0`
		
		|          Chrome           |        Firefox         |          Safari           |  Edge  | IE  |
		| :-----------------------: | :--------------------: | :-----------------------: | :----: | :-: |
		|          **69**           |         **41**         |         **12.1**          | **79** | No  |
		| 2 _(-webkit-padding-end)_ | 3 _(-moz-padding-end)_ | 3 _(-webkit-padding-end)_ |        |     |
	**/
	@:optional
	var paddingInlineEnd : ts.AnyOf2<String, Float>;
	/**
		The **`padding-inline-start`** CSS property defines the logical inline start padding of an element, which maps to a physical padding depending on the element's writing mode, directionality, and text orientation. It corresponds to the `padding-top`, `padding-right`, `padding-bottom`, or `padding-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'padding-left'>`
		
		**Initial value**: `0`
		
		|           Chrome            |         Firefox          |           Safari            |  Edge  | IE  |
		| :-------------------------: | :----------------------: | :-------------------------: | :----: | :-: |
		|           **69**            |          **41**          |          **12.1**           | **79** | No  |
		| 2 _(-webkit-padding-start)_ | 3 _(-moz-padding-start)_ | 3 _(-webkit-padding-start)_ |        |     |
	**/
	@:optional
	var paddingInlineStart : ts.AnyOf2<String, Float>;
	/**
		The **`padding-left`** CSS property sets the width of the padding area on the left side of an element.
		
		**Syntax**: `<length> | <percentage>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var paddingLeft : ts.AnyOf2<String, Float>;
	/**
		The **`padding-right`** CSS property sets the width of the padding area on the right side of an element.
		
		**Syntax**: `<length> | <percentage>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var paddingRight : ts.AnyOf2<String, Float>;
	/**
		The **`padding-top`** padding area on the top of an element.
		
		**Syntax**: `<length> | <percentage>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var paddingTop : ts.AnyOf2<String, Float>;
	/**
		The **`page-break-after`** CSS property adjusts page breaks _after_ the current element.
		
		**Syntax**: `auto | always | avoid | left | right | recto | verso`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **1**  |  **1**  | **1.2** | **12** | **4** |
	**/
	@:optional
	var pageBreakAfter : String;
	/**
		The **`page-break-before`** CSS property adjusts page breaks _before_ the current element.
		
		**Syntax**: `auto | always | avoid | left | right | recto | verso`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **1**  |  **1**  | **1.2** | **12** | **4** |
	**/
	@:optional
	var pageBreakBefore : String;
	/**
		The **`page-break-inside`** CSS property adjusts page breaks _inside_ the current element.
		
		**Syntax**: `auto | avoid`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **1**  | **19**  | **1.3** | **12** | **8** |
	**/
	@:optional
	var pageBreakInside : String;
	/**
		The **`paint-order`** CSS property lets you control the order in which the fill and stroke (and painting markers) of text content and shapes are drawn.
		
		**Syntax**: `normal | [ fill || stroke || markers ]`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **35** | **60**  | **8**  | **17** | No  |
	**/
	@:optional
	var paintOrder : String;
	/**
		The **`perspective`** CSS property determines the distance between the z=0 plane and the user in order to give a 3D-positioned element some perspective. Each 3D element with z>0 becomes larger; each 3D-element with z<0 becomes smaller. The strength of the effect is determined by the value of this property.
		
		**Syntax**: `none | <length>`
		
		**Initial value**: `none`
		
		|  Chrome  | Firefox  | Safari  |  Edge  |   IE   |
		| :------: | :------: | :-----: | :----: | :----: |
		|  **36**  |  **16**  |  **9**  | **12** | **10** |
		| 12 _-x-_ | 10 _-x-_ | 4 _-x-_ |        |        |
	**/
	@:optional
	var perspective : ts.AnyOf2<String, Float>;
	/**
		The **`perspective-origin`** CSS property determines the position at which the viewer is looking. It is used as the _vanishing point_ by the `perspective` property.
		
		**Syntax**: `<position>`
		
		**Initial value**: `50% 50%`
		
		|  Chrome  | Firefox  | Safari  |  Edge  |   IE   |
		| :------: | :------: | :-----: | :----: | :----: |
		|  **36**  |  **16**  |  **9**  | **12** | **10** |
		| 12 _-x-_ | 10 _-x-_ | 4 _-x-_ |        |        |
	**/
	@:optional
	var perspectiveOrigin : ts.AnyOf2<String, Float>;
	/**
		The `**place-content**` CSS property is a shorthand for `align-content` and `justify-content`. It can be used in any layout method which utilizes both of these alignment values.
		
		**Syntax**: `<'align-content'> <'justify-content'>?`
		
		**Initial value**: `normal`
		
		---
		
		_Supported in Flex Layout_
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **59** | **45**  | **9**  | **79** | No  |
		
		---
		
		_Supported in Grid Layout_
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **59** | **53**  | **11** | **79** | No  |
		
		---
	**/
	@:optional
	var placeContent : String;
	/**
		The **`pointer-events`** CSS property sets under what circumstances (if any) a particular graphic element can become the target of mouse events.
		
		**Syntax**: `auto | none | visiblePainted | visibleFill | visibleStroke | visible | painted | fill | stroke | all | inherit`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		| **1**  | **1.5** | **4**  | **12** | **11** |
	**/
	@:optional
	var pointerEvents : String;
	/**
		The **`position`** CSS property sets how an element is positioned in a document. The `top`, `right`, `bottom`, and `left` properties determine the final location of positioned elements.
		
		**Syntax**: `static | relative | absolute | sticky | fixed`
		
		**Initial value**: `static`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var position : String;
	/**
		The **`quotes`** CSS property sets how quotation marks appear.
		
		**Syntax**: `none | auto | [ <string> <string> ]+`
		
		**Initial value**: depends on user agent
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **11** | **1.5** | **9**  | **12** | **8** |
	**/
	@:optional
	var quotes : String;
	/**
		The **`resize`** CSS property sets whether an element is resizable, and if so, in which directions.
		
		**Syntax**: `none | both | horizontal | vertical | block | inline`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **1**  |  **4**  | **3**  | **79** | No  |
	**/
	@:optional
	var resize : String;
	/**
		The **`right`** CSS property participates in specifying the horizontal position of a _positioned element_. It has no effect on non-positioned elements.
		
		**Syntax**: `<length> | <percentage> | auto`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **1**  |  **1**  | **1**  | **12** | **5.5** |
	**/
	@:optional
	var right : ts.AnyOf2<String, Float>;
	/**
		The **`rotate`** CSS property allows you to specify rotation transforms individually and independantly of the `transform` property. This maps better to typical user interface usage, and saves having to remember the exact order of transform functions to specify in the `transform` value.
		
		**Syntax**: `none | <angle> | [ x | y | z | <number>{3} ] && <angle>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **72**  |   No   |  No  | No  |
	**/
	@:optional
	var rotate : String;
	/**
		The **`row-gap`** CSS property sets the size of the gap (gutter) between an element's grid rows.
		
		**Syntax**: `normal | <length-percentage>`
		
		**Initial value**: `normal`
		
		---
		
		_Supported in Flex Layout_
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **63**  |   No   |  No  | No  |
		
		---
		
		_Supported in Grid Layout_
		
		|       Chrome        |       Firefox       |          Safari           |  Edge  | IE  |
		| :-----------------: | :-----------------: | :-----------------------: | :----: | :-: |
		|       **66**        |       **61**        | **10.1** _(grid-row-gap)_ | **16** | No  |
		| 57 _(grid-row-gap)_ | 52 _(grid-row-gap)_ |                           |        |     |
		
		---
	**/
	@:optional
	var rowGap : ts.AnyOf2<String, Float>;
	/**
		The `**ruby-align**` CSS property defines the distribution of the different ruby elements over the base.
		
		**Syntax**: `start | center | space-between | space-around`
		
		**Initial value**: `space-around`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **38**  |   No   |  No  | No  |
	**/
	@:optional
	var rubyAlign : String;
	/**
		**Syntax**: `separate | collapse | auto`
		
		**Initial value**: `separate`
	**/
	@:optional
	var rubyMerge : String;
	/**
		The `**ruby-position**` CSS property defines the position of a ruby element relatives to its base element. It can be position over the element (`over`), under it (`under`), or between the characters, on their right side (`inter-character`).
		
		**Syntax**: `over | under | inter-character`
		
		**Initial value**: `over`
		
		| Chrome | Firefox | Safari | Edge  | IE  |
		| :----: | :-----: | :----: | :---: | :-: |
		|   No   | **38**  |   No   | 12-79 | No  |
	**/
	@:optional
	var rubyPosition : String;
	/**
		The **`scale`** CSS property allows you to specify scale transforms individually and independantly of the `transform` property. This maps better to typical user interface usage, and saves having to remember the exact order of transform functions to specify in the `transform` value.
		
		**Syntax**: `none | <number>{1,3}`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **72**  |   No   |  No  | No  |
	**/
	@:optional
	var scale : ts.AnyOf2<String, Float>;
	/**
		The **`scroll-behavior`** CSS property sets the behavior for a scrolling box when scrolling is triggered by the navigation or CSSOM scrolling APIs.
		
		**Syntax**: `auto | smooth`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **61** | **36**  |   No   | **79** | No  |
	**/
	@:optional
	var scrollBehavior : String;
	/**
		The **`scroll-margin`** property is a shorthand property which sets all of the `scroll-margin` longhands, assigning values much like the `margin` property does for the `margin-*` longhands.
		
		**Syntax**: `<length>{1,4}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |            Safari             |  Edge  | IE  |
		| :----: | :-----: | :---------------------------: | :----: | :-: |
		| **69** | **68**  | **11** _(scroll-snap-margin)_ | **79** | No  |
	**/
	@:optional
	var scrollMargin : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-block` property is a shorthand property which sets the scroll-margin longhands in the block dimension.
		
		**Syntax**: `<length>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  |   No   | **79** | No  |
	**/
	@:optional
	var scrollMarginBlock : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-block-end` property defines the margin of the scroll snap area at the end of the block dimension that is used for snapping this box to the snapport. The scroll snap area is determined by taking the transformed border box, finding its rectangular bounding box (axis-aligned in the scroll container’s coordinate space), then adding the specified outsets.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  |   No   | **79** | No  |
	**/
	@:optional
	var scrollMarginBlockEnd : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-block-start` property defines the margin of the scroll snap area at the start of the block dimension that is used for snapping this box to the snapport. The scroll snap area is determined by taking the transformed border box, finding its rectangular bounding box (axis-aligned in the scroll container’s coordinate space), then adding the specified outsets.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  |   No   | **79** | No  |
	**/
	@:optional
	var scrollMarginBlockStart : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-bottom` property defines the bottom margin of the scroll snap area that is used for snapping this box to the snapport. The scroll snap area is determined by taking the transformed border box, finding its rectangular bounding box (axis-aligned in the scroll container’s coordinate space), then adding the specified outsets.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |                Safari                |  Edge  | IE  |
		| :----: | :-----: | :----------------------------------: | :----: | :-: |
		| **69** | **68**  | **11** _(scroll-snap-margin-bottom)_ | **79** | No  |
	**/
	@:optional
	var scrollMarginBottom : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-inline` property is a shorthand property which sets the scroll-margin longhands in the inline dimension.
		
		**Syntax**: `<length>{1,2}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **68**  |   No   |  No  | No  |
	**/
	@:optional
	var scrollMarginInline : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-inline-end` property defines the margin of the scroll snap area at the end of the inline dimension that is used for snapping this box to the snapport. The scroll snap area is determined by taking the transformed border box, finding its rectangular bounding box (axis-aligned in the scroll container’s coordinate space), then adding the specified outsets.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  |   No   | **79** | No  |
	**/
	@:optional
	var scrollMarginInlineEnd : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-inline-start` property defines the margin of the scroll snap area at the start of the inline dimension that is used for snapping this box to the snapport. The scroll snap area is determined by taking the transformed border box, finding its rectangular bounding box (axis-aligned in the scroll container’s coordinate space), then adding the specified outsets.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  |   No   | **79** | No  |
	**/
	@:optional
	var scrollMarginInlineStart : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-left` property defines the left margin of the scroll snap area that is used for snapping this box to the snapport. The scroll snap area is determined by taking the transformed border box, finding its rectangular bounding box (axis-aligned in the scroll container’s coordinate space), then adding the specified outsets.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |               Safari               |  Edge  | IE  |
		| :----: | :-----: | :--------------------------------: | :----: | :-: |
		| **69** | **68**  | **11** _(scroll-snap-margin-left)_ | **79** | No  |
	**/
	@:optional
	var scrollMarginLeft : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-right` property defines the right margin of the scroll snap area that is used for snapping this box to the snapport. The scroll snap area is determined by taking the transformed border box, finding its rectangular bounding box (axis-aligned in the scroll container’s coordinate space), then adding the specified outsets.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |               Safari                |  Edge  | IE  |
		| :----: | :-----: | :---------------------------------: | :----: | :-: |
		| **69** | **68**  | **11** _(scroll-snap-margin-right)_ | **79** | No  |
	**/
	@:optional
	var scrollMarginRight : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-top` property defines the top margin of the scroll snap area that is used for snapping this box to the snapport. The scroll snap area is determined by taking the transformed border box, finding its rectangular bounding box (axis-aligned in the scroll container’s coordinate space), then adding the specified outsets.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |              Safari               |  Edge  | IE  |
		| :----: | :-----: | :-------------------------------: | :----: | :-: |
		| **69** | **68**  | **11** _(scroll-snap-margin-top)_ | **79** | No  |
	**/
	@:optional
	var scrollMarginTop : ts.AnyOf2<String, Float>;
	/**
		The scroll-padding property is a shorthand property which sets all of the scroll-padding longhands, assigning values much like the padding property does for the padding-\* longhands.  
		
		The scroll-padding properties define offsets for the optimal viewing region of the scrollport: the region used as the target region for placing things in view of the user. This allows the author to exclude regions of the scrollport that are obscured by other content (such as fixed-positioned toolbars or sidebars) or simply to put more breathing room between a targetted element and the edges of the scrollport.
		
		**Syntax**: `[ auto | <length-percentage> ]{1,4}`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  | **11** | **79** | No  |
	**/
	@:optional
	var scrollPadding : ts.AnyOf2<String, Float>;
	/**
		The `scroll-padding-block` property is a shorthand property which sets the scroll-padding longhands for the block dimension.  
		
		The scroll-padding properties define offsets for the optimal viewing region of the scrollport: the region used as the target region for placing things in view of the user. This allows the author to exclude regions of the scrollport that are obscured by other content (such as fixed-positioned toolbars or sidebars) or simply to put more breathing room between a targetted element and the edges of the scrollport.
		
		**Syntax**: `[ auto | <length-percentage> ]{1,2}`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  |   No   | **79** | No  |
	**/
	@:optional
	var scrollPaddingBlock : ts.AnyOf2<String, Float>;
	/**
		The `scroll-padding-block-end` property defines offsets for the end edge in the block dimension of the optimal viewing region of the scrollport: the region used as the target region for placing things in view of the user. This allows the author to exclude regions of the scrollport that are obscured by other content (such as fixed-positioned toolbars or sidebars) or simply to put more breathing room between a targetted element and the edges of the scrollport.
		
		**Syntax**: `auto | <length-percentage>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  |   No   | **79** | No  |
	**/
	@:optional
	var scrollPaddingBlockEnd : ts.AnyOf2<String, Float>;
	/**
		The `scroll-padding-block-start` property defines offsets for the start edge in the block dimension of the optimal viewing region of the scrollport: the region used as the target region for placing things in view of the user. This allows the author to exclude regions of the scrollport that are obscured by other content (such as fixed-positioned toolbars or sidebars) or simply to put more breathing room between a targetted element and the edges of the scrollport.
		
		**Syntax**: `auto | <length-percentage>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  |   No   | **79** | No  |
	**/
	@:optional
	var scrollPaddingBlockStart : ts.AnyOf2<String, Float>;
	/**
		The `scroll-padding-bottom` property defines offsets for the bottom of the optimal viewing region of the scrollport: the region used as the target region for placing things in view of the user. This allows the author to exclude regions of the scrollport that are obscured by other content (such as fixed-positioned toolbars or sidebars) or simply to put more breathing room between a targetted element and the edges of the scrollport.
		
		**Syntax**: `auto | <length-percentage>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  | **11** | **79** | No  |
	**/
	@:optional
	var scrollPaddingBottom : ts.AnyOf2<String, Float>;
	/**
		The `scroll-padding-inline` property is a shorthand property which sets the scroll-padding longhands for the inline dimension.  
		
		The scroll-padding properties define offsets for the optimal viewing region of the scrollport: the region used as the target region for placing things in view of the user. This allows the author to exclude regions of the scrollport that are obscured by other content (such as fixed-positioned toolbars or sidebars) or simply to put more breathing room between a targetted element and the edges of the scrollport.
		
		**Syntax**: `[ auto | <length-percentage> ]{1,2}`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  |   No   | **79** | No  |
	**/
	@:optional
	var scrollPaddingInline : ts.AnyOf2<String, Float>;
	/**
		The `scroll-padding-inline-end` property defines offsets for the end edge in the inline dimension of the optimal viewing region of the scrollport: the region used as the target region for placing things in view of the user. This allows the author to exclude regions of the scrollport that are obscured by other content (such as fixed-positioned toolbars or sidebars) or simply to put more breathing room between a targetted element and the edges of the scrollport.
		
		**Syntax**: `auto | <length-percentage>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  |   No   | **79** | No  |
	**/
	@:optional
	var scrollPaddingInlineEnd : ts.AnyOf2<String, Float>;
	/**
		The `scroll-padding-inline-start` property defines offsets for the start edge in the inline dimension of the optimal viewing region of the scrollport: the region used as the target region for placing things in view of the user. This allows the author to exclude regions of the scrollport that are obscured by other content (such as fixed-positioned toolbars or sidebars) or simply to put more breathing room between a targetted element and the edges of the scrollport.
		
		**Syntax**: `auto | <length-percentage>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  |   No   | **79** | No  |
	**/
	@:optional
	var scrollPaddingInlineStart : ts.AnyOf2<String, Float>;
	/**
		The `scroll-padding-left` property defines offsets for the left of the optimal viewing region of the scrollport: the region used as the target region for placing things in view of the user. This allows the author to exclude regions of the scrollport that are obscured by other content (such as fixed-positioned toolbars or sidebars) or simply to put more breathing room between a targetted element and the edges of the scrollport.
		
		**Syntax**: `auto | <length-percentage>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  | **11** | **79** | No  |
	**/
	@:optional
	var scrollPaddingLeft : ts.AnyOf2<String, Float>;
	/**
		The `scroll-padding-right` property defines offsets for the right of the optimal viewing region of the scrollport: the region used as the target region for placing things in view of the user. This allows the author to exclude regions of the scrollport that are obscured by other content (such as fixed-positioned toolbars or sidebars) or simply to put more breathing room between a targetted element and the edges of the scrollport.
		
		**Syntax**: `auto | <length-percentage>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  | **11** | **79** | No  |
	**/
	@:optional
	var scrollPaddingRight : ts.AnyOf2<String, Float>;
	/**
		The `scroll-padding-top` property defines offsets for the top of the optimal viewing region of the scrollport: the region used as the target region for placing things in view of the user. This allows the author to exclude regions of the scrollport that are obscured by other content (such as fixed-positioned toolbars or sidebars) or simply to put more breathing room between a targetted element and the edges of the scrollport.
		
		**Syntax**: `auto | <length-percentage>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  | **11** | **79** | No  |
	**/
	@:optional
	var scrollPaddingTop : ts.AnyOf2<String, Float>;
	/**
		The `scroll-snap-align` property specifies the box’s snap position as an alignment of its snap area (as the alignment subject) within its snap container’s snapport (as the alignment container). The two values specify the snapping alignment in the block axis and inline axis, respectively. If only one value is specified, the second value defaults to the same value.
		
		**Syntax**: `[ none | start | end | center ]{1,2}`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **68**  | **11** | **79** | No  |
	**/
	@:optional
	var scrollSnapAlign : String;
	/**
		The **`scroll-margin`** property is a shorthand property which sets all of the `scroll-margin` longhands, assigning values much like the `margin` property does for the `margin-*` longhands.
		
		**Syntax**: `<length>{1,4}`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |            Safari             |  Edge  | IE  |
		| :----: | :-----: | :---------------------------: | :----: | :-: |
		| **69** | **68**  | **11** _(scroll-snap-margin)_ | **79** | No  |
	**/
	@:optional
	var scrollSnapMargin : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-bottom` property defines the bottom margin of the scroll snap area that is used for snapping this box to the snapport. The scroll snap area is determined by taking the transformed border box, finding its rectangular bounding box (axis-aligned in the scroll container’s coordinate space), then adding the specified outsets.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |                Safari                |  Edge  | IE  |
		| :----: | :-----: | :----------------------------------: | :----: | :-: |
		| **69** | **68**  | **11** _(scroll-snap-margin-bottom)_ | **79** | No  |
	**/
	@:optional
	var scrollSnapMarginBottom : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-left` property defines the left margin of the scroll snap area that is used for snapping this box to the snapport. The scroll snap area is determined by taking the transformed border box, finding its rectangular bounding box (axis-aligned in the scroll container’s coordinate space), then adding the specified outsets.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |               Safari               |  Edge  | IE  |
		| :----: | :-----: | :--------------------------------: | :----: | :-: |
		| **69** | **68**  | **11** _(scroll-snap-margin-left)_ | **79** | No  |
	**/
	@:optional
	var scrollSnapMarginLeft : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-right` property defines the right margin of the scroll snap area that is used for snapping this box to the snapport. The scroll snap area is determined by taking the transformed border box, finding its rectangular bounding box (axis-aligned in the scroll container’s coordinate space), then adding the specified outsets.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |               Safari                |  Edge  | IE  |
		| :----: | :-----: | :---------------------------------: | :----: | :-: |
		| **69** | **68**  | **11** _(scroll-snap-margin-right)_ | **79** | No  |
	**/
	@:optional
	var scrollSnapMarginRight : ts.AnyOf2<String, Float>;
	/**
		The `scroll-margin-top` property defines the top margin of the scroll snap area that is used for snapping this box to the snapport. The scroll snap area is determined by taking the transformed border box, finding its rectangular bounding box (axis-aligned in the scroll container’s coordinate space), then adding the specified outsets.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |              Safari               |  Edge  | IE  |
		| :----: | :-----: | :-------------------------------: | :----: | :-: |
		| **69** | **68**  | **11** _(scroll-snap-margin-top)_ | **79** | No  |
	**/
	@:optional
	var scrollSnapMarginTop : ts.AnyOf2<String, Float>;
	/**
		The **`scroll-snap-stop`** CSS property defines whether the scroll container is allowed to "pass over" possible snap positions.
		
		**Syntax**: `normal | always`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **75** |   No    |   No   | **79** | No  |
	**/
	@:optional
	var scrollSnapStop : String;
	/**
		The **`scroll-snap-type`** CSS property sets how strictly snap points are enforced on the scroll container in case there is one.
		
		**Syntax**: `none | [ x | y | block | inline | both ] [ mandatory | proximity ]?`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari  |     Edge     |      IE      |
		| :----: | :-----: | :-----: | :----------: | :----------: |
		| **69** |  39-68  | **11**  | **12** _-x-_ | **10** _-x-_ |
		|        |         | 9 _-x-_ |              |              |
	**/
	@:optional
	var scrollSnapType : String;
	/**
		The **`scrollbar-color`** CSS property sets the color of the scrollbar track and thumb.
		
		**Syntax**: `auto | dark | light | <color>{2}`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **64**  |   No   |  No  | No  |
	**/
	@:optional
	var scrollbarColor : String;
	/**
		The `scrollbar-width` property allows the author to set the maximum thickness of an element’s scrollbars when they are shown.
		
		**Syntax**: `auto | thin | none`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **64**  |   No   |  No  | No  |
	**/
	@:optional
	var scrollbarWidth : String;
	/**
		The **`shape-image-threshold`** CSS property sets the alpha channel threshold used to extract the shape using an image as the value for `shape-outside`.
		
		**Syntax**: `<alpha-value>`
		
		**Initial value**: `0.0`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **37** | **62**  | **10.1** | **79** | No  |
	**/
	@:optional
	var shapeImageThreshold : ts.AnyOf2<String, Float>;
	/**
		The **`shape-margin`** CSS property sets a margin for a CSS shape created using `shape-outside`.
		
		**Syntax**: `<length-percentage>`
		
		**Initial value**: `0`
		
		| Chrome | Firefox |     Safari     |  Edge  | IE  |
		| :----: | :-----: | :------------: | :----: | :-: |
		| **37** | **62**  | **10.1** _-x-_ | **79** | No  |
	**/
	@:optional
	var shapeMargin : ts.AnyOf2<String, Float>;
	/**
		The **`shape-outside`** CSS property defines a shape—which may be non-rectangular—around which adjacent inline content should wrap. By default, inline content wraps around its margin box; `shape-outside` provides a way to customize this wrapping, making it possible to wrap text around complex objects rather than simple boxes.
		
		**Syntax**: `none | <shape-box> || <basic-shape> | <image>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **37** | **62**  | **10.1** | **79** | No  |
	**/
	@:optional
	var shapeOutside : String;
	/**
		The **`tab-size`** CSS property is used to customize the width of a tab (`U+0009`) character.
		
		**Syntax**: `<integer> | <length>`
		
		**Initial value**: `8`
		
		| Chrome |   Firefox   | Safari  |  Edge  | IE  |
		| :----: | :---------: | :-----: | :----: | :-: |
		| **21** | **4** _-x-_ | **6.1** | **79** | No  |
	**/
	@:optional
	var tabSize : ts.AnyOf2<String, Float>;
	/**
		The **`table-layout`** CSS property sets the algorithm used to lay out `<table>` cells, rows, and columns.
		
		**Syntax**: `auto | fixed`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **14** |  **1**  | **1**  | **12** | **5** |
	**/
	@:optional
	var tableLayout : String;
	/**
		The **`text-align`** CSS property sets the horizontal alignment of an inline or table-cell box. This means it works like `vertical-align` but in the horizontal direction.
		
		**Syntax**: `start | end | left | right | center | justify | match-parent`
		
		**Initial value**: `start`, or a nameless value that acts as `left` if _direction_ is `ltr`, `right` if _direction_ is `rtl` if `start` is not supported by the browser.
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **3** |
	**/
	@:optional
	var textAlign : String;
	/**
		The **`text-align-last`** CSS property sets how the last line of a block or a line, right before a forced line break, is aligned.
		
		**Syntax**: `auto | start | end | left | right | center | justify`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **47** | **49**  |   No   | **12** | **5.5** |
	**/
	@:optional
	var textAlignLast : String;
	/**
		The **`text-combine-upright`** CSS property sets the combination of characters into the space of a single character. If the combined text is wider than 1em, the user agent must fit the contents within 1em. The resulting composition is treated as a single upright glyph for layout and decoration. This property only has an effect in vertical writing modes.
		
		**Syntax**: `none | all | [ digits <integer>? ]`
		
		**Initial value**: `none`
		
		|           Chrome           | Firefox |              Safari              |                  Edge                  |                   IE                   |
		| :------------------------: | :-----: | :------------------------------: | :------------------------------------: | :------------------------------------: |
		|           **48**           | **48**  | **5.1** _(-webkit-text-combine)_ | **12** _(-ms-text-combine-horizontal)_ | **11** _(-ms-text-combine-horizontal)_ |
		| 9 _(-webkit-text-combine)_ |         |                                  |                                        |                                        |
	**/
	@:optional
	var textCombineUpright : String;
	/**
		The **`text-decoration-color`** CSS property sets the color of decorations added to text by `text-decoration-line`.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **36**  | **12.1** | **79** | No  |
		|        |         | 8 _-x-_  |        |     |
	**/
	@:optional
	var textDecorationColor : String;
	/**
		The **`text-decoration-line`** CSS property sets the kind of decoration that is used on text in an element, such as an underline or overline.
		
		**Syntax**: `none | [ underline || overline || line-through || blink ] | spelling-error | grammar-error`
		
		**Initial value**: `none`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **36**  | **12.1** | **79** | No  |
		|        |         | 8 _-x-_  |        |     |
	**/
	@:optional
	var textDecorationLine : String;
	/**
		The **`text-decoration-skip`** CSS property sets what parts of an element’s content any text decoration affecting the element must skip over. It controls all text decoration lines drawn by the element and also any text decoration lines drawn by its ancestors.
		
		**Syntax**: `none | [ objects || [ spaces | [ leading-spaces || trailing-spaces ] ] || edges || box-decoration ]`
		
		**Initial value**: `objects`
		
		| Chrome | Firefox |  Safari  | Edge | IE  |
		| :----: | :-----: | :------: | :--: | :-: |
		| 57-64  |   No    | **12.1** |  No  | No  |
		|        |         | 8 _-x-_  |      |     |
	**/
	@:optional
	var textDecorationSkip : String;
	/**
		The **`text-decoration-skip-ink`** CSS property specifies how overlines and underlines are drawn when they pass over glyph ascenders and descenders.
		
		**Syntax**: `auto | all | none`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **64** | **70**  |   No   | **79** | No  |
	**/
	@:optional
	var textDecorationSkipInk : String;
	/**
		The **`text-decoration-style`** CSS property sets the style of the lines specified by `text-decoration-line`. The style applies to all lines that are set with `text-decoration-line`.
		
		**Syntax**: `solid | double | dotted | dashed | wavy`
		
		**Initial value**: `solid`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **36**  | **12.1** | **79** | No  |
		|        |         | 8 _-x-_  |        |     |
	**/
	@:optional
	var textDecorationStyle : String;
	/**
		The **`text-decoration-thickness`** CSS property sets the thickness, or width, of the decoration line that is used on text in an element, such as a line-through, underline, or overline.
		
		**Syntax**: `auto | from-font | <length> | <percentage> `
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  | Edge | IE  |
		| :----: | :-----: | :------: | :--: | :-: |
		|   No   | **70**  | **12.1** |  No  | No  |
	**/
	@:optional
	var textDecorationThickness : ts.AnyOf2<String, Float>;
	/**
		The **`text-decoration-thickness`** CSS property sets the thickness, or width, of the decoration line that is used on text in an element, such as a line-through, underline, or overline.
		
		**Syntax**: `auto | from-font | <length> | <percentage> `
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  | Edge | IE  |
		| :----: | :-----: | :------: | :--: | :-: |
		|   No   | **70**  | **12.1** |  No  | No  |
	**/
	@:optional
	var textDecorationWidth : ts.AnyOf2<String, Float>;
	/**
		The **`text-emphasis-color`** CSS property sets the color of emphasis marks. This value can also be set using the `text-emphasis` shorthand.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
		
		| Chrome | Firefox | Safari  |  Edge  | IE  |
		| :----: | :-----: | :-----: | :----: | :-: |
		| **25** | **46**  | **6.1** | **79** | No  |
	**/
	@:optional
	var textEmphasisColor : String;
	/**
		The **`text-emphasis-position`** CSS property sets where emphasis marks are drawn. Like ruby text, if there isn't enough room for emphasis marks, the line height is increased.
		
		**Syntax**: `[ over | under ] && [ right | left ]`
		
		**Initial value**: `over right`
		
		| Chrome | Firefox | Safari  |  Edge  | IE  |
		| :----: | :-----: | :-----: | :----: | :-: |
		| **25** | **46**  | **6.1** | **79** | No  |
	**/
	@:optional
	var textEmphasisPosition : String;
	/**
		The **`text-emphasis-style`** CSS property sets the appearance of emphasis marks. It can also be set, and reset, using the `text-emphasis` shorthand.
		
		**Syntax**: `none | [ [ filled | open ] || [ dot | circle | double-circle | triangle | sesame ] ] | <string>`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari  |  Edge  | IE  |
		| :----: | :-----: | :-----: | :----: | :-: |
		| **25** | **46**  | **6.1** | **79** | No  |
	**/
	@:optional
	var textEmphasisStyle : String;
	/**
		The **`text-indent`** CSS property sets the length of empty space (indentation) that is put before lines of text in a block.
		
		**Syntax**: `<length-percentage> && hanging? && each-line?`
		
		**Initial value**: `0`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **3** |
	**/
	@:optional
	var textIndent : ts.AnyOf2<String, Float>;
	/**
		The **`text-justify`** CSS property sets what type of justification should be applied to text when `text-align``: justify;` is set on an element.
		
		**Syntax**: `auto | inter-character | inter-word | none`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |   IE   |
		| :----: | :-----: | :----: | :----: | :----: |
		|  n/a   | **55**  |   No   | **12** | **11** |
	**/
	@:optional
	var textJustify : String;
	/**
		The **`text-orientation`** CSS property sets the orientation of the text characters in a line. It only affects text in vertical mode (when `writing-mode` is not `horizontal-tb`). It is useful for controlling the display of languages that use vertical script, and also for making vertical table headers.
		
		**Syntax**: `mixed | upright | sideways`
		
		**Initial value**: `mixed`
		
		|  Chrome  | Firefox |    Safari     |  Edge  | IE  |
		| :------: | :-----: | :-----------: | :----: | :-: |
		|  **48**  | **41**  | **5.1** _-x-_ | **79** | No  |
		| 11 _-x-_ |         |               |        |     |
	**/
	@:optional
	var textOrientation : String;
	/**
		The **`text-overflow`** CSS property sets how hidden overflow content is signaled to users. It can be clipped, display an ellipsis ('`…`'), or display a custom string.
		
		**Syntax**: `[ clip | ellipsis | <string> ]{1,2}`
		
		**Initial value**: `clip`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **1**  |  **7**  | **1.3** | **12** | **6** |
	**/
	@:optional
	var textOverflow : String;
	/**
		The **`text-rendering`** CSS property provides information to the rendering engine about what to optimize for when rendering text.
		
		**Syntax**: `auto | optimizeSpeed | optimizeLegibility | geometricPrecision`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **4**  |  **1**  | **5**  | **79** | No  |
	**/
	@:optional
	var textRendering : String;
	/**
		The **`text-shadow`** CSS property adds shadows to text. It accepts a comma-separated list of shadows to be applied to the text and any of its `decorations`. Each shadow is described by some combination of X and Y offsets from the element, blur radius, and color.
		
		**Syntax**: `none | <shadow-t>#`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari  |  Edge  |   IE   |
		| :----: | :-----: | :-----: | :----: | :----: |
		| **2**  | **3.5** | **1.1** | **12** | **10** |
	**/
	@:optional
	var textShadow : String;
	/**
		The **`text-size-adjust`** CSS property controls the text inflation algorithm used on some smartphones and tablets. Other browsers will ignore this property.
		
		**Syntax**: `none | auto | <percentage>`
		
		**Initial value**: `auto` for smartphone browsers supporting inflation, `none` in other cases (and then not modifiable).
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **54** |   No    |   No   | **79** | No  |
	**/
	@:optional
	var textSizeAdjust : String;
	/**
		The **`text-transform`** CSS property specifies how to capitalize an element's text. It can be used to make text appear in all-uppercase or all-lowercase, or with each word capitalized. It also can help improve legibility for ruby
		
		**Syntax**: `none | capitalize | uppercase | lowercase | full-width | full-size-kana`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var textTransform : String;
	/**
		The **`text-underline-offset`** CSS property sets the offset distance of an underline text decoration line (applied using `text-decoration`) from its original position.
		
		**Syntax**: `auto | from-font | <length> | <percentage> `
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  | Edge | IE  |
		| :----: | :-----: | :------: | :--: | :-: |
		|   No   | **70**  | **12.1** |  No  | No  |
	**/
	@:optional
	var textUnderlineOffset : ts.AnyOf2<String, Float>;
	/**
		The **`text-underline-position`** CSS property specifies the position of the underline which is set using the `text-decoration` property's `underline` value.
		
		**Syntax**: `auto | from-font | [ under || [ left | right ] ]`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox |  Safari  |  Edge  |  IE   |
		| :----: | :-----: | :------: | :----: | :---: |
		| **33** | **74**  | **12.1** | **12** | **6** |
		|        |         | 9 _-x-_  |        |       |
	**/
	@:optional
	var textUnderlinePosition : String;
	/**
		The **`top`** CSS property participates in specifying the vertical position of a _positioned element_. It has no effect on non-positioned elements.
		
		**Syntax**: `<length> | <percentage> | auto`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **5** |
	**/
	@:optional
	var top : ts.AnyOf2<String, Float>;
	/**
		The **`touch-action`** CSS property sets how a region can be manipulated by a touchscreen user (for example, by zooming features built into the browser).
		
		**Syntax**: `auto | none | [ [ pan-x | pan-left | pan-right ] || [ pan-y | pan-up | pan-down ] || pinch-zoom ] | manipulation`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |    IE    |
		| :----: | :-----: | :----: | :----: | :------: |
		| **36** | **52**  | **13** | **12** |  **11**  |
		|        |         |        |        | 10 _-x-_ |
	**/
	@:optional
	var touchAction : String;
	/**
		The **`transform`** CSS property lets you rotate, scale, skew, or translate an element. It modifies the coordinate space of the CSS visual formatting model.
		
		**Syntax**: `none | <transform-list>`
		
		**Initial value**: `none`
		
		| Chrome  | Firefox |  Safari   |  Edge  |   IE    |
		| :-----: | :-----: | :-------: | :----: | :-----: |
		| **36**  | **16**  |   **9**   | **12** | **10**  |
		| 1 _-x-_ |         | 3.1 _-x-_ |        | 9 _-x-_ |
	**/
	@:optional
	var transform : String;
	/**
		The **`transform-box`** CSS property defines the layout box to which the `transform` and `transform-origin` properties relate.
		
		**Syntax**: `border-box | fill-box | view-box`
		
		**Initial value**: `border-box `
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **64** | **55**  | **11** | **79** | No  |
	**/
	@:optional
	var transformBox : String;
	/**
		The **`transform-origin`** CSS property sets the origin for an element's transformations.
		
		**Syntax**: `[ <length-percentage> | left | center | right | top | bottom ] | [ [ <length-percentage> | left | center | right ] && [ <length-percentage> | top | center | bottom ] ] <length>?`
		
		**Initial value**: `50% 50% 0`
		
		| Chrome  |  Firefox  | Safari  |  Edge  |   IE    |
		| :-----: | :-------: | :-----: | :----: | :-----: |
		| **36**  |  **16**   |  **9**  | **12** | **10**  |
		| 1 _-x-_ | 3.5 _-x-_ | 2 _-x-_ |        | 9 _-x-_ |
	**/
	@:optional
	var transformOrigin : ts.AnyOf2<String, Float>;
	/**
		The **`transform-style`** CSS property sets whether children of an element are positioned in the 3D space or are flattened in the plane of the element.
		
		**Syntax**: `flat | preserve-3d`
		
		**Initial value**: `flat`
		
		|  Chrome  | Firefox  | Safari  |  Edge  | IE  |
		| :------: | :------: | :-----: | :----: | :-: |
		|  **36**  |  **16**  |  **9**  | **12** | No  |
		| 12 _-x-_ | 10 _-x-_ | 4 _-x-_ |        |     |
	**/
	@:optional
	var transformStyle : String;
	/**
		The **`transition-delay`** CSS property specifies the duration to wait before starting a property's transition effect when its value changes.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **26**  | **16**  |  **9**  | **12** | **10** |
		| 1 _-x-_ | 4 _-x-_ | 4 _-x-_ |        |        |
	**/
	@:optional
	var transitionDelay : String;
	/**
		The **`transition-duration`** CSS property sets the length of time a transition animation should take to complete. By default, the value is `0s`, meaning that no animation will occur.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
		
		| Chrome  | Firefox |  Safari   |  Edge  |   IE   |
		| :-----: | :-----: | :-------: | :----: | :----: |
		| **26**  | **16**  |   **9**   | **12** | **10** |
		| 1 _-x-_ | 4 _-x-_ | 3.1 _-x-_ |        |        |
	**/
	@:optional
	var transitionDuration : String;
	/**
		The **`transition-property`** CSS property sets the CSS properties to which a transition effect should be applied.
		
		**Syntax**: `none | <single-transition-property>#`
		
		**Initial value**: all
		
		| Chrome  | Firefox |  Safari   |  Edge  |   IE   |
		| :-----: | :-----: | :-------: | :----: | :----: |
		| **26**  | **16**  |   **9**   | **12** | **10** |
		| 1 _-x-_ | 4 _-x-_ | 3.1 _-x-_ |        |        |
	**/
	@:optional
	var transitionProperty : String;
	/**
		The **`transition-timing-function`** CSS property sets how intermediate values are calculated for CSS properties being affected by a transition effect.
		
		**Syntax**: `<timing-function>#`
		
		**Initial value**: `ease`
		
		| Chrome  | Firefox |  Safari   |  Edge  |   IE   |
		| :-----: | :-----: | :-------: | :----: | :----: |
		| **26**  | **16**  |   **9**   | **12** | **10** |
		| 1 _-x-_ | 4 _-x-_ | 3.1 _-x-_ |        |        |
	**/
	@:optional
	var transitionTimingFunction : String;
	/**
		The **`translate`** CSS property allows you to specify translation transforms individually and independantly of the `transform` property. This maps better to typical user interface usage, and saves having to remember the exact order of transform functions to specify in the `transform` value.
		
		**Syntax**: `none | <length-percentage> [ <length-percentage> <length>? ]?`
		
		**Initial value**: `none`
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **72**  |   No   |  No  | No  |
	**/
	@:optional
	var translate : ts.AnyOf2<String, Float>;
	/**
		The **`unicode-bidi`** CSS property, together with the `direction` property, determines how bidirectional text in a document is handled. For example, if a block of content contains both left-to-right and right-to-left text, the user-agent uses a complex Unicode algorithm to decide how to display the text. The `unicode-bidi` property overrides this algorithm and allows the developer to control the text embedding.
		
		**Syntax**: `normal | embed | isolate | bidi-override | isolate-override | plaintext`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari  |  Edge  |   IE    |
		| :----: | :-----: | :-----: | :----: | :-----: |
		| **2**  |  **1**  | **1.3** | **12** | **5.5** |
	**/
	@:optional
	var unicodeBidi : String;
	/**
		The `**user-select**` CSS property controls whether the user can select text. This doesn't have any effect on content loaded as chrome, except in textboxes.
		
		**Syntax**: `auto | text | none | contain | all`
		
		**Initial value**: `auto`
		
		| Chrome  | Firefox |   Safari    |     Edge     |      IE      |
		| :-----: | :-----: | :---------: | :----------: | :----------: |
		| **54**  | **69**  | **3** _-x-_ | **12** _-x-_ | **10** _-x-_ |
		| 1 _-x-_ | 1 _-x-_ |             |              |              |
	**/
	@:optional
	var userSelect : String;
	/**
		The **`vertical-align`** CSS property sets vertical alignment of an inline or table-cell box.
		
		**Syntax**: `baseline | sub | super | text-top | text-bottom | middle | top | bottom | <percentage> | <length>`
		
		**Initial value**: `baseline`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var verticalAlign : ts.AnyOf2<String, Float>;
	/**
		The **`visibility`** CSS property shows or hides an element without changing the layout of a document. The property can also hide rows or columns in a `<table>`.
		
		**Syntax**: `visible | hidden | collapse`
		
		**Initial value**: `visible`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var visibility : String;
	/**
		The **`white-space`** CSS property sets how white space inside an element is handled.
		
		**Syntax**: `normal | pre | nowrap | pre-wrap | pre-line | break-spaces`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **1**  |  **1**  | **1**  | **12** | **5.5** |
	**/
	@:optional
	var whiteSpace : String;
	/**
		The **`widows`** CSS property sets the minimum number of lines in a block container that must be shown at the _top_ of a page, region, or column.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `2`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **25** |   No    | **1.3** | **12** | **8** |
	**/
	@:optional
	var widows : ts.AnyOf2<Float, String>;
	/**
		The **`width`** CSS property sets an element's width. By default it sets the width of the content area, but if `box-sizing` is set to `border-box`, it sets the width of the border area.
		
		**Syntax**: `auto | <length> | <percentage> | min-content | max-content | fit-content(<length-percentage>)`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var width : ts.AnyOf2<String, Float>;
	/**
		The **`will-change`** CSS property hints to browsers how an element is expected to change. Browsers may set up optimizations before an element is actually changed. These kinds of optimizations can increase the responsiveness of a page by doing potentially expensive work before they are actually required.
		
		**Syntax**: `auto | <animateable-feature>#`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari  |  Edge  | IE  |
		| :----: | :-----: | :-----: | :----: | :-: |
		| **36** | **36**  | **9.1** | **79** | No  |
	**/
	@:optional
	var willChange : String;
	/**
		The **`word-break`** CSS property sets whether line breaks appear wherever the text would otherwise overflow its content box.
		
		**Syntax**: `normal | break-all | keep-all | break-word`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **1**  | **15**  | **3**  | **12** | **5.5** |
	**/
	@:optional
	var wordBreak : String;
	/**
		The **`word-spacing`** CSS property sets the length of space between words and between tags.
		
		**Syntax**: `normal | <length-percentage>`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **6** |
	**/
	@:optional
	var wordSpacing : ts.AnyOf2<String, Float>;
	/**
		The `**overflow-wrap**` CSS property sets whether the browser should insert line breaks within words to prevent text from overflowing its content box.
		
		**Syntax**: `normal | break-word`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **1**  | **3.5** | **2**  | **12** | **5.5** |
	**/
	@:optional
	var wordWrap : String;
	/**
		The **`writing-mode`** CSS property sets whether lines of text are laid out horizontally or vertically, as well as the direction in which blocks progress.
		
		**Syntax**: `horizontal-tb | vertical-rl | vertical-lr | sideways-rl | sideways-lr`
		
		**Initial value**: `horizontal-tb`
		
		| Chrome  | Firefox |  Safari   |  Edge  |     IE      |
		| :-----: | :-----: | :-------: | :----: | :---------: |
		| **48**  | **41**  | **10.1**  | **12** | **9** _-x-_ |
		| 8 _-x-_ |         | 5.1 _-x-_ |        |             |
	**/
	@:optional
	var writingMode : String;
	/**
		The **`z-index`** CSS property sets the z-order of a positioned element and its descendants or flex items. Overlapping elements with a larger z-index cover those with a smaller one.
		
		**Syntax**: `auto | <integer>`
		
		**Initial value**: `auto`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var zIndex : ts.AnyOf2<Float, String>;
	/**
		The non-standard **`zoom`** CSS property can be used to control the magnification level of an element. `transform: scale()` should be used instead of this property, if possible. However, unlike CSS Transforms, `zoom` affects the layout size of the element.
		
		**Syntax**: `normal | reset | <number> | <percentage>`
		
		**Initial value**: `normal`
		
		| Chrome | Firefox | Safari  |  Edge  |   IE    |
		| :----: | :-----: | :-----: | :----: | :-----: |
		| **1**  |   No    | **3.1** | **12** | **5.5** |
	**/
	@:optional
	var zoom : ts.AnyOf2<String, Float>;
	/**
		The `**all**` CSS shorthand property sets all of an element's properties (other than `unicode-bidi` and `direction`) to their initial or inherited values, or to the values specified in another stylesheet origin.
		
		**Syntax**: `initial | inherit | unset | revert`
		
		**Initial value**: There is no practical initial value for it.
		
		| Chrome | Firefox | Safari  |  Edge  | IE  |
		| :----: | :-----: | :-----: | :----: | :-: |
		| **37** | **27**  | **9.1** | **79** | No  |
	**/
	@:optional
	var all : String;
	/**
		The **`animation`** shorthand CSS property sets an animated transition between styles. It is a shorthand for `animation-name`, `animation-duration`, `animation-timing-function`, `animation-delay`, `animation-iteration-count`, `animation-direction`, `animation-fill-mode`, and `animation-play-state`.
		
		**Syntax**: `<single-animation>#`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **43**  | **16**  |  **9**  | **12** | **10** |
		| 3 _-x-_ | 5 _-x-_ | 4 _-x-_ |        |        |
	**/
	@:optional
	var animation : ts.AnyOf2<String, Float>;
	/**
		The **`background`** shorthand CSS property sets all background style properties at once, such as color, image, origin and size, or repeat method.
		
		**Syntax**: `[ <bg-layer> , ]* <final-bg-layer>`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var background : ts.AnyOf2<String, Float>;
	/**
		The **`border`** CSS property sets an element's border. It's a shorthand for `border-width`, `border-style`, and `border-color`.
		
		**Syntax**: `<line-width> || <line-style> || <color>`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var border : ts.AnyOf2<String, Float>;
	/**
		The **`border-block`** CSS property is a shorthand property for setting the individual logical block border property values in a single place in the style sheet.
		
		**Syntax**: `<'border-top-width'> || <'border-top-style'> || <'color'>`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **66**  |   No   | **79** | No  |
	**/
	@:optional
	var borderBlock : ts.AnyOf2<String, Float>;
	/**
		The **`border-block-end`** CSS property is a shorthand property for setting the individual logical block-end border property values in a single place in the style sheet.
		
		**Syntax**: `<'border-top-width'> || <'border-top-style'> || <'color'>`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var borderBlockEnd : ts.AnyOf2<String, Float>;
	/**
		The **`border-block-start`** CSS property is a shorthand property for setting the individual logical block-start border property values in a single place in the style sheet.
		
		**Syntax**: `<'border-top-width'> || <'border-top-style'> || <'color'>`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var borderBlockStart : ts.AnyOf2<String, Float>;
	/**
		The **`border-bottom`** CSS property is a shorthand that sets the values of `border-bottom-width`, `border-bottom-style` and `border-bottom-color`. These properties set an element's bottom border.
		
		**Syntax**: `<line-width> || <line-style> || <color>`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderBottom : ts.AnyOf2<String, Float>;
	/**
		The **`border-color`** shorthand CSS property sets the color of all sides of an element's border.
		
		**Syntax**: `<color>{1,4}`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderColor : String;
	/**
		The **`border-image`** CSS property draws an image in place of an element's `border-style`.
		
		**Syntax**: `<'border-image-source'> || <'border-image-slice'> [ / <'border-image-width'> | / <'border-image-width'>? / <'border-image-outset'> ]? || <'border-image-repeat'>`
		
		| Chrome  |  Firefox  | Safari  |  Edge  |   IE   |
		| :-----: | :-------: | :-----: | :----: | :----: |
		| **16**  |  **15**   |  **6**  | **12** | **11** |
		| 7 _-x-_ | 3.5 _-x-_ | 3 _-x-_ |        |        |
	**/
	@:optional
	var borderImage : ts.AnyOf2<String, Float>;
	/**
		The **`border-inline`** CSS property is a shorthand property for setting the individual logical inline border property values in a single place in the style sheet.
		
		**Syntax**: `<'border-top-width'> || <'border-top-style'> || <'color'>`
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **69** | **66**  |   No   | **79** | No  |
	**/
	@:optional
	var borderInline : ts.AnyOf2<String, Float>;
	/**
		The **`border-inline-end`** CSS property is a shorthand property for setting the individual logical inline-end border property values in a single place in the style sheet.
		
		**Syntax**: `<'border-top-width'> || <'border-top-style'> || <'color'>`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var borderInlineEnd : ts.AnyOf2<String, Float>;
	/**
		The **`border-inline-start`** CSS property is a shorthand property for setting the individual logical inline-start border property values in a single place in the style sheet.
		
		**Syntax**: `<'border-top-width'> || <'border-top-style'> || <'color'>`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **69** | **41**  | **12.1** | **79** | No  |
	**/
	@:optional
	var borderInlineStart : ts.AnyOf2<String, Float>;
	/**
		The **`border-left`** CSS property is a shorthand that sets the values of `border-left-width`, `border-left-style` and `border-left-color`. These properties set an element's left border.
		
		**Syntax**: `<line-width> || <line-style> || <color>`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderLeft : ts.AnyOf2<String, Float>;
	/**
		The **`border-radius`** CSS property rounds the corners of an element's outer border edge. You can set a single radius to make circular corners, or two radii to make elliptical corners.
		
		**Syntax**: `<length-percentage>{1,4} [ / <length-percentage>{1,4} ]?`
		
		| Chrome  | Firefox | Safari  |  Edge  |  IE   |
		| :-----: | :-----: | :-----: | :----: | :---: |
		|  **4**  |  **4**  |  **5**  | **12** | **9** |
		| 1 _-x-_ |         | 3 _-x-_ |        |       |
	**/
	@:optional
	var borderRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-right`** CSS property is a shorthand that sets the values of `border-right-width`, `border-right-style` and `border-right-color`. These properties set an element's right border.
		
		**Syntax**: `<line-width> || <line-style> || <color>`
		
		| Chrome | Firefox | Safari |  Edge  |   IE    |
		| :----: | :-----: | :----: | :----: | :-----: |
		| **1**  |  **1**  | **1**  | **12** | **5.5** |
	**/
	@:optional
	var borderRight : ts.AnyOf2<String, Float>;
	/**
		The **`border-style`** CSS property is a shorthand property that sets the line style for all four sides of an element's border.
		
		**Syntax**: `<line-style>{1,4}`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderStyle : String;
	/**
		The **`border-top`** CSS property is a shorthand that sets the values of `border-top-width`, `border-top-style` and `border-top-color`. These properties set an element's top border.
		
		**Syntax**: `<line-width> || <line-style> || <color>`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderTop : ts.AnyOf2<String, Float>;
	/**
		The **`border-width`** shorthand CSS property sets the widths of all four sides of an element's border.
		
		**Syntax**: `<line-width>{1,4}`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var borderWidth : ts.AnyOf2<String, Float>;
	/**
		The **`column-rule`** CSS property sets the width, style, and color of the rule (line) drawn between columns in a multi-column layout.
		
		**Syntax**: `<'column-rule-width'> || <'column-rule-style'> || <'column-rule-color'>`
		
		| Chrome  | Firefox | Safari  |  Edge  |   IE   |
		| :-----: | :-----: | :-----: | :----: | :----: |
		| **50**  | **52**  |  **9**  | **12** | **10** |
		| 1 _-x-_ |         | 3 _-x-_ |        |        |
	**/
	@:optional
	var columnRule : ts.AnyOf2<String, Float>;
	/**
		The **`columns`** CSS property sets the column width and column count of an element.
		
		**Syntax**: `<'column-width'> || <'column-count'>`
		
		| Chrome | Firefox | Safari  |  Edge  |   IE   |
		| :----: | :-----: | :-----: | :----: | :----: |
		| **50** | **52**  |  **9**  | **12** | **10** |
		|        |         | 3 _-x-_ |        |        |
	**/
	@:optional
	var columns : ts.AnyOf2<String, Float>;
	/**
		The **`flex`** CSS property sets how a flex item will grow or shrink to fit the space available in its flex container. It is a shorthand for `flex-grow`, `flex-shrink`, and `flex-basis`.
		
		**Syntax**: `none | [ <'flex-grow'> <'flex-shrink'>? || <'flex-basis'> ]`
		
		|  Chrome  | Firefox |  Safari   |  Edge  |    IE    |
		| :------: | :-----: | :-------: | :----: | :------: |
		|  **29**  | **20**  |   **9**   | **12** |  **11**  |
		| 21 _-x-_ |         | 6.1 _-x-_ |        | 10 _-x-_ |
	**/
	@:optional
	var flex : ts.AnyOf2<String, Float>;
	/**
		The **`flex-flow`** CSS property is a shorthand property for `flex-direction` and `flex-wrap` properties.
		
		**Syntax**: `<'flex-direction'> || <'flex-wrap'>`
		
		|  Chrome  | Firefox |  Safari   |  Edge  |   IE   |
		| :------: | :-----: | :-------: | :----: | :----: |
		|  **29**  | **28**  |   **9**   | **12** | **11** |
		| 21 _-x-_ |         | 6.1 _-x-_ |        |        |
	**/
	@:optional
	var flexFlow : String;
	/**
		The **`font`** CSS property is a shorthand for `font-style`, `font-variant`, `font-weight`, `font-size`, `line-height`, and `font-family`. Alternatively, it sets an element's font to a system font.
		
		**Syntax**: `[ [ <'font-style'> || <font-variant-css21> || <'font-weight'> || <'font-stretch'> ]? <'font-size'> [ / <'line-height'> ]? <'font-family'> ] | caption | icon | menu | message-box | small-caption | status-bar`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **3** |
	**/
	@:optional
	var font : String;
	/**
		The **`gap`** CSS property sets the gaps (gutters) between rows and columns. It is a shorthand for `row-gap` and `column-gap`.
		
		**Syntax**: `<'row-gap'> <'column-gap'>?`
		
		---
		
		_Supported in Flex Layout_
		
		| Chrome | Firefox | Safari | Edge | IE  |
		| :----: | :-----: | :----: | :--: | :-: |
		|   No   | **63**  |   No   |  No  | No  |
		
		---
		
		_Supported in Grid Layout_
		
		|     Chrome      |     Firefox     |        Safari         |  Edge  | IE  |
		| :-------------: | :-------------: | :-------------------: | :----: | :-: |
		|     **66**      |     **61**      | **10.1** _(grid-gap)_ | **16** | No  |
		| 57 _(grid-gap)_ | 52 _(grid-gap)_ |                       |        |     |
		
		---
		
		_Supported in Multi-column Layout_
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **66** | **61**  |   No   | **16** | No  |
		
		---
	**/
	@:optional
	var gap : ts.AnyOf2<String, Float>;
	/**
		The **`grid`** CSS property is a shorthand property that sets all of the explicit grid properties (`grid-template-rows`, `grid-template-columns`, and `grid-template-areas`), and all the implicit grid properties (`grid-auto-rows`, `grid-auto-columns`, and `grid-auto-flow`), in a single declaration.
		
		**Syntax**: `<'grid-template'> | <'grid-template-rows'> / [ auto-flow && dense? ] <'grid-auto-columns'>? | [ auto-flow && dense? ] <'grid-auto-rows'>? / <'grid-template-columns'>`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var grid : String;
	/**
		The **`grid-area`** CSS property is a shorthand property for `grid-row-start`, `grid-column-start`, `grid-row-end` and `grid-column-end`, specifying a grid item’s size and location within the grid row by contributing a line, a span, or nothing (automatic) to its grid placement, thereby specifying the edges of its grid area.
		
		**Syntax**: `<grid-line> [ / <grid-line> ]{0,3}`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var gridArea : ts.AnyOf2<String, Float>;
	/**
		The **`grid-column`** CSS property is a shorthand property for `grid-column-start` and `grid-column-end` specifying a grid item's size and location within the grid column by contributing a line, a span, or nothing (automatic) to its grid placement, thereby specifying the inline-start and inline-end edge of its grid area.
		
		**Syntax**: `<grid-line> [ / <grid-line> ]?`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var gridColumn : ts.AnyOf2<String, Float>;
	/**
		The **`grid-row`** CSS property is a shorthand property for `grid-row-start` and `grid-row-end` specifying a grid item’s size and location within the grid row by contributing a line, a span, or nothing (automatic) to its grid placement, thereby specifying the inline-start and inline-end edge of its grid area.
		
		**Syntax**: `<grid-line> [ / <grid-line> ]?`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var gridRow : ts.AnyOf2<String, Float>;
	/**
		The **`grid-template`** CSS property is a shorthand property for defining grid columns, rows, and areas.
		
		**Syntax**: `none | [ <'grid-template-rows'> / <'grid-template-columns'> ] | [ <line-names>? <string> <track-size>? <line-names>? ]+ [ / <explicit-track-list> ]?`
		
		| Chrome | Firefox |  Safari  |  Edge  | IE  |
		| :----: | :-----: | :------: | :----: | :-: |
		| **57** | **52**  | **10.1** | **16** | No  |
	**/
	@:optional
	var gridTemplate : String;
	/**
		**Syntax**: `none | <integer>`
		
		**Initial value**: `none`
	**/
	@:optional
	var lineClamp : ts.AnyOf2<Float, String>;
	/**
		The **`list-style`** CSS property is a shorthand to set list style properties `list-style-type`, `list-style-image`, and `list-style-position`.
		
		**Syntax**: `<'list-style-type'> || <'list-style-position'> || <'list-style-image'>`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var listStyle : String;
	/**
		The **`margin`** CSS property sets the margin area on all four sides of an element. It is a shorthand for `margin-top`, `margin-right`, `margin-bottom`, and `margin-left`.
		
		**Syntax**: `[ <length> | <percentage> | auto ]{1,4}`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **3** |
	**/
	@:optional
	var margin : ts.AnyOf2<String, Float>;
	/**
		The **`mask`** CSS property hides an element (partially or fully) by masking or clipping the image at specific points.
		
		**Syntax**: `<mask-layer>#`
		
		| Chrome | Firefox | Safari  |  Edge  | IE  |
		| :----: | :-----: | :-----: | :----: | :-: |
		| **1**  |  **2**  | **3.2** | **12** | No  |
	**/
	@:optional
	var mask : ts.AnyOf2<String, Float>;
	/**
		The **`mask-border`** CSS property lets you create a mask along the edge of an element's border.
		
		**Syntax**: `<'mask-border-source'> || <'mask-border-slice'> [ / <'mask-border-width'>? [ / <'mask-border-outset'> ]? ]? || <'mask-border-repeat'> || <'mask-border-mode'>`
	**/
	@:optional
	var maskBorder : ts.AnyOf2<String, Float>;
	/**
		The **`offset`** CSS property is a shorthand property for animating an element along a defined path.
		
		**Syntax**: `[ <'offset-position'>? [ <'offset-path'> [ <'offset-distance'> || <'offset-rotate'> ]? ]? ]! [ / <'offset-anchor'> ]?`
		
		|    Chrome     | Firefox | Safari |  Edge  | IE  |
		| :-----------: | :-----: | :----: | :----: | :-: |
		|    **55**     | **72**  |   No   | **79** | No  |
		| 46 _(motion)_ |         |        |        |     |
	**/
	@:optional
	var motion : ts.AnyOf2<String, Float>;
	/**
		The **`offset`** CSS property is a shorthand property for animating an element along a defined path.
		
		**Syntax**: `[ <'offset-position'>? [ <'offset-path'> [ <'offset-distance'> || <'offset-rotate'> ]? ]? ]! [ / <'offset-anchor'> ]?`
		
		|    Chrome     | Firefox | Safari |  Edge  | IE  |
		| :-----------: | :-----: | :----: | :----: | :-: |
		|    **55**     | **72**  |   No   | **79** | No  |
		| 46 _(motion)_ |         |        |        |     |
	**/
	@:optional
	var offset : ts.AnyOf2<String, Float>;
	/**
		The **`outline`** CSS property is a shorthand to set various outline properties in a single declaration: `outline-style`, `outline-width`, and `outline-color`.
		
		**Syntax**: `[ <'outline-color'> || <'outline-style'> || <'outline-width'> ]`
		
		| Chrome | Firefox | Safari  |  Edge  |  IE   |
		| :----: | :-----: | :-----: | :----: | :---: |
		| **1**  | **1.5** | **1.2** | **12** | **8** |
	**/
	@:optional
	var outline : ts.AnyOf2<String, Float>;
	/**
		The **`overflow`** CSS property sets what to do when an element's content is too big to fit in its block formatting context. It is a shorthand for `overflow-x` and `overflow-y`.
		
		**Syntax**: `[ visible | hidden | clip | scroll | auto ]{1,2}`
		
		**Initial value**: `visible`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var overflow : String;
	/**
		The **`padding`** CSS property sets the padding area on all four sides of an element. It is a shorthand for `padding-top`, `padding-right`, `padding-bottom`, and `padding-left`.
		
		**Syntax**: `[ <length> | <percentage> ]{1,4}`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **4** |
	**/
	@:optional
	var padding : ts.AnyOf2<String, Float>;
	/**
		The CSS **`place-items`** shorthand property sets the `align-items` and `justify-items` properties, respectively. If the second value is not set, the first value is also used for it.
		
		**Syntax**: `<'align-items'> <'justify-items'>?`
		
		---
		
		_Supported in Flex Layout_
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **59** | **45**  | **11** | **79** | No  |
		
		---
		
		_Supported in Grid Layout_
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **59** | **45**  | **11** | **79** | No  |
		
		---
	**/
	@:optional
	var placeItems : String;
	/**
		The **`place-self`** CSS property is a shorthand property sets both the `align-self` and `justify-self` properties. The first value is the `align-self` property value, the second the `justify-self` one. If the second value is not present, the first value is also used for it.
		
		**Syntax**: `<'align-self'> <'justify-self'>?`
		
		---
		
		_Supported in Flex Layout_
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **59** | **45**  |   No   | **79** | No  |
		
		---
		
		_Supported in Grid Layout_
		
		| Chrome | Firefox | Safari |  Edge  | IE  |
		| :----: | :-----: | :----: | :----: | :-: |
		| **59** | **45**  |   No   | **79** | No  |
		
		---
	**/
	@:optional
	var placeSelf : String;
	/**
		The **`text-decoration`** CSS property sets the appearance of decorative lines on text. It is a shorthand for `text-decoration-line`, `text-decoration-color`, and `text-decoration-style`.
		
		**Syntax**: `<'text-decoration-line'> || <'text-decoration-style'> || <'text-decoration-color'> || <'text-decoration-thickness'>`
		
		| Chrome | Firefox | Safari |  Edge  |  IE   |
		| :----: | :-----: | :----: | :----: | :---: |
		| **1**  |  **1**  | **1**  | **12** | **3** |
	**/
	@:optional
	var textDecoration : ts.AnyOf2<String, Float>;
	/**
		The **`text-emphasis`** CSS property applies emphasis marks to text (except spaces and control characters). It is a shorthand for `text-emphasis-style` and `text-emphasis-color`.
		
		**Syntax**: `<'text-emphasis-style'> || <'text-emphasis-color'>`
		
		| Chrome | Firefox | Safari  |  Edge  | IE  |
		| :----: | :-----: | :-----: | :----: | :-: |
		| **25** | **46**  | **6.1** | **79** | No  |
	**/
	@:optional
	var textEmphasis : String;
	/**
		The **`transition`** CSS property is a shorthand property for `transition-property`, `transition-duration`, `transition-timing-function`, and `transition-delay`.
		
		**Syntax**: `<single-transition>#`
		
		| Chrome  | Firefox |  Safari   |  Edge  |   IE   |
		| :-----: | :-----: | :-------: | :----: | :----: |
		| **26**  | **16**  |   **9**   | **12** | **10** |
		| 1 _-x-_ | 4 _-x-_ | 3.1 _-x-_ |        |        |
	**/
	@:optional
	var transition : String;
	/**
		The **`animation-delay`** CSS property sets when an animation starts. The animation can start later, immediately from its beginning, or immediately and partway through the animation.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var MozAnimationDelay : String;
	/**
		The **`animation-direction`** CSS property sets whether an animation should play forwards, backwards, or alternating back and forth.
		
		**Syntax**: `<single-animation-direction>#`
		
		**Initial value**: `normal`
	**/
	@:optional
	var MozAnimationDirection : String;
	/**
		The **`animation-duration`** CSS property sets the length of time that an animation takes to complete one cycle.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var MozAnimationDuration : String;
	/**
		The **`animation-fill-mode`** CSS property sets how a CSS animation applies styles to its target before and after its execution.
		
		**Syntax**: `<single-animation-fill-mode>#`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozAnimationFillMode : String;
	/**
		The **`animation-iteration-count`** CSS property sets the number of times an animation cycle should be played before stopping.
		
		**Syntax**: `<single-animation-iteration-count>#`
		
		**Initial value**: `1`
	**/
	@:optional
	var MozAnimationIterationCount : ts.AnyOf2<String, Float>;
	/**
		The **`animation-name`** CSS property sets one or more animations to apply to an element. Each name is an `@keyframes` at-rule that sets the property values for the animation sequence.
		
		**Syntax**: `[ none | <keyframes-name> ]#`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozAnimationName : String;
	/**
		The **`animation-play-state`** CSS property sets whether an animation is running or paused.
		
		**Syntax**: `<single-animation-play-state>#`
		
		**Initial value**: `running`
	**/
	@:optional
	var MozAnimationPlayState : String;
	/**
		The `**animation-timing-function**` CSS property sets how an animation progresses through the duration of each cycle.
		
		**Syntax**: `<timing-function>#`
		
		**Initial value**: `ease`
	**/
	@:optional
	var MozAnimationTimingFunction : String;
	/**
		The **`-moz-appearance`** CSS property is used in Gecko (Firefox) to display an element using platform-native styling based on the operating system's theme.
		
		**Syntax**: `none | button | button-arrow-down | button-arrow-next | button-arrow-previous | button-arrow-up | button-bevel | button-focus | caret | checkbox | checkbox-container | checkbox-label | checkmenuitem | dualbutton | groupbox | listbox | listitem | menuarrow | menubar | menucheckbox | menuimage | menuitem | menuitemtext | menulist | menulist-button | menulist-text | menulist-textfield | menupopup | menuradio | menuseparator | meterbar | meterchunk | progressbar | progressbar-vertical | progresschunk | progresschunk-vertical | radio | radio-container | radio-label | radiomenuitem | range | range-thumb | resizer | resizerpanel | scale-horizontal | scalethumbend | scalethumb-horizontal | scalethumbstart | scalethumbtick | scalethumb-vertical | scale-vertical | scrollbarbutton-down | scrollbarbutton-left | scrollbarbutton-right | scrollbarbutton-up | scrollbarthumb-horizontal | scrollbarthumb-vertical | scrollbartrack-horizontal | scrollbartrack-vertical | searchfield | separator | sheet | spinner | spinner-downbutton | spinner-textfield | spinner-upbutton | splitter | statusbar | statusbarpanel | tab | tabpanel | tabpanels | tab-scroll-arrow-back | tab-scroll-arrow-forward | textfield | textfield-multiline | toolbar | toolbarbutton | toolbarbutton-dropdown | toolbargripper | toolbox | tooltip | treeheader | treeheadercell | treeheadersortarrow | treeitem | treeline | treetwisty | treetwistyopen | treeview | -moz-mac-unified-toolbar | -moz-win-borderless-glass | -moz-win-browsertabbar-toolbox | -moz-win-communicationstext | -moz-win-communications-toolbox | -moz-win-exclude-glass | -moz-win-glass | -moz-win-mediatext | -moz-win-media-toolbox | -moz-window-button-box | -moz-window-button-box-maximized | -moz-window-button-close | -moz-window-button-maximize | -moz-window-button-minimize | -moz-window-button-restore | -moz-window-frame-bottom | -moz-window-frame-left | -moz-window-frame-right | -moz-window-titlebar | -moz-window-titlebar-maximized`
		
		**Initial value**: `none` (but this value is overridden in the user agent CSS)
	**/
	@:optional
	var MozAppearance : String;
	/**
		The **`backface-visibility`** CSS property sets whether the back face of an element is visible when turned towards the user.
		
		**Syntax**: `visible | hidden`
		
		**Initial value**: `visible`
	**/
	@:optional
	var MozBackfaceVisibility : String;
	/**
		The **`border-inline-end-color`** CSS property defines the color of the logical inline-end border of an element, which maps to a physical border color depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-color`, `border-right-color`, `border-bottom-color`, or `border-left-color` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-color'>`
		
		**Initial value**: `currentcolor`
	**/
	@:optional
	var MozBorderEndColor : String;
	/**
		The **`border-inline-end-style`** CSS property defines the style of the logical inline end border of an element, which maps to a physical border style depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-style`, `border-right-style`, `border-bottom-style`, or `border-left-style` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-style'>`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozBorderEndStyle : String;
	/**
		The **`border-inline-end-width`** CSS property defines the width of the logical inline-end border of an element, which maps to a physical border width depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-width`, `border-right-width`, `border-bottom-width`, or `border-left-width` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-width'>`
		
		**Initial value**: `medium`
	**/
	@:optional
	var MozBorderEndWidth : ts.AnyOf2<String, Float>;
	/**
		The **`border-inline-start-color`** CSS property defines the color of the logical inline start border of an element, which maps to a physical border color depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-color`, `border-right-color`, `border-bottom-color`, or `border-left-color` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-color'>`
		
		**Initial value**: `currentcolor`
	**/
	@:optional
	var MozBorderStartColor : String;
	/**
		The **`border-inline-start-style`** CSS property defines the style of the logical inline start border of an element, which maps to a physical border style depending on the element's writing mode, directionality, and text orientation. It corresponds to the `border-top-style`, `border-right-style`, `border-bottom-style`, or `border-left-style` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'border-top-style'>`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozBorderStartStyle : String;
	/**
		The **`box-sizing`** CSS property defines how the user agent should calculate the total width and height of an element.
		
		**Syntax**: `content-box | border-box`
		
		**Initial value**: `content-box`
	**/
	@:optional
	var MozBoxSizing : String;
	/**
		The **`column-count`** CSS property breaks an element's content into the specified number of columns.
		
		**Syntax**: `<integer> | auto`
		
		**Initial value**: `auto`
	**/
	@:optional
	var MozColumnCount : ts.AnyOf2<Float, String>;
	/**
		The **`column-fill`** CSS property controls how an element's contents are balanced when broken into columns.
		
		**Syntax**: `auto | balance | balance-all`
		
		**Initial value**: `balance`
	**/
	@:optional
	var MozColumnFill : String;
	/**
		The **`column-gap`** CSS property sets the size of the gap (gutter) between an element's columns.
		
		**Syntax**: `normal | <length-percentage>`
		
		**Initial value**: `normal`
	**/
	@:optional
	var MozColumnGap : ts.AnyOf2<String, Float>;
	/**
		The **`column-rule-color`** CSS property sets the color of the rule (line) drawn between columns in a multi-column layout.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
	**/
	@:optional
	var MozColumnRuleColor : String;
	/**
		The **`column-rule-style`** CSS property sets the style of the line drawn between columns in a multi-column layout.
		
		**Syntax**: `<'border-style'>`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozColumnRuleStyle : String;
	/**
		The **`column-rule-width`** CSS property sets the width of the rule (line) drawn between columns in a multi-column layout.
		
		**Syntax**: `<'border-width'>`
		
		**Initial value**: `medium`
	**/
	@:optional
	var MozColumnRuleWidth : ts.AnyOf2<String, Float>;
	/**
		The **`column-width`** CSS property specifies the ideal column width in a multi-column layout. The container will have as many columns as can fit without any of them having a width less than the `column-width` value. If the width of the container is narrower than the specified value, the single column's width will be smaller than the declared column width.
		
		**Syntax**: `<length> | auto`
		
		**Initial value**: `auto`
	**/
	@:optional
	var MozColumnWidth : ts.AnyOf2<String, Float>;
	/**
		If you reference an SVG image in a webpage (such as with the `<img>` element or as a background image), the SVG image can coordinate with the embedding element (its context) to have the image adopt property values set on the embedding element. To do this the embedding element needs to list the properties that are to be made available to the image by listing them as values of the **`-moz-context-properties`** property, and the image needs to opt in to using those properties by using values such as the `context-fill` value.
		
		**Syntax**: `none | [ fill | fill-opacity | stroke | stroke-opacity ]#`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozContextProperties : String;
	/**
		The non-standard **`-moz-float-edge`** CSS property specifies whether the height and width properties of the element include the margin, border, or padding thickness.
		
		**Syntax**: `border-box | content-box | margin-box | padding-box`
		
		**Initial value**: `content-box`
	**/
	@:optional
	var MozFloatEdge : String;
	/**
		The **`font-feature-settings`** CSS property controls advanced typographic features in OpenType fonts.
		
		**Syntax**: `normal | <feature-tag-value>#`
		
		**Initial value**: `normal`
	**/
	@:optional
	var MozFontFeatureSettings : String;
	/**
		The **`font-language-override`** CSS property controls the use of language-specific glyphs in a typeface.
		
		**Syntax**: `normal | <string>`
		
		**Initial value**: `normal`
	**/
	@:optional
	var MozFontLanguageOverride : String;
	/**
		The **`-moz-force-broken-image-icon`** extended CSS property can be used to force the broken image icon to be shown even when a broken image has an `alt` attribute.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozForceBrokenImageIcon : ts.AnyOf2<Float, String>;
	/**
		The **`hyphens`** CSS property specifies how words should be hyphenated when text wraps across multiple lines. You can prevent hyphenation entirely, use hyphenation in manually-specified points within the text, or let the browser automatically insert hyphens where appropriate.
		
		**Syntax**: `none | manual | auto`
		
		**Initial value**: `manual`
	**/
	@:optional
	var MozHyphens : String;
	/**
		For certain XUL elements and pseudo-elements that use an image from the `list-style-image` property, this property specifies a region of the image that is used in place of the whole image. This allows elements to use different pieces of the same image to improve performance.
		
		**Syntax**: `<shape> | auto`
		
		**Initial value**: `auto`
	**/
	@:optional
	var MozImageRegion : String;
	/**
		The **`margin-inline-end`** CSS property defines the logical inline end margin of an element, which maps to a physical margin depending on the element's writing mode, directionality, and text orientation. In other words, it corresponds to the `margin-top`, `margin-right`, `margin-bottom` or `margin-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'margin-left'>`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozMarginEnd : ts.AnyOf2<String, Float>;
	/**
		The **`margin-inline-start`** CSS property defines the logical inline start margin of an element, which maps to a physical margin depending on the element's writing mode, directionality, and text orientation. It corresponds to the `margin-top`, `margin-right`, `margin-bottom`, or `margin-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'margin-left'>`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozMarginStart : ts.AnyOf2<String, Float>;
	/**
		The **`-moz-orient`** CSS property specifies the orientation of the element to which it's applied.
		
		**Syntax**: `inline | block | horizontal | vertical`
		
		**Initial value**: `inline`
	**/
	@:optional
	var MozOrient : String;
	/**
		In Mozilla applications, the **`-moz-outline-radius-bottomleft`** CSS property can be used to round the bottom-left corner of an element's `outline`.
		
		**Syntax**: `<outline-radius>`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozOutlineRadiusBottomleft : ts.AnyOf2<String, Float>;
	/**
		In Mozilla applications, the **`-moz-outline-radius-bottomright`** CSS property can be used to round the bottom-right corner of an element's `outline`.
		
		**Syntax**: `<outline-radius>`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozOutlineRadiusBottomright : ts.AnyOf2<String, Float>;
	/**
		In Mozilla applications, the **`-moz-outline-radius-topleft`** CSS property can be used to round the top-left corner of an element's `outline`.
		
		**Syntax**: `<outline-radius>`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozOutlineRadiusTopleft : ts.AnyOf2<String, Float>;
	/**
		In Mozilla applications, the **`-moz-outline-radius-topright`** CSS property can be used to round the top-right corner of an element's `outline`.
		
		**Syntax**: `<outline-radius>`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozOutlineRadiusTopright : ts.AnyOf2<String, Float>;
	/**
		The **`padding-inline-end`** CSS property defines the logical inline end padding of an element, which maps to a physical padding depending on the element's writing mode, directionality, and text orientation. It corresponds to the `padding-top`, `padding-right`, `padding-bottom`, or `padding-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'padding-left'>`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozPaddingEnd : ts.AnyOf2<String, Float>;
	/**
		The **`padding-inline-start`** CSS property defines the logical inline start padding of an element, which maps to a physical padding depending on the element's writing mode, directionality, and text orientation. It corresponds to the `padding-top`, `padding-right`, `padding-bottom`, or `padding-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'padding-left'>`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozPaddingStart : ts.AnyOf2<String, Float>;
	/**
		The **`perspective`** CSS property determines the distance between the z=0 plane and the user in order to give a 3D-positioned element some perspective. Each 3D element with z>0 becomes larger; each 3D-element with z<0 becomes smaller. The strength of the effect is determined by the value of this property.
		
		**Syntax**: `none | <length>`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozPerspective : ts.AnyOf2<String, Float>;
	/**
		The **`perspective-origin`** CSS property determines the position at which the viewer is looking. It is used as the _vanishing point_ by the `perspective` property.
		
		**Syntax**: `<position>`
		
		**Initial value**: `50% 50%`
	**/
	@:optional
	var MozPerspectiveOrigin : ts.AnyOf2<String, Float>;
	/**
		**`-moz-stack-sizing`** is an extended CSS property. Normally, a `stack` will change its size so that all of its child elements are completely visible. For example, moving a child of the stack far to the right will widen the stack so the child remains visible.
		
		**Syntax**: `ignore | stretch-to-fit`
		
		**Initial value**: `stretch-to-fit`
	**/
	@:optional
	var MozStackSizing : String;
	/**
		The **`tab-size`** CSS property is used to customize the width of a tab (`U+0009`) character.
		
		**Syntax**: `<integer> | <length>`
		
		**Initial value**: `8`
	**/
	@:optional
	var MozTabSize : ts.AnyOf2<String, Float>;
	/**
		The **`text-size-adjust`** CSS property controls the text inflation algorithm used on some smartphones and tablets. Other browsers will ignore this property.
		
		**Syntax**: `none | auto | <percentage>`
		
		**Initial value**: `auto` for smartphone browsers supporting inflation, `none` in other cases (and then not modifiable).
	**/
	@:optional
	var MozTextSizeAdjust : String;
	/**
		The **`transform-origin`** CSS property sets the origin for an element's transformations.
		
		**Syntax**: `[ <length-percentage> | left | center | right | top | bottom ] | [ [ <length-percentage> | left | center | right ] && [ <length-percentage> | top | center | bottom ] ] <length>?`
		
		**Initial value**: `50% 50% 0`
	**/
	@:optional
	var MozTransformOrigin : ts.AnyOf2<String, Float>;
	/**
		The **`transform-style`** CSS property sets whether children of an element are positioned in the 3D space or are flattened in the plane of the element.
		
		**Syntax**: `flat | preserve-3d`
		
		**Initial value**: `flat`
	**/
	@:optional
	var MozTransformStyle : String;
	/**
		The **`transition-delay`** CSS property specifies the duration to wait before starting a property's transition effect when its value changes.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var MozTransitionDelay : String;
	/**
		The **`transition-duration`** CSS property sets the length of time a transition animation should take to complete. By default, the value is `0s`, meaning that no animation will occur.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var MozTransitionDuration : String;
	/**
		The **`transition-property`** CSS property sets the CSS properties to which a transition effect should be applied.
		
		**Syntax**: `none | <single-transition-property>#`
		
		**Initial value**: all
	**/
	@:optional
	var MozTransitionProperty : String;
	/**
		The **`transition-timing-function`** CSS property sets how intermediate values are calculated for CSS properties being affected by a transition effect.
		
		**Syntax**: `<timing-function>#`
		
		**Initial value**: `ease`
	**/
	@:optional
	var MozTransitionTimingFunction : String;
	/**
		The **`-moz-user-focus`** CSS property is used to indicate whether an element can have the focus.
		
		**Syntax**: `ignore | normal | select-after | select-before | select-menu | select-same | select-all | none`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozUserFocus : String;
	/**
		The **`user-modify`** property has no effect in Firefox. It was originally planned to determine whether or not the content of an element can be edited by a user.
		
		**Syntax**: `read-only | read-write | write-only`
		
		**Initial value**: `read-only`
	**/
	@:optional
	var MozUserModify : String;
	/**
		The `**user-select**` CSS property controls whether the user can select text. This doesn't have any effect on content loaded as chrome, except in textboxes.
		
		**Syntax**: `auto | text | none | contain | all`
		
		**Initial value**: `auto`
	**/
	@:optional
	var MozUserSelect : String;
	/**
		The **`-moz-window-dragging`** CSS property specifies whether a window is draggable or not. It only works in Chrome code, and only on Mac OS X.
		
		**Syntax**: `drag | no-drag`
		
		**Initial value**: `drag`
	**/
	@:optional
	var MozWindowDragging : String;
	/**
		The **`-ms-accelerator`** CSS property is a Microsoft extension that sets or retrieves a string indicating whether the object represents a keyboard shortcut.
		
		**Syntax**: `false | true`
		
		**Initial value**: `false`
	**/
	@:optional
	var msAccelerator : String;
	/**
		The **`align-self`** CSS property aligns flex items of the current flex line overriding the `align-items` value. If any of the item's cross-axis margin is set to `auto`, then `align-self` is ignored. In Grid layout `align-self` aligns the item inside the grid area.
		
		**Syntax**: `auto | normal | stretch | <baseline-position> | <overflow-position>? <self-position>`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msAlignSelf : String;
	/**
		The **`-ms-block-progression`** CSS property is a Microsoft extension that specifies the block progression and layout orientation.
		
		**Syntax**: `tb | rl | bt | lr`
		
		**Initial value**: `tb`
	**/
	@:optional
	var msBlockProgression : String;
	/**
		The **`-ms-content-zoom-chaining`** CSS property is a Microsoft extension specifying the zoom behavior that occurs when a user hits the zoom limit during page manipulation.
		
		**Syntax**: `none | chained`
		
		**Initial value**: `none`
	**/
	@:optional
	var msContentZoomChaining : String;
	/**
		The **`-ms-content-zoom-limit-max`** CSS property is a Microsoft extension that specifies the selected elements' maximum zoom factor.
		
		**Syntax**: `<percentage>`
		
		**Initial value**: `400%`
	**/
	@:optional
	var msContentZoomLimitMax : String;
	/**
		The **`-ms-content-zoom-limit-min`** CSS property is a Microsoft extension that specifies the minimum zoom factor.
		
		**Syntax**: `<percentage>`
		
		**Initial value**: `100%`
	**/
	@:optional
	var msContentZoomLimitMin : String;
	/**
		The **`-ms-content-zoom-snap-points`** CSS property is a Microsoft extension that specifies where zoom snap-points are located.
		
		**Syntax**: `snapInterval( <percentage>, <percentage> ) | snapList( <percentage># )`
		
		**Initial value**: `snapInterval(0%, 100%)`
	**/
	@:optional
	var msContentZoomSnapPoints : String;
	/**
		The **`-ms-content-zoom-snap-type`** CSS property is a Microsoft extension that specifies how zooming is affected by defined snap-points.
		
		**Syntax**: `none | proximity | mandatory`
		
		**Initial value**: `none`
	**/
	@:optional
	var msContentZoomSnapType : String;
	/**
		The **`-ms-content-zooming`** CSS property is a Microsoft extension that specifies whether zooming is enabled.
		
		**Syntax**: `none | zoom`
		
		**Initial value**: zoom for the top level element, none for all other elements
	**/
	@:optional
	var msContentZooming : String;
	/**
		The `-ms-filter` CSS property is a Microsoft extension that sets or retrieves the filter or collection of filters applied to an object.
		
		**Syntax**: `<string>`
		
		**Initial value**: "" (the empty string)
	**/
	@:optional
	var msFilter : String;
	/**
		The **`flex-direction`** CSS property sets how flex items are placed in the flex container defining the main axis and the direction (normal or reversed).
		
		**Syntax**: `row | row-reverse | column | column-reverse`
		
		**Initial value**: `row`
	**/
	@:optional
	var msFlexDirection : String;
	/**
		The **`flex-grow`** CSS property sets how much of the available space in the flex container should be assigned to that item (the flex grow factor). If all sibling items have the same flex grow factor, then all items will receive the same share of available space, otherwise it is distributed according to the ratio defined by the different flex grow factors.
		
		**Syntax**: `<number>`
		
		**Initial value**: `0`
	**/
	@:optional
	var msFlexPositive : ts.AnyOf2<Float, String>;
	/**
		The **`-ms-flow-from`** CSS property is a Microsoft extension that gets or sets a value identifying a region container in the document that accepts the content flow from the data source.
		
		**Syntax**: `[ none | <custom-ident> ]#`
		
		**Initial value**: `none`
	**/
	@:optional
	var msFlowFrom : String;
	/**
		The **`-ms-flow-into`** CSS property is a Microsoft extension that gets or sets a value identifying an iframe container in the document that serves as the region's data source.
		
		**Syntax**: `[ none | <custom-ident> ]#`
		
		**Initial value**: `none`
	**/
	@:optional
	var msFlowInto : String;
	/**
		The **`grid-auto-columns`** CSS property specifies the size of an implicitly-created grid column track.
		
		**Syntax**: `<track-size>+`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msGridColumns : ts.AnyOf2<String, Float>;
	/**
		The **`grid-auto-rows`** CSS property specifies the size of an implicitly-created grid row track.
		
		**Syntax**: `<track-size>+`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msGridRows : ts.AnyOf2<String, Float>;
	/**
		The **`-ms-high-contrast-adjust`** CSS property is a Microsoft extension that gets or sets a value indicating whether to override any CSS properties that would have been set in high contrast mode.
		
		**Syntax**: `auto | none`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msHighContrastAdjust : String;
	/**
		The **`-ms-hyphenate-limit-chars`** CSS property is a Microsoft extension that specifies one to three values indicating the minimum number of characters in a hyphenated word. If the word does not meet the required minimum number of characters in the word, before the hyphen, or after the hyphen, then the word is not hyphenated.
		
		**Syntax**: `auto | <integer>{1,3}`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msHyphenateLimitChars : ts.AnyOf2<String, Float>;
	/**
		The **`-ms-hyphenate-limit-lines`** CSS property is a Microsoft extension specifying the maximum number of consecutive lines in an element that may be ended with a hyphenated word.
		
		**Syntax**: `no-limit | <integer>`
		
		**Initial value**: `no-limit`
	**/
	@:optional
	var msHyphenateLimitLines : ts.AnyOf2<Float, String>;
	/**
		The `**-ms-hyphenate-limit-zone**` CSS property is a Microsoft extension specifying the width of the hyphenation zone.
		
		**Syntax**: `<percentage> | <length>`
		
		**Initial value**: `0`
	**/
	@:optional
	var msHyphenateLimitZone : ts.AnyOf2<String, Float>;
	/**
		The **`hyphens`** CSS property specifies how words should be hyphenated when text wraps across multiple lines. You can prevent hyphenation entirely, use hyphenation in manually-specified points within the text, or let the browser automatically insert hyphens where appropriate.
		
		**Syntax**: `none | manual | auto`
		
		**Initial value**: `manual`
	**/
	@:optional
	var msHyphens : String;
	/**
		The **`-ms-ime-align`** CSS property is a Microsoft extension aligning the Input Method Editor (IME) candidate window box relative to the element on which the IME composition is active. The extension is implemented in Microsoft Edge and Internet Explorer 11.
		
		**Syntax**: `auto | after`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msImeAlign : String;
	/**
		The **`line-break`** CSS property sets how to break lines of Chinese, Japanese, or Korean (CJK) text when working with punctuation and symbols.
		
		**Syntax**: `auto | loose | normal | strict | anywhere`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msLineBreak : String;
	/**
		The **`order`** CSS property sets the order to lay out an item in a flex or grid container. Items in a container are sorted by ascending `order` value and then by their source code order.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `0`
	**/
	@:optional
	var msOrder : ts.AnyOf2<Float, String>;
	/**
		The **`-ms-overflow-style`** CSS property is a Microsoft extension controlling the behavior of scrollbars when the content of an element overflows.
		
		**Syntax**: `auto | none | scrollbar | -ms-autohiding-scrollbar`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msOverflowStyle : String;
	/**
		The **`overflow-x`** CSS property sets what shows when content overflows a block-level element's left and right edges. This may be nothing, a scroll bar, or the overflow content.
		
		**Syntax**: `visible | hidden | clip | scroll | auto`
		
		**Initial value**: `visible`
	**/
	@:optional
	var msOverflowX : String;
	/**
		The **`overflow-y`** CSS property sets what shows when content overflows a block-level element's top and bottom edges. This may be nothing, a scroll bar, or the overflow content.
		
		**Syntax**: `visible | hidden | clip | scroll | auto`
		
		**Initial value**: `visible`
	**/
	@:optional
	var msOverflowY : String;
	/**
		The `**-ms-scroll-chaining**` CSS property is a Microsoft extension that specifies the scrolling behavior that occurs when a user hits the scroll limit during a manipulation.
		
		**Syntax**: `chained | none`
		
		**Initial value**: `chained`
	**/
	@:optional
	var msScrollChaining : String;
	/**
		The `**-ms-scroll-limit-x-max**` CSS property is a Microsoft extension that specifies the maximum value for the `Element.scrollLeft` property.
		
		**Syntax**: `auto | <length>`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msScrollLimitXMax : ts.AnyOf2<String, Float>;
	/**
		The **`-ms-scroll-limit-x-min`** CSS property is a Microsoft extension that specifies the minimum value for the `Element.scrollLeft` property.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
	**/
	@:optional
	var msScrollLimitXMin : ts.AnyOf2<String, Float>;
	/**
		The **`-ms-scroll-limit-y-max`** CSS property is a Microsoft extension that specifies the maximum value for the `Element.scrollTop` property.
		
		**Syntax**: `auto | <length>`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msScrollLimitYMax : ts.AnyOf2<String, Float>;
	/**
		The **`-ms-scroll-limit-y-min`** CSS property is a Microsoft extension that specifies the minimum value for the `Element.scrollTop` property.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
	**/
	@:optional
	var msScrollLimitYMin : ts.AnyOf2<String, Float>;
	/**
		The **`-ms-scroll-rails`** CSS property is a Microsoft extension that specifies whether scrolling locks to the primary axis of motion.
		
		**Syntax**: `none | railed`
		
		**Initial value**: `railed`
	**/
	@:optional
	var msScrollRails : String;
	/**
		The **`-ms-scroll-snap-points-x`** CSS property is a Microsoft extension that specifies where snap-points will be located along the x-axis.
		
		**Syntax**: `snapInterval( <length-percentage>, <length-percentage> ) | snapList( <length-percentage># )`
		
		**Initial value**: `snapInterval(0px, 100%)`
	**/
	@:optional
	var msScrollSnapPointsX : String;
	/**
		The **`-ms-scroll-snap-points-y`** CSS property is a Microsoft extension that specifies where snap-points will be located along the y-axis.
		
		**Syntax**: `snapInterval( <length-percentage>, <length-percentage> ) | snapList( <length-percentage># )`
		
		**Initial value**: `snapInterval(0px, 100%)`
	**/
	@:optional
	var msScrollSnapPointsY : String;
	/**
		The **`scroll-snap-type`** CSS property sets how strictly snap points are enforced on the scroll container in case there is one.
		
		**Syntax**: `none | proximity | mandatory`
		
		**Initial value**: `none`
	**/
	@:optional
	var msScrollSnapType : String;
	/**
		The **`-ms-scroll-translation`** CSS property is a Microsoft extension that specifies whether vertical-to-horizontal scroll wheel translation occurs on the specified element.
		
		**Syntax**: `none | vertical-to-horizontal`
		
		**Initial value**: `none`
	**/
	@:optional
	var msScrollTranslation : String;
	/**
		The **`-ms-scrollbar-3dlight-color`** CSS property is a Microsoft extension specifying the color of the top and left edges of the scroll box and scroll arrows of a scroll bar.
		
		**Syntax**: `<color>`
		
		**Initial value**: depends on user agent
	**/
	@:optional
	var msScrollbar3dlightColor : String;
	/**
		The **`-ms-scrollbar-arrow-color`** CSS property is a Microsoft extension that specifies the color of the arrow elements of a scroll arrow.
		
		**Syntax**: `<color>`
		
		**Initial value**: `ButtonText`
	**/
	@:optional
	var msScrollbarArrowColor : String;
	/**
		The `**-ms-scrollbar-base-color**` CSS property is a Microsoft extension that specifies the base color of the main elements of a scroll bar.
		
		**Syntax**: `<color>`
		
		**Initial value**: depends on user agent
	**/
	@:optional
	var msScrollbarBaseColor : String;
	/**
		The **`-ms-scrollbar-darkshadow-color`** CSS property is a Microsoft extension that specifies the color of a scroll bar's gutter.
		
		**Syntax**: `<color>`
		
		**Initial value**: `ThreeDDarkShadow`
	**/
	@:optional
	var msScrollbarDarkshadowColor : String;
	/**
		The `**-ms-scrollbar-face-color**` CSS property is a Microsoft extension that specifies the color of the scroll box and scroll arrows of a scroll bar.
		
		**Syntax**: `<color>`
		
		**Initial value**: `ThreeDFace`
	**/
	@:optional
	var msScrollbarFaceColor : String;
	/**
		The `**-ms-scrollbar-highlight-color**` CSS property is a Microsoft extension that specifies the color of the slider tray, the top and left edges of the scroll box, and the scroll arrows of a scroll bar.
		
		**Syntax**: `<color>`
		
		**Initial value**: `ThreeDHighlight`
	**/
	@:optional
	var msScrollbarHighlightColor : String;
	/**
		The **`-ms-scrollbar-shadow-color`** CSS property is a Microsoft extension that specifies the color of the bottom and right edges of the scroll box and scroll arrows of a scroll bar.
		
		**Syntax**: `<color>`
		
		**Initial value**: `ThreeDDarkShadow`
	**/
	@:optional
	var msScrollbarShadowColor : String;
	/**
		The **`-ms-text-autospace`** CSS property is a Microsoft extension that specifies the autospacing and narrow space width adjustment of text.
		
		**Syntax**: `none | ideograph-alpha | ideograph-numeric | ideograph-parenthesis | ideograph-space`
		
		**Initial value**: `none`
	**/
	@:optional
	var msTextAutospace : String;
	/**
		The **`text-combine-upright`** CSS property sets the combination of characters into the space of a single character. If the combined text is wider than 1em, the user agent must fit the contents within 1em. The resulting composition is treated as a single upright glyph for layout and decoration. This property only has an effect in vertical writing modes.
		
		**Syntax**: `none | all | [ digits <integer>? ]`
		
		**Initial value**: `none`
	**/
	@:optional
	var msTextCombineHorizontal : String;
	/**
		The **`text-overflow`** CSS property sets how hidden overflow content is signaled to users. It can be clipped, display an ellipsis ('`…`'), or display a custom string.
		
		**Syntax**: `[ clip | ellipsis | <string> ]{1,2}`
		
		**Initial value**: `clip`
	**/
	@:optional
	var msTextOverflow : String;
	/**
		The **`touch-action`** CSS property sets how a region can be manipulated by a touchscreen user (for example, by zooming features built into the browser).
		
		**Syntax**: `auto | none | [ [ pan-x | pan-left | pan-right ] || [ pan-y | pan-up | pan-down ] || pinch-zoom ] | manipulation`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msTouchAction : String;
	/**
		The **`-ms-touch-select`** CSS property is a Microsoft extension that toggles the gripper visual elements that enable touch text selection.
		
		**Syntax**: `grippers | none`
		
		**Initial value**: `grippers`
	**/
	@:optional
	var msTouchSelect : String;
	/**
		The **`transform`** CSS property lets you rotate, scale, skew, or translate an element. It modifies the coordinate space of the CSS visual formatting model.
		
		**Syntax**: `none | <transform-list>`
		
		**Initial value**: `none`
	**/
	@:optional
	var msTransform : String;
	/**
		The **`transform-origin`** CSS property sets the origin for an element's transformations.
		
		**Syntax**: `[ <length-percentage> | left | center | right | top | bottom ] | [ [ <length-percentage> | left | center | right ] && [ <length-percentage> | top | center | bottom ] ] <length>?`
		
		**Initial value**: `50% 50% 0`
	**/
	@:optional
	var msTransformOrigin : ts.AnyOf2<String, Float>;
	/**
		The **`transition-delay`** CSS property specifies the duration to wait before starting a property's transition effect when its value changes.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var msTransitionDelay : String;
	/**
		The **`transition-duration`** CSS property sets the length of time a transition animation should take to complete. By default, the value is `0s`, meaning that no animation will occur.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var msTransitionDuration : String;
	/**
		The **`transition-property`** CSS property sets the CSS properties to which a transition effect should be applied.
		
		**Syntax**: `none | <single-transition-property>#`
		
		**Initial value**: all
	**/
	@:optional
	var msTransitionProperty : String;
	/**
		The **`transition-timing-function`** CSS property sets how intermediate values are calculated for CSS properties being affected by a transition effect.
		
		**Syntax**: `<timing-function>#`
		
		**Initial value**: `ease`
	**/
	@:optional
	var msTransitionTimingFunction : String;
	/**
		The `**user-select**` CSS property controls whether the user can select text. This doesn't have any effect on content loaded as chrome, except in textboxes.
		
		**Syntax**: `none | element | text`
		
		**Initial value**: `text`
	**/
	@:optional
	var msUserSelect : String;
	/**
		The **`word-break`** CSS property sets whether line breaks appear wherever the text would otherwise overflow its content box.
		
		**Syntax**: `normal | break-all | keep-all | break-word`
		
		**Initial value**: `normal`
	**/
	@:optional
	var msWordBreak : String;
	/**
		The **`-ms-wrap-flow`** CSS property is a Microsoft extension that specifies how exclusions impact inline content within block-level elements.
		
		**Syntax**: `auto | both | start | end | maximum | clear`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msWrapFlow : String;
	/**
		The **`-ms-wrap-margin`** CSS property is a Microsoft extension that specifies a margin that offsets the inner wrap shape from other shapes.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
	**/
	@:optional
	var msWrapMargin : ts.AnyOf2<String, Float>;
	/**
		The **`-ms-wrap-through`** CSS property is a Microsoft extension that specifies how content should wrap around an exclusion element.
		
		**Syntax**: `wrap | none`
		
		**Initial value**: `wrap`
	**/
	@:optional
	var msWrapThrough : String;
	/**
		The **`writing-mode`** CSS property sets whether lines of text are laid out horizontally or vertically, as well as the direction in which blocks progress.
		
		**Syntax**: `horizontal-tb | vertical-rl | vertical-lr | sideways-rl | sideways-lr`
		
		**Initial value**: `horizontal-tb`
	**/
	@:optional
	var msWritingMode : String;
	/**
		The **`object-fit`** CSS property sets how the content of a replaced element, such as an `<img>` or `<video>`, should be resized to fit its container.
		
		**Syntax**: `fill | contain | cover | none | scale-down`
		
		**Initial value**: `fill`
	**/
	@:optional
	var OObjectFit : String;
	/**
		The **`object-position`** CSS property specifies the alignment of the selected replaced element's contents within the element's box. Areas of the box which aren't covered by the replaced element's object will show the element's background.
		
		**Syntax**: `<position>`
		
		**Initial value**: `50% 50%`
	**/
	@:optional
	var OObjectPosition : ts.AnyOf2<String, Float>;
	/**
		The **`tab-size`** CSS property is used to customize the width of a tab (`U+0009`) character.
		
		**Syntax**: `<integer> | <length>`
		
		**Initial value**: `8`
	**/
	@:optional
	var OTabSize : ts.AnyOf2<String, Float>;
	/**
		The **`text-overflow`** CSS property sets how hidden overflow content is signaled to users. It can be clipped, display an ellipsis ('`…`'), or display a custom string.
		
		**Syntax**: `[ clip | ellipsis | <string> ]{1,2}`
		
		**Initial value**: `clip`
	**/
	@:optional
	var OTextOverflow : String;
	/**
		The **`transform-origin`** CSS property sets the origin for an element's transformations.
		
		**Syntax**: `[ <length-percentage> | left | center | right | top | bottom ] | [ [ <length-percentage> | left | center | right ] && [ <length-percentage> | top | center | bottom ] ] <length>?`
		
		**Initial value**: `50% 50% 0`
	**/
	@:optional
	var OTransformOrigin : ts.AnyOf2<String, Float>;
	/**
		The CSS **`align-content`** property sets how the browser distributes space between and around content items along the cross-axis of a flexbox container, and the main-axis of a grid container.
		
		**Syntax**: `normal | <baseline-position> | <content-distribution> | <overflow-position>? <content-position>`
		
		**Initial value**: `normal`
	**/
	@:optional
	var WebkitAlignContent : String;
	/**
		The CSS **`align-items`** property sets the `align-self` value on all direct children as a group. The align-self property sets the alignment of an item within its containing block. In Flexbox it controls the alignment of items on the Cross Axis, in Grid Layout it controls the alignment of items on the Block Axis within their grid area.
		
		**Syntax**: `normal | stretch | <baseline-position> | [ <overflow-position>? <self-position> ]`
		
		**Initial value**: `normal`
	**/
	@:optional
	var WebkitAlignItems : String;
	/**
		The **`align-self`** CSS property aligns flex items of the current flex line overriding the `align-items` value. If any of the item's cross-axis margin is set to `auto`, then `align-self` is ignored. In Grid layout `align-self` aligns the item inside the grid area.
		
		**Syntax**: `auto | normal | stretch | <baseline-position> | <overflow-position>? <self-position>`
		
		**Initial value**: `auto`
	**/
	@:optional
	var WebkitAlignSelf : String;
	/**
		The **`animation-delay`** CSS property sets when an animation starts. The animation can start later, immediately from its beginning, or immediately and partway through the animation.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var WebkitAnimationDelay : String;
	/**
		The **`animation-direction`** CSS property sets whether an animation should play forwards, backwards, or alternating back and forth.
		
		**Syntax**: `<single-animation-direction>#`
		
		**Initial value**: `normal`
	**/
	@:optional
	var WebkitAnimationDirection : String;
	/**
		The **`animation-duration`** CSS property sets the length of time that an animation takes to complete one cycle.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var WebkitAnimationDuration : String;
	/**
		The **`animation-fill-mode`** CSS property sets how a CSS animation applies styles to its target before and after its execution.
		
		**Syntax**: `<single-animation-fill-mode>#`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitAnimationFillMode : String;
	/**
		The **`animation-iteration-count`** CSS property sets the number of times an animation cycle should be played before stopping.
		
		**Syntax**: `<single-animation-iteration-count>#`
		
		**Initial value**: `1`
	**/
	@:optional
	var WebkitAnimationIterationCount : ts.AnyOf2<String, Float>;
	/**
		The **`animation-name`** CSS property sets one or more animations to apply to an element. Each name is an `@keyframes` at-rule that sets the property values for the animation sequence.
		
		**Syntax**: `[ none | <keyframes-name> ]#`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitAnimationName : String;
	/**
		The **`animation-play-state`** CSS property sets whether an animation is running or paused.
		
		**Syntax**: `<single-animation-play-state>#`
		
		**Initial value**: `running`
	**/
	@:optional
	var WebkitAnimationPlayState : String;
	/**
		The `**animation-timing-function**` CSS property sets how an animation progresses through the duration of each cycle.
		
		**Syntax**: `<timing-function>#`
		
		**Initial value**: `ease`
	**/
	@:optional
	var WebkitAnimationTimingFunction : String;
	/**
		The **`-moz-appearance`** CSS property is used in Gecko (Firefox) to display an element using platform-native styling based on the operating system's theme.
		
		**Syntax**: `none | button | button-bevel | caret | checkbox | default-button | inner-spin-button | listbox | listitem | media-controls-background | media-controls-fullscreen-background | media-current-time-display | media-enter-fullscreen-button | media-exit-fullscreen-button | media-fullscreen-button | media-mute-button | media-overlay-play-button | media-play-button | media-seek-back-button | media-seek-forward-button | media-slider | media-sliderthumb | media-time-remaining-display | media-toggle-closed-captions-button | media-volume-slider | media-volume-slider-container | media-volume-sliderthumb | menulist | menulist-button | menulist-text | menulist-textfield | meter | progress-bar | progress-bar-value | push-button | radio | searchfield | searchfield-cancel-button | searchfield-decoration | searchfield-results-button | searchfield-results-decoration | slider-horizontal | slider-vertical | sliderthumb-horizontal | sliderthumb-vertical | square-button | textarea | textfield`
		
		**Initial value**: `none` (but this value is overridden in the user agent CSS)
	**/
	@:optional
	var WebkitAppearance : String;
	/**
		The **`backdrop-filter`** CSS property lets you apply graphical effects such as blurring or color shifting to the area behind an element. Because it applies to everything _behind_ the element, to see the effect you must make the element or its background at least partially transparent.
		
		**Syntax**: `none | <filter-function-list>`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitBackdropFilter : String;
	/**
		The **`backface-visibility`** CSS property sets whether the back face of an element is visible when turned towards the user.
		
		**Syntax**: `visible | hidden`
		
		**Initial value**: `visible`
	**/
	@:optional
	var WebkitBackfaceVisibility : String;
	/**
		The **`background-clip`** CSS property sets whether an element's background `<color>` or `<image>` extends underneath its border.
		
		**Syntax**: `<box>#`
		
		**Initial value**: `border-box`
	**/
	@:optional
	var WebkitBackgroundClip : String;
	/**
		The **`background-origin`** CSS property sets the _background positioning area_. In other words, it sets the origin position of an image set with the `background-image` property.
		
		**Syntax**: `<box>#`
		
		**Initial value**: `padding-box`
	**/
	@:optional
	var WebkitBackgroundOrigin : String;
	/**
		The **`background-size`** CSS property sets the size of the element's background image. The image can be left to its natural size, stretched, or constrained to fit the available space.
		
		**Syntax**: `<bg-size>#`
		
		**Initial value**: `auto auto`
	**/
	@:optional
	var WebkitBackgroundSize : ts.AnyOf2<String, Float>;
	/**
		**Syntax**: `<'color'>`
		
		**Initial value**: `currentcolor`
	**/
	@:optional
	var WebkitBorderBeforeColor : String;
	/**
		**Syntax**: `<'border-style'>`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitBorderBeforeStyle : String;
	/**
		**Syntax**: `<'border-width'>`
		
		**Initial value**: `medium`
	**/
	@:optional
	var WebkitBorderBeforeWidth : ts.AnyOf2<String, Float>;
	/**
		The **`border-bottom-left-radius`** CSS property rounds the bottom-left corner of an element.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitBorderBottomLeftRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-bottom-right-radius`** CSS property rounds the bottom-right corner of an element.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitBorderBottomRightRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-image-slice`** CSS property divides the image specified by `border-image-source` into regions. These regions form the components of an element's border image.
		
		**Syntax**: `<number-percentage>{1,4} && fill?`
		
		**Initial value**: `100%`
	**/
	@:optional
	var WebkitBorderImageSlice : ts.AnyOf2<String, Float>;
	/**
		The **`border-top-left-radius`** CSS property rounds the top-left corner of an element.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitBorderTopLeftRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-top-right-radius`** CSS property rounds the top-right corner of an element.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitBorderTopRightRadius : ts.AnyOf2<String, Float>;
	/**
		The **`box-decoration-break`** CSS property specifies how an element's fragments should be rendered when broken across multiple lines, columns, or pages.
		
		**Syntax**: `slice | clone`
		
		**Initial value**: `slice`
	**/
	@:optional
	var WebkitBoxDecorationBreak : String;
	/**
		The **`-webkit-box-reflect`** CSS property lets you reflect the content of an element in one specific direction.
		
		**Syntax**: `[ above | below | right | left ]? <length>? <image>?`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitBoxReflect : ts.AnyOf2<String, Float>;
	/**
		The **`box-shadow`** CSS property adds shadow effects around an element's frame. You can set multiple effects separated by commas. A box shadow is described by X and Y offsets relative to the element, blur and spread radii, and color.
		
		**Syntax**: `none | <shadow>#`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitBoxShadow : String;
	/**
		The **`box-sizing`** CSS property defines how the user agent should calculate the total width and height of an element.
		
		**Syntax**: `content-box | border-box`
		
		**Initial value**: `content-box`
	**/
	@:optional
	var WebkitBoxSizing : String;
	/**
		The `**clip-path**` CSS property creates a clipping region that sets what part of an element should be shown. Parts that are inside the region are shown, while those outside are hidden.
		
		**Syntax**: `<clip-source> | [ <basic-shape> || <geometry-box> ] | none`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitClipPath : String;
	/**
		The **`color-adjust`** CSS property sets what, if anything, the user agent may do to optimize the appearance of the element on the output device. By default, the browser is allowed to make any adjustments to the element's appearance it determines to be necessary and prudent given the type and capabilities of the output device.
		
		**Syntax**: `economy | exact`
		
		**Initial value**: `economy`
	**/
	@:optional
	var WebkitColorAdjust : String;
	/**
		The **`column-count`** CSS property breaks an element's content into the specified number of columns.
		
		**Syntax**: `<integer> | auto`
		
		**Initial value**: `auto`
	**/
	@:optional
	var WebkitColumnCount : ts.AnyOf2<Float, String>;
	/**
		The **`column-fill`** CSS property controls how an element's contents are balanced when broken into columns.
		
		**Syntax**: `auto | balance | balance-all`
		
		**Initial value**: `balance`
	**/
	@:optional
	var WebkitColumnFill : String;
	/**
		The **`column-gap`** CSS property sets the size of the gap (gutter) between an element's columns.
		
		**Syntax**: `normal | <length-percentage>`
		
		**Initial value**: `normal`
	**/
	@:optional
	var WebkitColumnGap : ts.AnyOf2<String, Float>;
	/**
		The **`column-rule-color`** CSS property sets the color of the rule (line) drawn between columns in a multi-column layout.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
	**/
	@:optional
	var WebkitColumnRuleColor : String;
	/**
		The **`column-rule-style`** CSS property sets the style of the line drawn between columns in a multi-column layout.
		
		**Syntax**: `<'border-style'>`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitColumnRuleStyle : String;
	/**
		The **`column-rule-width`** CSS property sets the width of the rule (line) drawn between columns in a multi-column layout.
		
		**Syntax**: `<'border-width'>`
		
		**Initial value**: `medium`
	**/
	@:optional
	var WebkitColumnRuleWidth : ts.AnyOf2<String, Float>;
	/**
		The **`column-span`** CSS property makes it possible for an element to span across all columns when its value is set to `all`.
		
		**Syntax**: `none | all`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitColumnSpan : String;
	/**
		The **`column-width`** CSS property specifies the ideal column width in a multi-column layout. The container will have as many columns as can fit without any of them having a width less than the `column-width` value. If the width of the container is narrower than the specified value, the single column's width will be smaller than the declared column width.
		
		**Syntax**: `<length> | auto`
		
		**Initial value**: `auto`
	**/
	@:optional
	var WebkitColumnWidth : ts.AnyOf2<String, Float>;
	/**
		The **`filter`** CSS property applies graphical effects like blur or color shift to an element. Filters are commonly used to adjust the rendering of images, backgrounds, and borders.
		
		**Syntax**: `none | <filter-function-list>`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitFilter : String;
	/**
		The **`flex-basis`** CSS property sets the initial main size of a flex item. It sets the size of the content box unless otherwise set with `box-sizing`.
		
		**Syntax**: `content | <'width'>`
		
		**Initial value**: `auto`
	**/
	@:optional
	var WebkitFlexBasis : ts.AnyOf2<String, Float>;
	/**
		The **`flex-direction`** CSS property sets how flex items are placed in the flex container defining the main axis and the direction (normal or reversed).
		
		**Syntax**: `row | row-reverse | column | column-reverse`
		
		**Initial value**: `row`
	**/
	@:optional
	var WebkitFlexDirection : String;
	/**
		The **`flex-grow`** CSS property sets how much of the available space in the flex container should be assigned to that item (the flex grow factor). If all sibling items have the same flex grow factor, then all items will receive the same share of available space, otherwise it is distributed according to the ratio defined by the different flex grow factors.
		
		**Syntax**: `<number>`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitFlexGrow : ts.AnyOf2<Float, String>;
	/**
		The **`flex-shrink`** CSS property sets the flex shrink factor of a flex item. If the size of flex items is larger than the flex container, items shrink to fit according to `flex-shrink`.
		
		**Syntax**: `<number>`
		
		**Initial value**: `1`
	**/
	@:optional
	var WebkitFlexShrink : ts.AnyOf2<Float, String>;
	/**
		The **`flex-wrap`** CSS property sets whether flex items are forced onto one line or can wrap onto multiple lines. If wrapping is allowed, it sets the direction that lines are stacked.
		
		**Syntax**: `nowrap | wrap | wrap-reverse`
		
		**Initial value**: `nowrap`
	**/
	@:optional
	var WebkitFlexWrap : String;
	/**
		The **`font-feature-settings`** CSS property controls advanced typographic features in OpenType fonts.
		
		**Syntax**: `normal | <feature-tag-value>#`
		
		**Initial value**: `normal`
	**/
	@:optional
	var WebkitFontFeatureSettings : String;
	/**
		The **`font-kerning`** CSS property sets the use of the kerning information stored in a font.
		
		**Syntax**: `auto | normal | none`
		
		**Initial value**: `auto`
	**/
	@:optional
	var WebkitFontKerning : String;
	/**
		The **`font-variant-ligatures`** CSS property controls which ligatures and contextual forms are used in textual content of the elements it applies to. This leads to more harmonized forms in the resulting text.
		
		**Syntax**: `normal | none | [ <common-lig-values> || <discretionary-lig-values> || <historical-lig-values> || <contextual-alt-values> ]`
		
		**Initial value**: `normal`
	**/
	@:optional
	var WebkitFontVariantLigatures : String;
	/**
		The **`hyphens`** CSS property specifies how words should be hyphenated when text wraps across multiple lines. You can prevent hyphenation entirely, use hyphenation in manually-specified points within the text, or let the browser automatically insert hyphens where appropriate.
		
		**Syntax**: `none | manual | auto`
		
		**Initial value**: `manual`
	**/
	@:optional
	var WebkitHyphens : String;
	/**
		The CSS **`justify-content`** property defines how the browser distributes space between and around content items along the main-axis of a flex container, and the inline axis of a grid container.
		
		**Syntax**: `normal | <content-distribution> | <overflow-position>? [ <content-position> | left | right ]`
		
		**Initial value**: `normal`
	**/
	@:optional
	var WebkitJustifyContent : String;
	/**
		The **`line-break`** CSS property sets how to break lines of Chinese, Japanese, or Korean (CJK) text when working with punctuation and symbols.
		
		**Syntax**: `auto | loose | normal | strict | anywhere`
		
		**Initial value**: `auto`
	**/
	@:optional
	var WebkitLineBreak : String;
	/**
		The **`-webkit-line-clamp`** CSS property allows limiting of the contents of a block container to the specified number of lines.
		
		**Syntax**: `none | <integer>`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitLineClamp : ts.AnyOf2<Float, String>;
	/**
		The **`margin-inline-end`** CSS property defines the logical inline end margin of an element, which maps to a physical margin depending on the element's writing mode, directionality, and text orientation. In other words, it corresponds to the `margin-top`, `margin-right`, `margin-bottom` or `margin-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'margin-left'>`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitMarginEnd : ts.AnyOf2<String, Float>;
	/**
		The **`margin-inline-start`** CSS property defines the logical inline start margin of an element, which maps to a physical margin depending on the element's writing mode, directionality, and text orientation. It corresponds to the `margin-top`, `margin-right`, `margin-bottom`, or `margin-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'margin-left'>`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitMarginStart : ts.AnyOf2<String, Float>;
	/**
		If a `-webkit-mask-image` is specified, `-webkit-mask-attachment` determines whether the mask image's position is fixed within the viewport, or scrolls along with its containing block.
		
		**Syntax**: `<attachment>#`
		
		**Initial value**: `scroll`
	**/
	@:optional
	var WebkitMaskAttachment : String;
	/**
		The **`mask-clip`** CSS property determines the area, which is affected by a mask. The painted content of an element must be restricted to this area.
		
		**Syntax**: `[ <box> | border | padding | content | text ]#`
		
		**Initial value**: `border`
	**/
	@:optional
	var WebkitMaskClip : String;
	/**
		The **`-webkit-mask-composite`** property specifies the manner in which multiple mask images applied to the same element are composited with one another. Mask images are composited in the opposite order that they are declared with the `-webkit-mask-image` property.
		
		**Syntax**: `<composite-style>#`
		
		**Initial value**: `source-over`
	**/
	@:optional
	var WebkitMaskComposite : String;
	/**
		The **`mask-image`** CSS property sets the image that is used as mask layer for an element.
		
		**Syntax**: `<mask-reference>#`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitMaskImage : String;
	/**
		The **`mask-origin`** CSS property sets the origin of a mask.
		
		**Syntax**: `[ <box> | border | padding | content ]#`
		
		**Initial value**: `padding`
	**/
	@:optional
	var WebkitMaskOrigin : String;
	/**
		The **`mask-position`** CSS property sets the initial position, relative to the mask position layer set by `mask-origin`, for each defined mask image.
		
		**Syntax**: `<position>#`
		
		**Initial value**: `0% 0%`
	**/
	@:optional
	var WebkitMaskPosition : ts.AnyOf2<String, Float>;
	/**
		The `-webkit-mask-position-x` CSS property sets the initial horizontal position of a mask image.
		
		**Syntax**: `[ <length-percentage> | left | center | right ]#`
		
		**Initial value**: `0%`
	**/
	@:optional
	var WebkitMaskPositionX : ts.AnyOf2<String, Float>;
	/**
		The `-webkit-mask-position-y` CSS property sets the initial vertical position of a mask image.
		
		**Syntax**: `[ <length-percentage> | top | center | bottom ]#`
		
		**Initial value**: `0%`
	**/
	@:optional
	var WebkitMaskPositionY : ts.AnyOf2<String, Float>;
	/**
		The **`mask-repeat`** CSS property sets how mask images are repeated. A mask image can be repeated along the horizontal axis, the vertical axis, both axes, or not repeated at all.
		
		**Syntax**: `<repeat-style>#`
		
		**Initial value**: `repeat`
	**/
	@:optional
	var WebkitMaskRepeat : String;
	/**
		The `-webkit-mask-repeat-x` property specifies whether and how a mask image is repeated (tiled) horizontally.
		
		**Syntax**: `repeat | no-repeat | space | round`
		
		**Initial value**: `repeat`
	**/
	@:optional
	var WebkitMaskRepeatX : String;
	/**
		The `-webkit-mask-repeat-y` property sets whether and how a mask image is repeated (tiled) vertically.
		
		**Syntax**: `repeat | no-repeat | space | round`
		
		**Initial value**: `repeat`
	**/
	@:optional
	var WebkitMaskRepeatY : String;
	/**
		The **`mask-size`** CSS property specifies the sizes of the mask images. The size of the image can be fully or partially constrained in order to preserve its intrinsic ratio.
		
		**Syntax**: `<bg-size>#`
		
		**Initial value**: `auto auto`
	**/
	@:optional
	var WebkitMaskSize : ts.AnyOf2<String, Float>;
	/**
		The **`max-inline-size`** CSS property defines the horizontal or vertical maximum size of an element's block depending on its writing mode. It corresponds to the `max-width` or the `max-height` property depending on the value defined for `writing-mode`. If the writing mode is vertically oriented, the value of `max-inline-size` relates to the maximal height of the element, otherwise it relates to the maximal width of the element. It relates to `max-block-size`, which defines the other dimension of the element.
		
		**Syntax**: `<'max-width'>`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitMaxInlineSize : ts.AnyOf2<String, Float>;
	/**
		The **`order`** CSS property sets the order to lay out an item in a flex or grid container. Items in a container are sorted by ascending `order` value and then by their source code order.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitOrder : ts.AnyOf2<Float, String>;
	/**
		The `-webkit-overflow-scrolling` CSS property controls whether or not touch devices use momentum-based scrolling for a given element.
		
		**Syntax**: `auto | touch`
		
		**Initial value**: `auto`
	**/
	@:optional
	var WebkitOverflowScrolling : String;
	/**
		The **`padding-inline-end`** CSS property defines the logical inline end padding of an element, which maps to a physical padding depending on the element's writing mode, directionality, and text orientation. It corresponds to the `padding-top`, `padding-right`, `padding-bottom`, or `padding-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'padding-left'>`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitPaddingEnd : ts.AnyOf2<String, Float>;
	/**
		The **`padding-inline-start`** CSS property defines the logical inline start padding of an element, which maps to a physical padding depending on the element's writing mode, directionality, and text orientation. It corresponds to the `padding-top`, `padding-right`, `padding-bottom`, or `padding-left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'padding-left'>`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitPaddingStart : ts.AnyOf2<String, Float>;
	/**
		The **`perspective`** CSS property determines the distance between the z=0 plane and the user in order to give a 3D-positioned element some perspective. Each 3D element with z>0 becomes larger; each 3D-element with z<0 becomes smaller. The strength of the effect is determined by the value of this property.
		
		**Syntax**: `none | <length>`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitPerspective : ts.AnyOf2<String, Float>;
	/**
		The **`perspective-origin`** CSS property determines the position at which the viewer is looking. It is used as the _vanishing point_ by the `perspective` property.
		
		**Syntax**: `<position>`
		
		**Initial value**: `50% 50%`
	**/
	@:optional
	var WebkitPerspectiveOrigin : ts.AnyOf2<String, Float>;
	/**
		The **`scroll-snap-type`** CSS property sets how strictly snap points are enforced on the scroll container in case there is one.
		
		**Syntax**: `none | [ x | y | block | inline | both ] [ mandatory | proximity ]?`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitScrollSnapType : String;
	/**
		The **`shape-margin`** CSS property sets a margin for a CSS shape created using `shape-outside`.
		
		**Syntax**: `<length-percentage>`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitShapeMargin : ts.AnyOf2<String, Float>;
	/**
		**`-webkit-tap-highlight-color`** is a non-standard CSS property that sets the color of the highlight that appears over a link while it's being tapped. The highlighting indicates to the user that their tap is being successfully recognized, and indicates which element they're tapping on.
		
		**Syntax**: `<color>`
		
		**Initial value**: `black`
	**/
	@:optional
	var WebkitTapHighlightColor : String;
	/**
		The **`text-combine-upright`** CSS property sets the combination of characters into the space of a single character. If the combined text is wider than 1em, the user agent must fit the contents within 1em. The resulting composition is treated as a single upright glyph for layout and decoration. This property only has an effect in vertical writing modes.
		
		**Syntax**: `none | all | [ digits <integer>? ]`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitTextCombine : String;
	/**
		The **`text-decoration-color`** CSS property sets the color of decorations added to text by `text-decoration-line`.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
	**/
	@:optional
	var WebkitTextDecorationColor : String;
	/**
		The **`text-decoration-line`** CSS property sets the kind of decoration that is used on text in an element, such as an underline or overline.
		
		**Syntax**: `none | [ underline || overline || line-through || blink ] | spelling-error | grammar-error`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitTextDecorationLine : String;
	/**
		The **`text-decoration-skip`** CSS property sets what parts of an element’s content any text decoration affecting the element must skip over. It controls all text decoration lines drawn by the element and also any text decoration lines drawn by its ancestors.
		
		**Syntax**: `none | [ objects || [ spaces | [ leading-spaces || trailing-spaces ] ] || edges || box-decoration ]`
		
		**Initial value**: `objects`
	**/
	@:optional
	var WebkitTextDecorationSkip : String;
	/**
		The **`text-decoration-style`** CSS property sets the style of the lines specified by `text-decoration-line`. The style applies to all lines that are set with `text-decoration-line`.
		
		**Syntax**: `solid | double | dotted | dashed | wavy`
		
		**Initial value**: `solid`
	**/
	@:optional
	var WebkitTextDecorationStyle : String;
	/**
		The **`text-emphasis-color`** CSS property sets the color of emphasis marks. This value can also be set using the `text-emphasis` shorthand.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
	**/
	@:optional
	var WebkitTextEmphasisColor : String;
	/**
		The **`text-emphasis-position`** CSS property sets where emphasis marks are drawn. Like ruby text, if there isn't enough room for emphasis marks, the line height is increased.
		
		**Syntax**: `[ over | under ] && [ right | left ]`
		
		**Initial value**: `over right`
	**/
	@:optional
	var WebkitTextEmphasisPosition : String;
	/**
		The **`text-emphasis-style`** CSS property sets the appearance of emphasis marks. It can also be set, and reset, using the `text-emphasis` shorthand.
		
		**Syntax**: `none | [ [ filled | open ] || [ dot | circle | double-circle | triangle | sesame ] ] | <string>`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitTextEmphasisStyle : String;
	/**
		The **`-webkit-text-fill-color`** CSS property specifies the fill color of characters of text. If this property is not set, the value of the `color` property is used.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
	**/
	@:optional
	var WebkitTextFillColor : String;
	/**
		The **`text-orientation`** CSS property sets the orientation of the text characters in a line. It only affects text in vertical mode (when `writing-mode` is not `horizontal-tb`). It is useful for controlling the display of languages that use vertical script, and also for making vertical table headers.
		
		**Syntax**: `mixed | upright | sideways`
		
		**Initial value**: `mixed`
	**/
	@:optional
	var WebkitTextOrientation : String;
	/**
		The **`text-size-adjust`** CSS property controls the text inflation algorithm used on some smartphones and tablets. Other browsers will ignore this property.
		
		**Syntax**: `none | auto | <percentage>`
		
		**Initial value**: `auto` for smartphone browsers supporting inflation, `none` in other cases (and then not modifiable).
	**/
	@:optional
	var WebkitTextSizeAdjust : String;
	/**
		The **`-webkit-text-stroke-color`** CSS property specifies the stroke color of characters of text. If this property is not set, the value of the `color` property is used.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
	**/
	@:optional
	var WebkitTextStrokeColor : String;
	/**
		The **`-webkit-text-stroke-width`** CSS property specifies the width of the stroke for text.
		
		**Syntax**: `<length>`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitTextStrokeWidth : ts.AnyOf2<String, Float>;
	/**
		The `-webkit-touch-callout` CSS property controls the display of the default callout shown when you touch and hold a touch target.
		
		**Syntax**: `default | none`
		
		**Initial value**: `default`
	**/
	@:optional
	var WebkitTouchCallout : String;
	/**
		The **`transform`** CSS property lets you rotate, scale, skew, or translate an element. It modifies the coordinate space of the CSS visual formatting model.
		
		**Syntax**: `none | <transform-list>`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitTransform : String;
	/**
		The **`transform-origin`** CSS property sets the origin for an element's transformations.
		
		**Syntax**: `[ <length-percentage> | left | center | right | top | bottom ] | [ [ <length-percentage> | left | center | right ] && [ <length-percentage> | top | center | bottom ] ] <length>?`
		
		**Initial value**: `50% 50% 0`
	**/
	@:optional
	var WebkitTransformOrigin : ts.AnyOf2<String, Float>;
	/**
		The **`transform-style`** CSS property sets whether children of an element are positioned in the 3D space or are flattened in the plane of the element.
		
		**Syntax**: `flat | preserve-3d`
		
		**Initial value**: `flat`
	**/
	@:optional
	var WebkitTransformStyle : String;
	/**
		The **`transition-delay`** CSS property specifies the duration to wait before starting a property's transition effect when its value changes.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var WebkitTransitionDelay : String;
	/**
		The **`transition-duration`** CSS property sets the length of time a transition animation should take to complete. By default, the value is `0s`, meaning that no animation will occur.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var WebkitTransitionDuration : String;
	/**
		The **`transition-property`** CSS property sets the CSS properties to which a transition effect should be applied.
		
		**Syntax**: `none | <single-transition-property>#`
		
		**Initial value**: all
	**/
	@:optional
	var WebkitTransitionProperty : String;
	/**
		The **`transition-timing-function`** CSS property sets how intermediate values are calculated for CSS properties being affected by a transition effect.
		
		**Syntax**: `<timing-function>#`
		
		**Initial value**: `ease`
	**/
	@:optional
	var WebkitTransitionTimingFunction : String;
	/**
		**Syntax**: `read-only | read-write | read-write-plaintext-only`
		
		**Initial value**: `read-only`
	**/
	@:optional
	var WebkitUserModify : String;
	/**
		The `**user-select**` CSS property controls whether the user can select text. This doesn't have any effect on content loaded as chrome, except in textboxes.
		
		**Syntax**: `auto | text | none | contain | all`
		
		**Initial value**: `auto`
	**/
	@:optional
	var WebkitUserSelect : String;
	/**
		The **`writing-mode`** CSS property sets whether lines of text are laid out horizontally or vertically, as well as the direction in which blocks progress.
		
		**Syntax**: `horizontal-tb | vertical-rl | vertical-lr | sideways-rl | sideways-lr`
		
		**Initial value**: `horizontal-tb`
	**/
	@:optional
	var WebkitWritingMode : String;
	/**
		The **`text-underline-position`** CSS property specifies the position of the underline which is set using the `text-decoration` property's `underline` value.
		
		**Syntax**: `auto | from-font | [ under || [ left | right ] ]`
		
		**Initial value**: `auto`
	**/
	@:optional
	var WebkittextUnderlinePosition : String;
	/**
		The **`animation`** shorthand CSS property sets an animated transition between styles. It is a shorthand for `animation-name`, `animation-duration`, `animation-timing-function`, `animation-delay`, `animation-iteration-count`, `animation-direction`, `animation-fill-mode`, and `animation-play-state`.
		
		**Syntax**: `<single-animation>#`
	**/
	@:optional
	var MozAnimation : ts.AnyOf2<String, Float>;
	/**
		The **`border-image`** CSS property draws an image in place of an element's `border-style`.
		
		**Syntax**: `<'border-image-source'> || <'border-image-slice'> [ / <'border-image-width'> | / <'border-image-width'>? / <'border-image-outset'> ]? || <'border-image-repeat'>`
	**/
	@:optional
	var MozBorderImage : ts.AnyOf2<String, Float>;
	/**
		The **`column-rule`** CSS property sets the width, style, and color of the rule (line) drawn between columns in a multi-column layout.
		
		**Syntax**: `<'column-rule-width'> || <'column-rule-style'> || <'column-rule-color'>`
	**/
	@:optional
	var MozColumnRule : ts.AnyOf2<String, Float>;
	/**
		The **`columns`** CSS property sets the column width and column count of an element.
		
		**Syntax**: `<'column-width'> || <'column-count'>`
	**/
	@:optional
	var MozColumns : ts.AnyOf2<String, Float>;
	/**
		The **`transition`** CSS property is a shorthand property for `transition-property`, `transition-duration`, `transition-timing-function`, and `transition-delay`.
		
		**Syntax**: `<single-transition>#`
	**/
	@:optional
	var MozTransition : String;
	/**
		The **`-ms-content-zoom-limit`** CSS shorthand property is a Microsoft extension that specifies values for the `-ms-content-zoom-limit-min` and `-ms-content-zoom-limit-max` properties.
		
		**Syntax**: `<'-ms-content-zoom-limit-min'> <'-ms-content-zoom-limit-max'>`
	**/
	@:optional
	var msContentZoomLimit : String;
	/**
		The **`-ms-content-zoom-snap`** CSS shorthand property is a Microsoft extension that specifies values for the `-ms-content-zoom-snap-type` and `-ms-content-zoom-snap-points` properties.
		
		**Syntax**: `<'-ms-content-zoom-snap-type'> || <'-ms-content-zoom-snap-points'>`
	**/
	@:optional
	var msContentZoomSnap : String;
	/**
		The **`flex`** CSS property sets how a flex item will grow or shrink to fit the space available in its flex container. It is a shorthand for `flex-grow`, `flex-shrink`, and `flex-basis`.
		
		**Syntax**: `none | [ <'flex-grow'> <'flex-shrink'>? || <'flex-basis'> ]`
	**/
	@:optional
	var msFlex : ts.AnyOf2<String, Float>;
	/**
		The **\-ms-scroll-limit** CSS property is a Microsoft extension that specifies values for the `-ms-scroll-limit-x-min`, `-ms-scroll-limit-y-min`, `-ms-scroll-limit-x-max`, and `-ms-scroll-limit-y-max` properties.
		
		**Syntax**: `<'-ms-scroll-limit-x-min'> <'-ms-scroll-limit-y-min'> <'-ms-scroll-limit-x-max'> <'-ms-scroll-limit-y-max'>`
	**/
	@:optional
	var msScrollLimit : String;
	/**
		The **`-ms-scroll-snap-x`** CSS shorthand property is a Microsoft extension that specifies values for the `-ms-scroll-snap-type` and `-ms-scroll-snap-points-x` properties.
		
		**Syntax**: `<'-ms-scroll-snap-type'> <'-ms-scroll-snap-points-x'>`
	**/
	@:optional
	var msScrollSnapX : String;
	/**
		The **`-ms-scroll-snap-x`** CSS shorthand property is a Microsoft extension that specifies values for the `-ms-scroll-snap-type` and `-ms-scroll-snap-points-y` properties.
		
		**Syntax**: `<'-ms-scroll-snap-type'> <'-ms-scroll-snap-points-y'>`
	**/
	@:optional
	var msScrollSnapY : String;
	/**
		The **`transition`** CSS property is a shorthand property for `transition-property`, `transition-duration`, `transition-timing-function`, and `transition-delay`.
		
		**Syntax**: `<single-transition>#`
	**/
	@:optional
	var msTransition : String;
	/**
		The **`animation`** shorthand CSS property sets an animated transition between styles. It is a shorthand for `animation-name`, `animation-duration`, `animation-timing-function`, `animation-delay`, `animation-iteration-count`, `animation-direction`, `animation-fill-mode`, and `animation-play-state`.
		
		**Syntax**: `<single-animation>#`
	**/
	@:optional
	var WebkitAnimation : ts.AnyOf2<String, Float>;
	/**
		The **`-webkit-border-before`** CSS property is a shorthand property for setting the individual logical block start border property values in a single place in the style sheet.
		
		**Syntax**: `<'border-width'> || <'border-style'> || <'color'>`
	**/
	@:optional
	var WebkitBorderBefore : ts.AnyOf2<String, Float>;
	/**
		The **`border-image`** CSS property draws an image in place of an element's `border-style`.
		
		**Syntax**: `<'border-image-source'> || <'border-image-slice'> [ / <'border-image-width'> | / <'border-image-width'>? / <'border-image-outset'> ]? || <'border-image-repeat'>`
	**/
	@:optional
	var WebkitBorderImage : ts.AnyOf2<String, Float>;
	/**
		The **`border-radius`** CSS property rounds the corners of an element's outer border edge. You can set a single radius to make circular corners, or two radii to make elliptical corners.
		
		**Syntax**: `<length-percentage>{1,4} [ / <length-percentage>{1,4} ]?`
	**/
	@:optional
	var WebkitBorderRadius : ts.AnyOf2<String, Float>;
	/**
		The **`column-rule`** CSS property sets the width, style, and color of the rule (line) drawn between columns in a multi-column layout.
		
		**Syntax**: `<'column-rule-width'> || <'column-rule-style'> || <'column-rule-color'>`
	**/
	@:optional
	var WebkitColumnRule : ts.AnyOf2<String, Float>;
	/**
		The **`columns`** CSS property sets the column width and column count of an element.
		
		**Syntax**: `<'column-width'> || <'column-count'>`
	**/
	@:optional
	var WebkitColumns : ts.AnyOf2<String, Float>;
	/**
		The **`flex`** CSS property sets how a flex item will grow or shrink to fit the space available in its flex container. It is a shorthand for `flex-grow`, `flex-shrink`, and `flex-basis`.
		
		**Syntax**: `none | [ <'flex-grow'> <'flex-shrink'>? || <'flex-basis'> ]`
	**/
	@:optional
	var WebkitFlex : ts.AnyOf2<String, Float>;
	/**
		The **`flex-flow`** CSS property is a shorthand property for `flex-direction` and `flex-wrap` properties.
		
		**Syntax**: `<'flex-direction'> || <'flex-wrap'>`
	**/
	@:optional
	var WebkitFlexFlow : String;
	/**
		The **`mask`** CSS property hides an element (partially or fully) by masking or clipping the image at specific points.
		
		**Syntax**: `[ <mask-reference> || <position> [ / <bg-size> ]? || <repeat-style> || [ <box> | border | padding | content | text ] || [ <box> | border | padding | content ] ]#`
	**/
	@:optional
	var WebkitMask : ts.AnyOf2<String, Float>;
	/**
		The **`text-emphasis`** CSS property applies emphasis marks to text (except spaces and control characters). It is a shorthand for `text-emphasis-style` and `text-emphasis-color`.
		
		**Syntax**: `<'text-emphasis-style'> || <'text-emphasis-color'>`
	**/
	@:optional
	var WebkitTextEmphasis : String;
	/**
		The **`-webkit-text-stroke`** CSS property specifies the width and color of strokes for text characters. This is a shorthand property for the longhand properties `-webkit-text-stroke-width` and `-webkit-text-stroke-color`.
		
		**Syntax**: `<length> || <color>`
	**/
	@:optional
	var WebkitTextStroke : ts.AnyOf2<String, Float>;
	/**
		The **`transition`** CSS property is a shorthand property for `transition-property`, `transition-duration`, `transition-timing-function`, and `transition-delay`.
		
		**Syntax**: `<single-transition>#`
	**/
	@:optional
	var WebkitTransition : String;
	/**
		The **`box-align`** CSS property specifies how an element aligns its contents across its layout in a perpendicular direction. The effect of the property is only visible if there is extra space in the box.
		
		**Syntax**: `start | center | end | baseline | stretch`
		
		**Initial value**: `stretch`
	**/
	@:optional
	var boxAlign : String;
	/**
		The **`box-direction`** CSS property specifies whether a box lays out its contents normally (from the top or left edge), or in reverse (from the bottom or right edge).
		
		**Syntax**: `normal | reverse | inherit`
		
		**Initial value**: `normal`
	**/
	@:optional
	var boxDirection : String;
	/**
		The **`-moz-box-flex`** and **`-webkit-box-flex`** CSS properties specify how a `-moz-box` or `-webkit-box` grows to fill the box that contains it, in the direction of the containing box's layout.
		
		**Syntax**: `<number>`
		
		**Initial value**: `0`
	**/
	@:optional
	var boxFlex : ts.AnyOf2<Float, String>;
	/**
		The **`box-flex-group`** CSS property assigns the flexbox's child elements to a flex group.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `1`
	**/
	@:optional
	var boxFlexGroup : ts.AnyOf2<Float, String>;
	/**
		The **`box-lines`** CSS property determines whether the box may have a single or multiple lines (rows for horizontally oriented boxes, columns for vertically oriented boxes).
		
		**Syntax**: `single | multiple`
		
		**Initial value**: `single`
	**/
	@:optional
	var boxLines : String;
	/**
		The **`box-ordinal-group`** CSS property assigns the flexbox's child elements to an ordinal group.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `1`
	**/
	@:optional
	var boxOrdinalGroup : ts.AnyOf2<Float, String>;
	/**
		The **`box-orient`** CSS property specifies whether an element lays out its contents horizontally or vertically.
		
		**Syntax**: `horizontal | vertical | inline-axis | block-axis | inherit`
		
		**Initial value**: `inline-axis` (`horizontal` in XUL)
	**/
	@:optional
	var boxOrient : String;
	/**
		The **`-moz-box-pack`** and **`-webkit-box-pack`** CSS properties specify how a `-moz-box` or `-webkit-box` packs its contents in the direction of its layout. The effect of this is only visible if there is extra space in the box.
		
		**Syntax**: `start | center | end | justify`
		
		**Initial value**: `start`
	**/
	@:optional
	var boxPack : String;
	/**
		The **`clip`** CSS property defines what portion of an element is visible. The `clip` property applies only to absolutely positioned elements, that is elements with `position:absolute` or `position:fixed`.
		
		**Syntax**: `<shape> | auto`
		
		**Initial value**: `auto`
	**/
	@:optional
	var clip : String;
	/**
		The **`font-variant-alternates`** CSS property controls the usage of alternate glyphs. These alternate glyphs may be referenced by alternative names defined in `@font-feature-values`.
		
		**Syntax**: `normal | [ stylistic( <feature-value-name> ) || historical-forms || styleset( <feature-value-name># ) || character-variant( <feature-value-name># ) || swash( <feature-value-name> ) || ornaments( <feature-value-name> ) || annotation( <feature-value-name> ) ]`
		
		**Initial value**: `normal`
	**/
	@:optional
	var fontVariantAlternates : String;
	/**
		The **`column-gap`** CSS property sets the size of the gap (gutter) between an element's columns.
		
		**Syntax**: `<length-percentage>`
		
		**Initial value**: `0`
	**/
	@:optional
	var gridColumnGap : ts.AnyOf2<String, Float>;
	/**
		The **`gap`** CSS property sets the gaps (gutters) between rows and columns. It is a shorthand for `row-gap` and `column-gap`.
		
		**Syntax**: `<'grid-row-gap'> <'grid-column-gap'>?`
	**/
	@:optional
	var gridGap : ts.AnyOf2<String, Float>;
	/**
		The **`row-gap`** CSS property sets the size of the gap (gutter) between an element's grid rows.
		
		**Syntax**: `<length-percentage>`
		
		**Initial value**: `0`
	**/
	@:optional
	var gridRowGap : ts.AnyOf2<String, Float>;
	/**
		The **`ime-mode`** CSS property controls the state of the input method editor (IME) for text fields. This property is obsolete.
		
		**Syntax**: `auto | normal | active | inactive | disabled`
		
		**Initial value**: `auto`
	**/
	@:optional
	var imeMode : String;
	/**
		The **`inset-block`** CSS property defines the logical block start and end offsets of an element, which maps to physical offsets depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top` and `bottom`, or `right` and `left` properties depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>{1,2}`
		
		**Initial value**: `auto`
	**/
	@:optional
	var offsetBlock : ts.AnyOf2<String, Float>;
	/**
		The **`inset-block-end`** CSS property defines the logical block end offset of an element, which maps to a physical inset depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top`, `right`, `bottom`, or `left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>`
		
		**Initial value**: `auto`
	**/
	@:optional
	var offsetBlockEnd : ts.AnyOf2<String, Float>;
	/**
		The **`inset-block-start`** CSS property defines the logical block start offset of an element, which maps to a physical inset depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top`, `right`, `bottom`, or `left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>`
		
		**Initial value**: `auto`
	**/
	@:optional
	var offsetBlockStart : ts.AnyOf2<String, Float>;
	/**
		The **`inset-inline`** CSS property defines the logical block start and end offsets of an element, which maps to physical offsets depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top` and `bottom`, or `right` and `left` properties depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>{1,2}`
		
		**Initial value**: `auto`
	**/
	@:optional
	var offsetInline : ts.AnyOf2<String, Float>;
	/**
		The **`inset-inline-end`** CSS property defines the logical inline end inset of an element, which maps to a physical inset depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top`, `right`, `bottom`, or `left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>`
		
		**Initial value**: `auto`
	**/
	@:optional
	var offsetInlineEnd : ts.AnyOf2<String, Float>;
	/**
		The **`inset-inline-start`** CSS property defines the logical inline start inset of an element, which maps to a physical offset depending on the element's writing mode, directionality, and text orientation. It corresponds to the `top`, `right`, `bottom`, or `left` property depending on the values defined for `writing-mode`, `direction`, and `text-orientation`.
		
		**Syntax**: `<'top'>`
		
		**Initial value**: `auto`
	**/
	@:optional
	var offsetInlineStart : ts.AnyOf2<String, Float>;
	/**
		The **`scroll-snap-coordinate`** CSS property defines the x and y coordinate positions within an element that will align with its nearest ancestor scroll container's `scroll-snap-destination` for each respective axis.
		
		**Syntax**: `none | <position>#`
		
		**Initial value**: `none`
	**/
	@:optional
	var scrollSnapCoordinate : ts.AnyOf2<String, Float>;
	/**
		The **`scroll-snap-destination`** CSS property defines the position in x and y coordinates within the scroll container's visual viewport which element snap points align with.
		
		**Syntax**: `<position>`
		
		**Initial value**: `0px 0px`
	**/
	@:optional
	var scrollSnapDestination : ts.AnyOf2<String, Float>;
	/**
		The **`scroll-snap-points-x`** CSS property defines the horizontal positioning of snap points within the content of the scroll container they are applied to.
		
		**Syntax**: `none | repeat( <length-percentage> )`
		
		**Initial value**: `none`
	**/
	@:optional
	var scrollSnapPointsX : String;
	/**
		The **`scroll-snap-points-y`** CSS property defines the vertical positioning of snap points within the content of the scroll container they are applied to.
		
		**Syntax**: `none | repeat( <length-percentage> )`
		
		**Initial value**: `none`
	**/
	@:optional
	var scrollSnapPointsY : String;
	/**
		The **`scroll-snap-type-x`** CSS property defines how strictly snap points are enforced on the horizontal axis of the scroll container in case there is one.
		
		**Syntax**: `none | mandatory | proximity`
		
		**Initial value**: `none`
	**/
	@:optional
	var scrollSnapTypeX : String;
	/**
		The **`scroll-snap-type-y`** CSS property defines how strictly snap points are enforced on the vertical axis of the scroll container in case there is one.
		
		**Syntax**: `none | mandatory | proximity`
		
		**Initial value**: `none`
	**/
	@:optional
	var scrollSnapTypeY : String;
	/**
		The **`-ms-scrollbar-track-color`** CSS property is a Microsoft extension that specifies the color of the track element of a scrollbar.
		
		**Syntax**: `<color>`
		
		**Initial value**: `Scrollbar`
	**/
	@:optional
	var scrollbarTrackColor : String;
	/**
		The **`text-combine-upright`** CSS property sets the combination of characters into the space of a single character. If the combined text is wider than 1em, the user agent must fit the contents within 1em. The resulting composition is treated as a single upright glyph for layout and decoration. This property only has an effect in vertical writing modes.
		
		**Syntax**: `none | all | [ digits <integer>? ]`
		
		**Initial value**: `none`
	**/
	@:optional
	var textCombineHorizontal : String;
	/**
		The **`box-align`** CSS property specifies how an element aligns its contents across its layout in a perpendicular direction. The effect of the property is only visible if there is extra space in the box.
		
		**Syntax**: `start | center | end | baseline | stretch`
		
		**Initial value**: `stretch`
	**/
	@:optional
	var KhtmlBoxAlign : String;
	/**
		The **`box-direction`** CSS property specifies whether a box lays out its contents normally (from the top or left edge), or in reverse (from the bottom or right edge).
		
		**Syntax**: `normal | reverse | inherit`
		
		**Initial value**: `normal`
	**/
	@:optional
	var KhtmlBoxDirection : String;
	/**
		The **`-moz-box-flex`** and **`-webkit-box-flex`** CSS properties specify how a `-moz-box` or `-webkit-box` grows to fill the box that contains it, in the direction of the containing box's layout.
		
		**Syntax**: `<number>`
		
		**Initial value**: `0`
	**/
	@:optional
	var KhtmlBoxFlex : ts.AnyOf2<Float, String>;
	/**
		The **`box-flex-group`** CSS property assigns the flexbox's child elements to a flex group.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `1`
	**/
	@:optional
	var KhtmlBoxFlexGroup : ts.AnyOf2<Float, String>;
	/**
		The **`box-lines`** CSS property determines whether the box may have a single or multiple lines (rows for horizontally oriented boxes, columns for vertically oriented boxes).
		
		**Syntax**: `single | multiple`
		
		**Initial value**: `single`
	**/
	@:optional
	var KhtmlBoxLines : String;
	/**
		The **`box-ordinal-group`** CSS property assigns the flexbox's child elements to an ordinal group.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `1`
	**/
	@:optional
	var KhtmlBoxOrdinalGroup : ts.AnyOf2<Float, String>;
	/**
		The **`box-orient`** CSS property specifies whether an element lays out its contents horizontally or vertically.
		
		**Syntax**: `horizontal | vertical | inline-axis | block-axis | inherit`
		
		**Initial value**: `inline-axis` (`horizontal` in XUL)
	**/
	@:optional
	var KhtmlBoxOrient : String;
	/**
		The **`-moz-box-pack`** and **`-webkit-box-pack`** CSS properties specify how a `-moz-box` or `-webkit-box` packs its contents in the direction of its layout. The effect of this is only visible if there is extra space in the box.
		
		**Syntax**: `start | center | end | justify`
		
		**Initial value**: `start`
	**/
	@:optional
	var KhtmlBoxPack : String;
	/**
		The **`line-break`** CSS property sets how to break lines of Chinese, Japanese, or Korean (CJK) text when working with punctuation and symbols.
		
		**Syntax**: `auto | loose | normal | strict | anywhere`
		
		**Initial value**: `auto`
	**/
	@:optional
	var KhtmlLineBreak : String;
	/**
		The **`opacity`** CSS property sets the transparency of an element or the degree to which content behind an element is visible.
		
		**Syntax**: `<alpha-value>`
		
		**Initial value**: `1.0`
	**/
	@:optional
	var KhtmlOpacity : ts.AnyOf2<String, Float>;
	/**
		The `**user-select**` CSS property controls whether the user can select text. This doesn't have any effect on content loaded as chrome, except in textboxes.
		
		**Syntax**: `auto | text | none | contain | all`
		
		**Initial value**: `auto`
	**/
	@:optional
	var KhtmlUserSelect : String;
	/**
		The **`background-clip`** CSS property sets whether an element's background `<color>` or `<image>` extends underneath its border.
		
		**Syntax**: `<box>#`
		
		**Initial value**: `border-box`
	**/
	@:optional
	var MozBackgroundClip : String;
	/**
		The **`box-decoration-break`** CSS property specifies how an element's fragments should be rendered when broken across multiple lines, columns, or pages.
		
		**Syntax**: `slice | clone`
		
		**Initial value**: `slice`
	**/
	@:optional
	var MozBackgroundInlinePolicy : String;
	/**
		The **`background-origin`** CSS property sets the _background positioning area_. In other words, it sets the origin position of an image set with the `background-image` property.
		
		**Syntax**: `<box>#`
		
		**Initial value**: `padding-box`
	**/
	@:optional
	var MozBackgroundOrigin : String;
	/**
		The **`background-size`** CSS property sets the size of the element's background image. The image can be left to its natural size, stretched, or constrained to fit the available space.
		
		**Syntax**: `<bg-size>#`
		
		**Initial value**: `auto auto`
	**/
	@:optional
	var MozBackgroundSize : ts.AnyOf2<String, Float>;
	/**
		The **`-moz-binding`** CSS property is used by Mozilla-based applications to attach an XBL binding to a DOM element.
		
		**Syntax**: `<url> | none`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozBinding : String;
	/**
		In Mozilla applications like Firefox, the **`-moz-border-bottom-colors`** CSS property sets a list of colors for the bottom border.
		
		**Syntax**: `<color>+ | none`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozBorderBottomColors : String;
	/**
		In Mozilla applications like Firefox, the **`-moz-border-left-colors`** CSS property sets a list of colors for the left border.
		
		**Syntax**: `<color>+ | none`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozBorderLeftColors : String;
	/**
		The **`border-radius`** CSS property rounds the corners of an element's outer border edge. You can set a single radius to make circular corners, or two radii to make elliptical corners.
		
		**Syntax**: `<length-percentage>{1,4} [ / <length-percentage>{1,4} ]?`
	**/
	@:optional
	var MozBorderRadius : ts.AnyOf2<String, Float>;
	/**
		The **`border-bottom-left-radius`** CSS property rounds the bottom-left corner of an element.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozBorderRadiusBottomleft : ts.AnyOf2<String, Float>;
	/**
		The **`border-bottom-right-radius`** CSS property rounds the bottom-right corner of an element.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozBorderRadiusBottomright : ts.AnyOf2<String, Float>;
	/**
		The **`border-top-left-radius`** CSS property rounds the top-left corner of an element.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozBorderRadiusTopleft : ts.AnyOf2<String, Float>;
	/**
		The **`border-top-right-radius`** CSS property rounds the top-right corner of an element.
		
		**Syntax**: `<length-percentage>{1,2}`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozBorderRadiusTopright : ts.AnyOf2<String, Float>;
	/**
		In Mozilla applications like Firefox, the **`-moz-border-right-colors`** CSS property sets a list of colors for the right border.
		
		**Syntax**: `<color>+ | none`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozBorderRightColors : String;
	/**
		In Mozilla applications like Firefox, the **`-moz-border-top-colors`** CSS property sets a list of colors for the top border.
		
		**Syntax**: `<color>+ | none`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozBorderTopColors : String;
	/**
		The **`box-align`** CSS property specifies how an element aligns its contents across its layout in a perpendicular direction. The effect of the property is only visible if there is extra space in the box.
		
		**Syntax**: `start | center | end | baseline | stretch`
		
		**Initial value**: `stretch`
	**/
	@:optional
	var MozBoxAlign : String;
	/**
		The **`box-direction`** CSS property specifies whether a box lays out its contents normally (from the top or left edge), or in reverse (from the bottom or right edge).
		
		**Syntax**: `normal | reverse | inherit`
		
		**Initial value**: `normal`
	**/
	@:optional
	var MozBoxDirection : String;
	/**
		The **`-moz-box-flex`** and **`-webkit-box-flex`** CSS properties specify how a `-moz-box` or `-webkit-box` grows to fill the box that contains it, in the direction of the containing box's layout.
		
		**Syntax**: `<number>`
		
		**Initial value**: `0`
	**/
	@:optional
	var MozBoxFlex : ts.AnyOf2<Float, String>;
	/**
		The **`box-ordinal-group`** CSS property assigns the flexbox's child elements to an ordinal group.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `1`
	**/
	@:optional
	var MozBoxOrdinalGroup : ts.AnyOf2<Float, String>;
	/**
		The **`box-orient`** CSS property specifies whether an element lays out its contents horizontally or vertically.
		
		**Syntax**: `horizontal | vertical | inline-axis | block-axis | inherit`
		
		**Initial value**: `inline-axis` (`horizontal` in XUL)
	**/
	@:optional
	var MozBoxOrient : String;
	/**
		The **`-moz-box-pack`** and **`-webkit-box-pack`** CSS properties specify how a `-moz-box` or `-webkit-box` packs its contents in the direction of its layout. The effect of this is only visible if there is extra space in the box.
		
		**Syntax**: `start | center | end | justify`
		
		**Initial value**: `start`
	**/
	@:optional
	var MozBoxPack : String;
	/**
		The **`box-shadow`** CSS property adds shadow effects around an element's frame. You can set multiple effects separated by commas. A box shadow is described by X and Y offsets relative to the element, blur and spread radii, and color.
		
		**Syntax**: `none | <shadow>#`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozBoxShadow : String;
	/**
		The **`opacity`** CSS property sets the transparency of an element or the degree to which content behind an element is visible.
		
		**Syntax**: `<alpha-value>`
		
		**Initial value**: `1.0`
	**/
	@:optional
	var MozOpacity : ts.AnyOf2<String, Float>;
	/**
		The **`outline`** CSS property is a shorthand to set various outline properties in a single declaration: `outline-style`, `outline-width`, and `outline-color`.
		
		**Syntax**: `[ <'outline-color'> || <'outline-style'> || <'outline-width'> ]`
	**/
	@:optional
	var MozOutline : ts.AnyOf2<String, Float>;
	/**
		The **`outline-color`** CSS property sets the color of an element's outline.
		
		**Syntax**: `<color> | invert`
		
		**Initial value**: `invert`, for browsers supporting it, `currentColor` for the other
	**/
	@:optional
	var MozOutlineColor : String;
	/**
		In Mozilla applications like Firefox, the **`-moz-outline-radius`** CSS property can be used to give an element's `outline` rounded corners.
		
		**Syntax**: `<outline-radius>{1,4} [ / <outline-radius>{1,4} ]?`
	**/
	@:optional
	var MozOutlineRadius : ts.AnyOf2<String, Float>;
	/**
		The **`outline-style`** CSS property sets the style of an element's outline. An outline is a line that is drawn around an element, outside the `border`.
		
		**Syntax**: `auto | <'border-style'>`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozOutlineStyle : String;
	/**
		The **`outline-width`** CSS property sets the thickness of an element's outline. An outline is a line that is drawn around an element, outside the `border`.
		
		**Syntax**: `<line-width>`
		
		**Initial value**: `medium`
	**/
	@:optional
	var MozOutlineWidth : ts.AnyOf2<String, Float>;
	/**
		The **`text-align-last`** CSS property sets how the last line of a block or a line, right before a forced line break, is aligned.
		
		**Syntax**: `auto | start | end | left | right | center | justify`
		
		**Initial value**: `auto`
	**/
	@:optional
	var MozTextAlignLast : String;
	/**
		The **`-moz-text-blink`** non-standard Mozilla CSS extension specifies the blink mode.
		
		**Syntax**: `none | blink`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozTextBlink : String;
	/**
		The **`text-decoration-color`** CSS property sets the color of decorations added to text by `text-decoration-line`.
		
		**Syntax**: `<color>`
		
		**Initial value**: `currentcolor`
	**/
	@:optional
	var MozTextDecorationColor : String;
	/**
		The **`text-decoration-line`** CSS property sets the kind of decoration that is used on text in an element, such as an underline or overline.
		
		**Syntax**: `none | [ underline || overline || line-through || blink ] | spelling-error | grammar-error`
		
		**Initial value**: `none`
	**/
	@:optional
	var MozTextDecorationLine : String;
	/**
		The **`text-decoration-style`** CSS property sets the style of the lines specified by `text-decoration-line`. The style applies to all lines that are set with `text-decoration-line`.
		
		**Syntax**: `solid | double | dotted | dashed | wavy`
		
		**Initial value**: `solid`
	**/
	@:optional
	var MozTextDecorationStyle : String;
	/**
		In Mozilla applications, **`-moz-user-input`** determines if an element will accept user input.
		
		**Syntax**: `auto | none | enabled | disabled`
		
		**Initial value**: `auto`
	**/
	@:optional
	var MozUserInput : String;
	/**
		The **`-moz-window-shadow`** CSS property specifies whether a window will have a shadow. It only works on Mac OS X.
		
		**Syntax**: `default | menu | tooltip | sheet | none`
		
		**Initial value**: `default`
	**/
	@:optional
	var MozWindowShadow : String;
	/**
		The **`ime-mode`** CSS property controls the state of the input method editor (IME) for text fields. This property is obsolete.
		
		**Syntax**: `auto | normal | active | inactive | disabled`
		
		**Initial value**: `auto`
	**/
	@:optional
	var msImeMode : String;
	/**
		The **`-ms-scrollbar-track-color`** CSS property is a Microsoft extension that specifies the color of the track element of a scrollbar.
		
		**Syntax**: `<color>`
		
		**Initial value**: `Scrollbar`
	**/
	@:optional
	var msScrollbarTrackColor : String;
	/**
		The **`animation`** shorthand CSS property sets an animated transition between styles. It is a shorthand for `animation-name`, `animation-duration`, `animation-timing-function`, `animation-delay`, `animation-iteration-count`, `animation-direction`, `animation-fill-mode`, and `animation-play-state`.
		
		**Syntax**: `<single-animation>#`
	**/
	@:optional
	var OAnimation : ts.AnyOf2<String, Float>;
	/**
		The **`animation-delay`** CSS property sets when an animation starts. The animation can start later, immediately from its beginning, or immediately and partway through the animation.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var OAnimationDelay : String;
	/**
		The **`animation-direction`** CSS property sets whether an animation should play forwards, backwards, or alternating back and forth.
		
		**Syntax**: `<single-animation-direction>#`
		
		**Initial value**: `normal`
	**/
	@:optional
	var OAnimationDirection : String;
	/**
		The **`animation-duration`** CSS property sets the length of time that an animation takes to complete one cycle.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var OAnimationDuration : String;
	/**
		The **`animation-fill-mode`** CSS property sets how a CSS animation applies styles to its target before and after its execution.
		
		**Syntax**: `<single-animation-fill-mode>#`
		
		**Initial value**: `none`
	**/
	@:optional
	var OAnimationFillMode : String;
	/**
		The **`animation-iteration-count`** CSS property sets the number of times an animation cycle should be played before stopping.
		
		**Syntax**: `<single-animation-iteration-count>#`
		
		**Initial value**: `1`
	**/
	@:optional
	var OAnimationIterationCount : ts.AnyOf2<String, Float>;
	/**
		The **`animation-name`** CSS property sets one or more animations to apply to an element. Each name is an `@keyframes` at-rule that sets the property values for the animation sequence.
		
		**Syntax**: `[ none | <keyframes-name> ]#`
		
		**Initial value**: `none`
	**/
	@:optional
	var OAnimationName : String;
	/**
		The **`animation-play-state`** CSS property sets whether an animation is running or paused.
		
		**Syntax**: `<single-animation-play-state>#`
		
		**Initial value**: `running`
	**/
	@:optional
	var OAnimationPlayState : String;
	/**
		The `**animation-timing-function**` CSS property sets how an animation progresses through the duration of each cycle.
		
		**Syntax**: `<timing-function>#`
		
		**Initial value**: `ease`
	**/
	@:optional
	var OAnimationTimingFunction : String;
	/**
		The **`background-size`** CSS property sets the size of the element's background image. The image can be left to its natural size, stretched, or constrained to fit the available space.
		
		**Syntax**: `<bg-size>#`
		
		**Initial value**: `auto auto`
	**/
	@:optional
	var OBackgroundSize : ts.AnyOf2<String, Float>;
	/**
		The **`border-image`** CSS property draws an image in place of an element's `border-style`.
		
		**Syntax**: `<'border-image-source'> || <'border-image-slice'> [ / <'border-image-width'> | / <'border-image-width'>? / <'border-image-outset'> ]? || <'border-image-repeat'>`
	**/
	@:optional
	var OBorderImage : ts.AnyOf2<String, Float>;
	/**
		The **`transform`** CSS property lets you rotate, scale, skew, or translate an element. It modifies the coordinate space of the CSS visual formatting model.
		
		**Syntax**: `none | <transform-list>`
		
		**Initial value**: `none`
	**/
	@:optional
	var OTransform : String;
	/**
		The **`transition`** CSS property is a shorthand property for `transition-property`, `transition-duration`, `transition-timing-function`, and `transition-delay`.
		
		**Syntax**: `<single-transition>#`
	**/
	@:optional
	var OTransition : String;
	/**
		The **`transition-delay`** CSS property specifies the duration to wait before starting a property's transition effect when its value changes.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var OTransitionDelay : String;
	/**
		The **`transition-duration`** CSS property sets the length of time a transition animation should take to complete. By default, the value is `0s`, meaning that no animation will occur.
		
		**Syntax**: `<time>#`
		
		**Initial value**: `0s`
	**/
	@:optional
	var OTransitionDuration : String;
	/**
		The **`transition-property`** CSS property sets the CSS properties to which a transition effect should be applied.
		
		**Syntax**: `none | <single-transition-property>#`
		
		**Initial value**: all
	**/
	@:optional
	var OTransitionProperty : String;
	/**
		The **`transition-timing-function`** CSS property sets how intermediate values are calculated for CSS properties being affected by a transition effect.
		
		**Syntax**: `<timing-function>#`
		
		**Initial value**: `ease`
	**/
	@:optional
	var OTransitionTimingFunction : String;
	/**
		The **`box-align`** CSS property specifies how an element aligns its contents across its layout in a perpendicular direction. The effect of the property is only visible if there is extra space in the box.
		
		**Syntax**: `start | center | end | baseline | stretch`
		
		**Initial value**: `stretch`
	**/
	@:optional
	var WebkitBoxAlign : String;
	/**
		The **`box-direction`** CSS property specifies whether a box lays out its contents normally (from the top or left edge), or in reverse (from the bottom or right edge).
		
		**Syntax**: `normal | reverse | inherit`
		
		**Initial value**: `normal`
	**/
	@:optional
	var WebkitBoxDirection : String;
	/**
		The **`-moz-box-flex`** and **`-webkit-box-flex`** CSS properties specify how a `-moz-box` or `-webkit-box` grows to fill the box that contains it, in the direction of the containing box's layout.
		
		**Syntax**: `<number>`
		
		**Initial value**: `0`
	**/
	@:optional
	var WebkitBoxFlex : ts.AnyOf2<Float, String>;
	/**
		The **`box-flex-group`** CSS property assigns the flexbox's child elements to a flex group.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `1`
	**/
	@:optional
	var WebkitBoxFlexGroup : ts.AnyOf2<Float, String>;
	/**
		The **`box-lines`** CSS property determines whether the box may have a single or multiple lines (rows for horizontally oriented boxes, columns for vertically oriented boxes).
		
		**Syntax**: `single | multiple`
		
		**Initial value**: `single`
	**/
	@:optional
	var WebkitBoxLines : String;
	/**
		The **`box-ordinal-group`** CSS property assigns the flexbox's child elements to an ordinal group.
		
		**Syntax**: `<integer>`
		
		**Initial value**: `1`
	**/
	@:optional
	var WebkitBoxOrdinalGroup : ts.AnyOf2<Float, String>;
	/**
		The **`box-orient`** CSS property specifies whether an element lays out its contents horizontally or vertically.
		
		**Syntax**: `horizontal | vertical | inline-axis | block-axis | inherit`
		
		**Initial value**: `inline-axis` (`horizontal` in XUL)
	**/
	@:optional
	var WebkitBoxOrient : String;
	/**
		The **`-moz-box-pack`** and **`-webkit-box-pack`** CSS properties specify how a `-moz-box` or `-webkit-box` packs its contents in the direction of its layout. The effect of this is only visible if there is extra space in the box.
		
		**Syntax**: `start | center | end | justify`
		
		**Initial value**: `start`
	**/
	@:optional
	var WebkitBoxPack : String;
	/**
		The **`scroll-snap-points-x`** CSS property defines the horizontal positioning of snap points within the content of the scroll container they are applied to.
		
		**Syntax**: `none | repeat( <length-percentage> )`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitScrollSnapPointsX : String;
	/**
		The **`scroll-snap-points-y`** CSS property defines the vertical positioning of snap points within the content of the scroll container they are applied to.
		
		**Syntax**: `none | repeat( <length-percentage> )`
		
		**Initial value**: `none`
	**/
	@:optional
	var WebkitScrollSnapPointsY : String;
	@:optional
	var alignmentBaseline : String;
	@:optional
	var baselineShift : ts.AnyOf2<String, Float>;
	@:optional
	var clipRule : String;
	@:optional
	var colorInterpolation : String;
	@:optional
	var colorRendering : String;
	@:optional
	var dominantBaseline : String;
	@:optional
	var fill : String;
	@:optional
	var fillOpacity : ts.AnyOf2<Float, String>;
	@:optional
	var fillRule : String;
	@:optional
	var floodColor : String;
	@:optional
	var floodOpacity : ts.AnyOf2<Float, String>;
	@:optional
	var glyphOrientationVertical : ts.AnyOf2<String, Float>;
	@:optional
	var lightingColor : String;
	@:optional
	var marker : String;
	@:optional
	var markerEnd : String;
	@:optional
	var markerMid : String;
	@:optional
	var markerStart : String;
	@:optional
	var shapeRendering : String;
	@:optional
	var stopColor : String;
	@:optional
	var stopOpacity : ts.AnyOf2<Float, String>;
	@:optional
	var stroke : String;
	@:optional
	var strokeDasharray : ts.AnyOf2<String, Float>;
	@:optional
	var strokeDashoffset : ts.AnyOf2<String, Float>;
	@:optional
	var strokeLinecap : String;
	@:optional
	var strokeLinejoin : String;
	@:optional
	var strokeMiterlimit : ts.AnyOf2<Float, String>;
	@:optional
	var strokeOpacity : ts.AnyOf2<Float, String>;
	@:optional
	var strokeWidth : ts.AnyOf2<String, Float>;
	@:optional
	var textAnchor : String;
	@:optional
	var vectorEffect : String;
};