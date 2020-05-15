package node.http2;
@:jsRequire("http2", "constants") @valueModuleOnly extern class Constants {
	static var NGHTTP2_SESSION_SERVER : Float;
	static var NGHTTP2_SESSION_CLIENT : Float;
	static var NGHTTP2_STREAM_STATE_IDLE : Float;
	static var NGHTTP2_STREAM_STATE_OPEN : Float;
	static var NGHTTP2_STREAM_STATE_RESERVED_LOCAL : Float;
	static var NGHTTP2_STREAM_STATE_RESERVED_REMOTE : Float;
	static var NGHTTP2_STREAM_STATE_HALF_CLOSED_LOCAL : Float;
	static var NGHTTP2_STREAM_STATE_HALF_CLOSED_REMOTE : Float;
	static var NGHTTP2_STREAM_STATE_CLOSED : Float;
	static var NGHTTP2_NO_ERROR : Float;
	static var NGHTTP2_PROTOCOL_ERROR : Float;
	static var NGHTTP2_INTERNAL_ERROR : Float;
	static var NGHTTP2_FLOW_CONTROL_ERROR : Float;
	static var NGHTTP2_SETTINGS_TIMEOUT : Float;
	static var NGHTTP2_STREAM_CLOSED : Float;
	static var NGHTTP2_FRAME_SIZE_ERROR : Float;
	static var NGHTTP2_REFUSED_STREAM : Float;
	static var NGHTTP2_CANCEL : Float;
	static var NGHTTP2_COMPRESSION_ERROR : Float;
	static var NGHTTP2_CONNECT_ERROR : Float;
	static var NGHTTP2_ENHANCE_YOUR_CALM : Float;
	static var NGHTTP2_INADEQUATE_SECURITY : Float;
	static var NGHTTP2_HTTP_1_1_REQUIRED : Float;
	static var NGHTTP2_ERR_FRAME_SIZE_ERROR : Float;
	static var NGHTTP2_FLAG_NONE : Float;
	static var NGHTTP2_FLAG_END_STREAM : Float;
	static var NGHTTP2_FLAG_END_HEADERS : Float;
	static var NGHTTP2_FLAG_ACK : Float;
	static var NGHTTP2_FLAG_PADDED : Float;
	static var NGHTTP2_FLAG_PRIORITY : Float;
	static var DEFAULT_SETTINGS_HEADER_TABLE_SIZE : Float;
	static var DEFAULT_SETTINGS_ENABLE_PUSH : Float;
	static var DEFAULT_SETTINGS_INITIAL_WINDOW_SIZE : Float;
	static var DEFAULT_SETTINGS_MAX_FRAME_SIZE : Float;
	static var MAX_MAX_FRAME_SIZE : Float;
	static var MIN_MAX_FRAME_SIZE : Float;
	static var MAX_INITIAL_WINDOW_SIZE : Float;
	static var NGHTTP2_DEFAULT_WEIGHT : Float;
	static var NGHTTP2_SETTINGS_HEADER_TABLE_SIZE : Float;
	static var NGHTTP2_SETTINGS_ENABLE_PUSH : Float;
	static var NGHTTP2_SETTINGS_MAX_CONCURRENT_STREAMS : Float;
	static var NGHTTP2_SETTINGS_INITIAL_WINDOW_SIZE : Float;
	static var NGHTTP2_SETTINGS_MAX_FRAME_SIZE : Float;
	static var NGHTTP2_SETTINGS_MAX_HEADER_LIST_SIZE : Float;
	static var PADDING_STRATEGY_NONE : Float;
	static var PADDING_STRATEGY_MAX : Float;
	static var PADDING_STRATEGY_CALLBACK : Float;
	static var HTTP2_HEADER_STATUS : String;
	static var HTTP2_HEADER_METHOD : String;
	static var HTTP2_HEADER_AUTHORITY : String;
	static var HTTP2_HEADER_SCHEME : String;
	static var HTTP2_HEADER_PATH : String;
	static var HTTP2_HEADER_ACCEPT_CHARSET : String;
	static var HTTP2_HEADER_ACCEPT_ENCODING : String;
	static var HTTP2_HEADER_ACCEPT_LANGUAGE : String;
	static var HTTP2_HEADER_ACCEPT_RANGES : String;
	static var HTTP2_HEADER_ACCEPT : String;
	static var HTTP2_HEADER_ACCESS_CONTROL_ALLOW_ORIGIN : String;
	static var HTTP2_HEADER_AGE : String;
	static var HTTP2_HEADER_ALLOW : String;
	static var HTTP2_HEADER_AUTHORIZATION : String;
	static var HTTP2_HEADER_CACHE_CONTROL : String;
	static var HTTP2_HEADER_CONNECTION : String;
	static var HTTP2_HEADER_CONTENT_DISPOSITION : String;
	static var HTTP2_HEADER_CONTENT_ENCODING : String;
	static var HTTP2_HEADER_CONTENT_LANGUAGE : String;
	static var HTTP2_HEADER_CONTENT_LENGTH : String;
	static var HTTP2_HEADER_CONTENT_LOCATION : String;
	static var HTTP2_HEADER_CONTENT_MD5 : String;
	static var HTTP2_HEADER_CONTENT_RANGE : String;
	static var HTTP2_HEADER_CONTENT_TYPE : String;
	static var HTTP2_HEADER_COOKIE : String;
	static var HTTP2_HEADER_DATE : String;
	static var HTTP2_HEADER_ETAG : String;
	static var HTTP2_HEADER_EXPECT : String;
	static var HTTP2_HEADER_EXPIRES : String;
	static var HTTP2_HEADER_FROM : String;
	static var HTTP2_HEADER_HOST : String;
	static var HTTP2_HEADER_IF_MATCH : String;
	static var HTTP2_HEADER_IF_MODIFIED_SINCE : String;
	static var HTTP2_HEADER_IF_NONE_MATCH : String;
	static var HTTP2_HEADER_IF_RANGE : String;
	static var HTTP2_HEADER_IF_UNMODIFIED_SINCE : String;
	static var HTTP2_HEADER_LAST_MODIFIED : String;
	static var HTTP2_HEADER_LINK : String;
	static var HTTP2_HEADER_LOCATION : String;
	static var HTTP2_HEADER_MAX_FORWARDS : String;
	static var HTTP2_HEADER_PREFER : String;
	static var HTTP2_HEADER_PROXY_AUTHENTICATE : String;
	static var HTTP2_HEADER_PROXY_AUTHORIZATION : String;
	static var HTTP2_HEADER_RANGE : String;
	static var HTTP2_HEADER_REFERER : String;
	static var HTTP2_HEADER_REFRESH : String;
	static var HTTP2_HEADER_RETRY_AFTER : String;
	static var HTTP2_HEADER_SERVER : String;
	static var HTTP2_HEADER_SET_COOKIE : String;
	static var HTTP2_HEADER_STRICT_TRANSPORT_SECURITY : String;
	static var HTTP2_HEADER_TRANSFER_ENCODING : String;
	static var HTTP2_HEADER_TE : String;
	static var HTTP2_HEADER_UPGRADE : String;
	static var HTTP2_HEADER_USER_AGENT : String;
	static var HTTP2_HEADER_VARY : String;
	static var HTTP2_HEADER_VIA : String;
	static var HTTP2_HEADER_WWW_AUTHENTICATE : String;
	static var HTTP2_HEADER_HTTP2_SETTINGS : String;
	static var HTTP2_HEADER_KEEP_ALIVE : String;
	static var HTTP2_HEADER_PROXY_CONNECTION : String;
	static var HTTP2_METHOD_ACL : String;
	static var HTTP2_METHOD_BASELINE_CONTROL : String;
	static var HTTP2_METHOD_BIND : String;
	static var HTTP2_METHOD_CHECKIN : String;
	static var HTTP2_METHOD_CHECKOUT : String;
	static var HTTP2_METHOD_CONNECT : String;
	static var HTTP2_METHOD_COPY : String;
	static var HTTP2_METHOD_DELETE : String;
	static var HTTP2_METHOD_GET : String;
	static var HTTP2_METHOD_HEAD : String;
	static var HTTP2_METHOD_LABEL : String;
	static var HTTP2_METHOD_LINK : String;
	static var HTTP2_METHOD_LOCK : String;
	static var HTTP2_METHOD_MERGE : String;
	static var HTTP2_METHOD_MKACTIVITY : String;
	static var HTTP2_METHOD_MKCALENDAR : String;
	static var HTTP2_METHOD_MKCOL : String;
	static var HTTP2_METHOD_MKREDIRECTREF : String;
	static var HTTP2_METHOD_MKWORKSPACE : String;
	static var HTTP2_METHOD_MOVE : String;
	static var HTTP2_METHOD_OPTIONS : String;
	static var HTTP2_METHOD_ORDERPATCH : String;
	static var HTTP2_METHOD_PATCH : String;
	static var HTTP2_METHOD_POST : String;
	static var HTTP2_METHOD_PRI : String;
	static var HTTP2_METHOD_PROPFIND : String;
	static var HTTP2_METHOD_PROPPATCH : String;
	static var HTTP2_METHOD_PUT : String;
	static var HTTP2_METHOD_REBIND : String;
	static var HTTP2_METHOD_REPORT : String;
	static var HTTP2_METHOD_SEARCH : String;
	static var HTTP2_METHOD_TRACE : String;
	static var HTTP2_METHOD_UNBIND : String;
	static var HTTP2_METHOD_UNCHECKOUT : String;
	static var HTTP2_METHOD_UNLINK : String;
	static var HTTP2_METHOD_UNLOCK : String;
	static var HTTP2_METHOD_UPDATE : String;
	static var HTTP2_METHOD_UPDATEREDIRECTREF : String;
	static var HTTP2_METHOD_VERSION_CONTROL : String;
	static var HTTP_STATUS_CONTINUE : Float;
	static var HTTP_STATUS_SWITCHING_PROTOCOLS : Float;
	static var HTTP_STATUS_PROCESSING : Float;
	static var HTTP_STATUS_OK : Float;
	static var HTTP_STATUS_CREATED : Float;
	static var HTTP_STATUS_ACCEPTED : Float;
	static var HTTP_STATUS_NON_AUTHORITATIVE_INFORMATION : Float;
	static var HTTP_STATUS_NO_CONTENT : Float;
	static var HTTP_STATUS_RESET_CONTENT : Float;
	static var HTTP_STATUS_PARTIAL_CONTENT : Float;
	static var HTTP_STATUS_MULTI_STATUS : Float;
	static var HTTP_STATUS_ALREADY_REPORTED : Float;
	static var HTTP_STATUS_IM_USED : Float;
	static var HTTP_STATUS_MULTIPLE_CHOICES : Float;
	static var HTTP_STATUS_MOVED_PERMANENTLY : Float;
	static var HTTP_STATUS_FOUND : Float;
	static var HTTP_STATUS_SEE_OTHER : Float;
	static var HTTP_STATUS_NOT_MODIFIED : Float;
	static var HTTP_STATUS_USE_PROXY : Float;
	static var HTTP_STATUS_TEMPORARY_REDIRECT : Float;
	static var HTTP_STATUS_PERMANENT_REDIRECT : Float;
	static var HTTP_STATUS_BAD_REQUEST : Float;
	static var HTTP_STATUS_UNAUTHORIZED : Float;
	static var HTTP_STATUS_PAYMENT_REQUIRED : Float;
	static var HTTP_STATUS_FORBIDDEN : Float;
	static var HTTP_STATUS_NOT_FOUND : Float;
	static var HTTP_STATUS_METHOD_NOT_ALLOWED : Float;
	static var HTTP_STATUS_NOT_ACCEPTABLE : Float;
	static var HTTP_STATUS_PROXY_AUTHENTICATION_REQUIRED : Float;
	static var HTTP_STATUS_REQUEST_TIMEOUT : Float;
	static var HTTP_STATUS_CONFLICT : Float;
	static var HTTP_STATUS_GONE : Float;
	static var HTTP_STATUS_LENGTH_REQUIRED : Float;
	static var HTTP_STATUS_PRECONDITION_FAILED : Float;
	static var HTTP_STATUS_PAYLOAD_TOO_LARGE : Float;
	static var HTTP_STATUS_URI_TOO_LONG : Float;
	static var HTTP_STATUS_UNSUPPORTED_MEDIA_TYPE : Float;
	static var HTTP_STATUS_RANGE_NOT_SATISFIABLE : Float;
	static var HTTP_STATUS_EXPECTATION_FAILED : Float;
	static var HTTP_STATUS_TEAPOT : Float;
	static var HTTP_STATUS_MISDIRECTED_REQUEST : Float;
	static var HTTP_STATUS_UNPROCESSABLE_ENTITY : Float;
	static var HTTP_STATUS_LOCKED : Float;
	static var HTTP_STATUS_FAILED_DEPENDENCY : Float;
	static var HTTP_STATUS_UNORDERED_COLLECTION : Float;
	static var HTTP_STATUS_UPGRADE_REQUIRED : Float;
	static var HTTP_STATUS_PRECONDITION_REQUIRED : Float;
	static var HTTP_STATUS_TOO_MANY_REQUESTS : Float;
	static var HTTP_STATUS_REQUEST_HEADER_FIELDS_TOO_LARGE : Float;
	static var HTTP_STATUS_UNAVAILABLE_FOR_LEGAL_REASONS : Float;
	static var HTTP_STATUS_INTERNAL_SERVER_ERROR : Float;
	static var HTTP_STATUS_NOT_IMPLEMENTED : Float;
	static var HTTP_STATUS_BAD_GATEWAY : Float;
	static var HTTP_STATUS_SERVICE_UNAVAILABLE : Float;
	static var HTTP_STATUS_GATEWAY_TIMEOUT : Float;
	static var HTTP_STATUS_HTTP_VERSION_NOT_SUPPORTED : Float;
	static var HTTP_STATUS_VARIANT_ALSO_NEGOTIATES : Float;
	static var HTTP_STATUS_INSUFFICIENT_STORAGE : Float;
	static var HTTP_STATUS_LOOP_DETECTED : Float;
	static var HTTP_STATUS_BANDWIDTH_LIMIT_EXCEEDED : Float;
	static var HTTP_STATUS_NOT_EXTENDED : Float;
	static var HTTP_STATUS_NETWORK_AUTHENTICATION_REQUIRED : Float;
}