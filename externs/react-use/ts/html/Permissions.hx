package ts.html;
@:native("Permissions") extern class Permissions {
	function new();
	function query(permissionDesc:ts.AnyOf4<DevicePermissionDescriptor, PermissionDescriptor, MidiPermissionDescriptor, PushPermissionDescriptor>):ts.lib.Promise<PermissionStatus>;
	static var prototype : Permissions;
}