import { LightningElement } from 'lwc';

// standard lib. lightning/messageservice 
import { createMessageContext, releaseMessageContext,publish } from 'lightning/messageService';

// add message channel into this js
import kasrllc from '@salesforce/messageChannel/kasrllc__c';

export default class PublisherComponent extends LightningElement {

context=createMessageContext();

messageText;

  textChangeHandler(event){
   

    this.messageText=event.target.value;

  }
 publishHandler(event){
    event.preventDefault();

    let payload={

      recordId:this.messageText,
      recordData:'this is second field'
    };

   
    console.log(payload);

    publish(this.context,kasrllc,payload);

  }


}