package ts.html;
typedef IPermissions = {
	function query(permissionDesc:ts.AnyOf4<DevicePermissionDescriptor, PermissionDescriptor, MidiPermissionDescriptor, PushPermissionDescriptor>):ts.lib.Promise<PermissionStatus>;
};