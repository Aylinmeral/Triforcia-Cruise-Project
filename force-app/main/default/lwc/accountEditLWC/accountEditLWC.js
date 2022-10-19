import { LightningElement, api } from "lwc";
// import { ShowToastEvent } from "lightning/platformShowToastEvent";
import AccName from "@salesforce/schema/Account.Name";
import accPhone from "@salesforce/schema/Account.Phone";
import accIndustry from "@salesforce/schema/Account.Industry";
import AccDuns from "@salesforce/schema/Account.DunsNumber";
export default class AccountEditLWC extends LightningElement {
  @api recordId;
  objectApiName = "Account";
  fieldList = [AccName, accPhone, accIndustry, AccDuns];
  connectedCallback() {
    console.log("Record id is : " + this.recordId);
  }
}