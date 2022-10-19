({
    sumClientController : function(component, event, helper) {
        var x=component.get("v.xNumber");
        var y=component.get("v.yNumber");
        console.log('x number : '+x);
        console.log('y number : '+y);        
        var serverController=component.get("c.SumServerController");  // APEX Method. 
        
         // Sent them to apex.       
         serverController.setParams(
            {
                "number1": x,
                "number2": y
            }
        );
       // receive apex response. 
        serverController.setCallback(this,function(response){
            console.log(response.getReturnValue());
            component.set("v.Result",response.getReturnValue());
            
         }
        
        );
        
        $A.enqueueAction(serverController);
        
        // Show response on the UI. (set)
        
        // get the numbers from ui. (get) 
    }
})