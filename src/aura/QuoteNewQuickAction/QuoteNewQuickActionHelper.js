({
    init : function(component){
        var action = component.get("c.getInit");
        var recordId = component.get("v.recordId");
        console.log("recordId :: " + recordId);

        action.setParams({
            strRecordId : recordId
        })

        action.setCallback(this, function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
                var result = response.getReturnValue();

                console.log("call success :: " + JSON.stringify(result));

                component.set("v.objQuote", result);
            }
        });
        
        $A.enqueueAction(action);
    },

    fnSaveData : function(component) {
        var action = component.get("c.saveQuote");

        action.setParams({
            objQuote : component.set("v.objQuote")
        });

        action.setCallback(this, function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
                var result = response.getReturnValue();

                console.log("call success :: " + JSON.stringify(result));
                
            }
        });
        
        $A.enqueueAction(action);
    }
})