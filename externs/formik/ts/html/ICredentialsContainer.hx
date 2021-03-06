package ts.html;
typedef ICredentialsContainer = {
	function create(?options:CredentialCreationOptions):ts.lib.Promise<Null<Credential>>;
	function get(?options:CredentialRequestOptions):ts.lib.Promise<Null<Credential>>;
	function preventSilentAccess():ts.lib.Promise<Void>;
	function store(credential:Credential):ts.lib.Promise<Credential>;
};