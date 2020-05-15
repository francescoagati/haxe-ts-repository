package rxjs;
typedef SchedulerAction<T> = {
	function schedule(?state:T, ?delay:Float):Subscription;
	/**
		A flag to indicate whether this Subscription has already been unsubscribed.
	**/
	var closed : Bool;
	@:noCompletion
	var _parentOrParents : ts.AnyOf2<Subscription, Array<Subscription>>;
	@:noCompletion
	var _subscriptions : Dynamic;
	/**
		Disposes the resources held by the subscription. May, for instance, cancel
		an ongoing Observable execution or cancel any other type of work that
		started when the Subscription was created.
	**/
	function unsubscribe():Void;
	/**
		Adds a tear down to be called during the unsubscribe() of this
		Subscription. Can also be used to add a child subscription.
		
		If the tear down being added is a subscription that is already
		unsubscribed, is the same reference `add` is being called on, or is
		`Subscription.EMPTY`, it will not be added.
		
		If this subscription is already in an `closed` state, the passed
		tear down logic will be executed immediately.
		
		When a parent subscription is unsubscribed, any child subscriptions that were added to it are also unsubscribed.
	**/
	function add(teardown:TeardownLogic):Subscription;
	/**
		Removes a Subscription from the internal list of subscriptions that will
		unsubscribe during the unsubscribe process of this Subscription.
	**/
	function remove(subscription:Subscription):Void;
};