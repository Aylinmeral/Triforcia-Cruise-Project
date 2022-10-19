import { LightningElement } from 'lwc';

// standard lib. message channel
import { createMessageContext,
  releaseMessageContext,
  APPLICATON_SCOPE,
  subscribe,
  unsubscribe  } from 'lightning/messageService';

// message channel import 
import kasrllc from '@salesforce/messageChannel/kasrllc__c';

export default class SubsciberComponent extends LightningElement {
  receivedMessage;
  receivedRecordData;
  context=createMessageContext();
  subscription=null;

  connectedCallback(){
      this.subscribeMC();
  }

  subscribeMC(){
    if(!this.subscription){
      this.subscription=subscribe(
        this.context,kasrllc,(message)=>{
          this.handleMessage(message);
        }, {scope:APPLICATON_SCOPE}
      );

    }
  }

  handleMessage(message){
    console.log('--------------');

    console.log(message);

    console.log('--------------');

    //  = ? :
    this.receivedMessage = message ? message.recordId : 'no message is received';
this.receivedRecordData = message? message.recordData : 'No record data '; 

  }

}