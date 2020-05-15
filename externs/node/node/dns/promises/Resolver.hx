package node.dns.promises;
@:jsRequire("dns", "promises.Resolver") extern class Resolver {
	var getServers : () -> Array<String>;
	var resolve : {
		@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<String>> { })
		@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<String>> { })
		@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<node.dns.AnyRecord>> { })
		@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<String>> { })
		@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<node.dns.MxRecord>> { })
		@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<node.dns.NaptrRecord>> { })
		@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<String>> { })
		@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<String>> { })
		@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<node.dns.SoaRecord> { })
		@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<node.dns.SrvRecord>> { })
		@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<Array<String>>> { })
		@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<ts.AnyOf7<Array<String>, node.dns.SoaRecord, Array<node.dns.AnyRecord>, Array<node.dns.MxRecord>, Array<node.dns.NaptrRecord>, Array<node.dns.SrvRecord>, Array<Array<String>>>> { })
		@:selfCall
		function call(hostname:String):ts.lib.Promise<Array<String>>;
	};
	var resolve4 : {
		@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions):ts.lib.Promise<Array<node.dns.RecordWithTtl>> { })
		@:overload(function(hostname:String, options:node.dns.ResolveOptions):ts.lib.Promise<ts.AnyOf2<Array<String>, Array<node.dns.RecordWithTtl>>> { })
		@:selfCall
		function call(hostname:String):ts.lib.Promise<Array<String>>;
	};
	var resolve6 : {
		@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions):ts.lib.Promise<Array<node.dns.RecordWithTtl>> { })
		@:overload(function(hostname:String, options:node.dns.ResolveOptions):ts.lib.Promise<ts.AnyOf2<Array<String>, Array<node.dns.RecordWithTtl>>> { })
		@:selfCall
		function call(hostname:String):ts.lib.Promise<Array<String>>;
	};
	var resolveAny : (hostname:String) -> ts.lib.Promise<Array<node.dns.AnyRecord>>;
	var resolveCname : (hostname:String) -> ts.lib.Promise<Array<String>>;
	var resolveMx : (hostname:String) -> ts.lib.Promise<Array<node.dns.MxRecord>>;
	var resolveNaptr : (hostname:String) -> ts.lib.Promise<Array<node.dns.NaptrRecord>>;
	var resolveNs : (hostname:String) -> ts.lib.Promise<Array<String>>;
	var resolvePtr : (hostname:String) -> ts.lib.Promise<Array<String>>;
	var resolveSoa : (hostname:String) -> ts.lib.Promise<node.dns.SoaRecord>;
	var resolveSrv : (hostname:String) -> ts.lib.Promise<Array<node.dns.SrvRecord>>;
	var resolveTxt : (hostname:String) -> ts.lib.Promise<Array<Array<String>>>;
	var reverse : (ip:String) -> ts.lib.Promise<Array<String>>;
	var setServers : (servers:ts.lib.ReadonlyArray<String>) -> Void;
}