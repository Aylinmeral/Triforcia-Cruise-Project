import { LightningElement } from "lwc";
import { NavigationMixin } from "lightning/navigation";
import { ShowToastEvent } from "lightning/platformShowToastEvent";
import Name from "@salesforce/schema/Account.Name";
import Phone from "@salesforce/schema/Account.Phone";
import Industry from "@salesforce/schema/Account.Industry";
export default class CreateAccountComponent extends NavigationMixin(
  LightningElement
) {
  objectApiName = "Account";
  fieldList = [Name, Phone, Industry];
  onSuccessHandler(event) {
    console.log("record is created successfully");
    const evt = new ShowToastEvent({
      title: "Success",
      message: "Record is created Succesfully",
      variant: "success",
      mode: "dismissable"
    });
    this.dispatchEvent(evt);
    this[NavigationMixin.Navigate]({
      type: "standard__recordPage",
      attributes: {
        recordId: event.detail.id,
        objectApiName: this.objectApiName,
        actionName: "view"
      }
    });
  }
  onErrorHandler() {
    const evt = new ShowToastEvent({
      title: "Error",
      message: "Record is not created",
      variant: "error",
      mode: "dismissable"
    });
    this.dispatchEvent(evt);
  }
}