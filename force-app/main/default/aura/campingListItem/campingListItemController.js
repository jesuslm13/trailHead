({
	packItem: function(component, event, helper){

		let item = component.get("v.item");
		let isButtonDisabled = event.getSource().get("v.disabled");
		console.log("isButtonActive :: " + isButtonDisabled);
		console.log("item :: " + item);

		if(!isButtonDisabled){
			// isButtonDisabled = true;
			item.Packed__c = true;
			component.set("v.item", item);
			event.getSource().set("v.disabled", true);
		}

		console.log("after item :: " + JSON.stringify());

	}
});