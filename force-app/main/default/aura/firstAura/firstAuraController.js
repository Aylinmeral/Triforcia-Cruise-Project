({
	sumClientController : function(component, event, helper) {
        
       // console.log(component);
       // v. variable   
       // c. functions apex class
       // 
        // aura Component {!v.variableName}
        // aura component {!c.functionname}
        // 
        // js "v.variableName"
        // js "c.apexclass" 
        // js "c.jsfunction"
       
        var number1=component.get("v.xNo");
        
        console.log('number1 : '+number1);
        
        var number2=component.get("v.yNo");
        
        console.log('number2 : '+number2);
        
        console.log('Sum of the Numbers : '+(number1+number2));
        
        var resultNumber=component.find("result");
        
        component.set("v.resultNo",(number1+number2));
		
	},
    
    
    subClientController : function(component, event, helper) {
        
        var number1=component.get("v.xNo");    
        var number2=component.get("v.yNo");
       
        
        component.set("v.resultNo",(number1-number2));
		
	},
     mulClientController : function(component, event, helper) {
        
       var number1=component.get("v.xNo");    
        var number2=component.get("v.yNo");
        
        
        component.set("v.resultNo",(number1*number2));
		
	},
     divClientController : function(component, event, helper) {
        
        var number1=component.get("v.xNo");    
        var number2=component.get("v.yNo");
        
        
        component.set("v.resultNo",(number1/number2));
		
	}
})