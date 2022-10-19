({
    ContactClientController : function(component, event, helper) {
        var singleContactClient=component.get("v.singleCont");
       // console.log(singleContactClient.FirstName);
       // console.log(singleContactClient.LastName);
       // console.log(singleContactClient.Phone);
        // console.log(singleContactClient.Email);
        var serverController = component.get("c.createServerController");
        serverController.setParams({'singleContact':singleContactClient});
        serverController.setCallback(this,function(response){
            console.log(response.getState());
            console.log(response.getReturnValue());
            console.log(response.getError()[0].message);
        }
        );
        $A.enqueueAction(serverController);
    }
})