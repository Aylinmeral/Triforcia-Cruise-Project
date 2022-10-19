import { LightningElement, wire, track } from "lwc";
import getAccounts from "@salesforce/apex/accountRetrieveLWC.getAccounts";
export default class WireAndImperativeCallAccount extends LightningElement {
  message;
  @track multiaccount;
  @wire(getAccounts) lastTenAccountRecordList({ error, data }) {
    if (data) {
      console.log(data);
      this.multiaccount = data;
    } else if (error) {
      console.log(error);
      this.message = error;
    }
  }
}