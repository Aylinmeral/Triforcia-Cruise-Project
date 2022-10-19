import { LightningElement,track,wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
    
import retrive from '@salesforce/apex/AccountController.retrive';
const COLUMNS = [
  { label: 'Id', fieldName: 'Id', type:'text' },  
  { label: 'Name', fieldName: 'Name', type:'text' },  
  { label: 'Phone', fieldName: 'Phone', type: 'phone' },
  { label:'Credit Card', fieldName:'Credit_Card__c', type:'text'}
 
];
export default class AccountComponentSecurity extends LightningElement {
  @track multiAccount;
  columns=COLUMNS;
  // wire => Wire Service respect FLS. UI API 
@wire(retrive) returnedAccountFunction({error,data}){
  if(error){
       const evt = new ShowToastEvent({
          title: 'Error ',
          message: 'account retrieve error',
          variant: 'error',
          mode: 'dismissable'
      });
      this.dispatchEvent(evt);
  }
 else if(data){
this.multiAccount=data;
const evt = new ShowToastEvent({
  title: 'Success ',
  message: 'accounts retrieved',
  variant: 'success',
  mode: 'dismissable'
});
this.dispatchEvent(evt);
 }
}
  
  /*
  
  connectedCallback(){
    // imperative
    retrive()
    .then(res=>{
      this.multiAccount=res;
    })
    .catch(err=>{
      console.log('-----------------');
      console.log(err);
      console.log('-----------------');
    });
  }
  */
}