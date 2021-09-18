({
    fninit : function(component, event, helper) {
        helper.init(component);
    },

    fnSaveClick : function(component, event, helper) {

        var objQuote = component.set("v.objQuote");
        console.log("objQuote :: " + JSON.stringify(objQuote));
        helper.fnSaveData(component);
    }
})