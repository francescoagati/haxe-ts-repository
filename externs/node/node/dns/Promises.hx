package node.dns;
@:jsRequire("dns", "promises") @valueModuleOnly extern class Promises {
	static function getServers():Array<String>;
	@:overload(function(hostname:String, options:LookupOneOptions):ts.lib.Promise<LookupAddress> { })
	@:overload(function(hostname:String, options:LookupAllOptions):ts.lib.Promise<Array<LookupAddress>> { })
	@:overload(function(hostname:String, options:LookupOptions):ts.lib.Promise<ts.AnyOf2<LookupAddress, Array<LookupAddress>>> { })
	@:overload(function(hostname:String):ts.lib.Promise<LookupAddress> { })
	static function lookup(hostname:String, family:Float):ts.lib.Promise<LookupAddress>;
	static function lookupService(address:String, port:Float):ts.lib.Promise<{
		var hostname : String;
		var service : String;
	}>;
	@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<AnyRecord>> { })
	@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<MxRecord>> { })
	@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<NaptrRecord>> { })
	@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<SoaRecord> { })
	@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<SrvRecord>> { })
	@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<Array<Array<String>>> { })
	@:overload(function(hostname:String, rrtype:String):ts.lib.Promise<ts.AnyOf7<Array<String>, SoaRecord, Array<AnyRecord>, Array<MxRecord>, Array<NaptrRecord>, Array<SrvRecord>, Array<Array<String>>>> { })
	static function resolve(hostname:String):ts.lib.Promise<Array<String>>;
	@:overload(function(hostname:String, options:ResolveWithTtlOptions):ts.lib.Promise<Array<RecordWithTtl>> { })
	@:overload(function(hostname:String, options:ResolveOptions):ts.lib.Promise<ts.AnyOf2<Array<String>, Array<RecordWithTtl>>> { })
	static function resolve4(hostname:String):ts.lib.Promise<Array<String>>;
	@:overload(function(hostname:String, options:ResolveWithTtlOptions):ts.lib.Promise<Array<RecordWithTtl>> { })
	@:overload(function(hostname:String, options:ResolveOptions):ts.lib.Promise<ts.AnyOf2<Array<String>, Array<RecordWithTtl>>> { })
	static function resolve6(hostname:String):ts.lib.Promise<Array<String>>;
	static function resolveAny(hostname:String):ts.lib.Promise<Array<AnyRecord>>;
	static function resolveCname(hostname:String):ts.lib.Promise<Array<String>>;
	static function resolveMx(hostname:String):ts.lib.Promise<Array<MxRecord>>;
	static function resolveNaptr(hostname:String):ts.lib.Promise<Array<NaptrRecord>>;
	static function resolveNs(hostname:String):ts.lib.Promise<Array<String>>;
	static function resolvePtr(hostname:String):ts.lib.Promise<Array<String>>;
	static function resolveSoa(hostname:String):ts.lib.Promise<SoaRecord>;
	static function resolveSrv(hostname:String):ts.lib.Promise<Array<SrvRecord>>;
	static function resolveTxt(hostname:String):ts.lib.Promise<Array<Array<String>>>;
	static function reverse(ip:String):ts.lib.Promise<Array<String>>;
	static function setServers(servers:ts.lib.ReadonlyArray<String>):Void;
}