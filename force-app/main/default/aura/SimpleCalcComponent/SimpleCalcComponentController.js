({
    sumClientController : function(component, event, helper) {
        var numberX = component.get("v.xnumber");
        var numberY = component.get("v.ynumber");
        var result = numberX+numberY;
        console.log(numberX);
        console.log(numberY);
        console.log(result);

        component.set("v.result",result);
    }
})