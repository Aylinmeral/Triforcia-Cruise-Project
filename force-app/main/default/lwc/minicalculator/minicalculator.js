import { LightningElement } from 'lwc';

export default class Minicalculator extends LightningElement {
    firstNumber;
    secondNumber;
    resultValue;

    handleNumberOneChange(event){
    this.firstNumber= parseInt(event.target.value);
    }
    handleNumberTwoChange(event){
        this.secondNumber= parseInt(event.target.value);
        }
        addition(){
            this.resultValue=parseInt(this.firstNumber)+parseInt(this.secondNumber);
        }
        multification(){
            this.resultValue=parseInt(this.firstNumber)-parseInt(this.secondNumber);
        }
        subtraction(){
            this.resultValue=parseInt(this.firstNumber)*parseInt(this.secondNumber);
        }
        division(){
            this.resultValue=parseInt(this.firstNumber)/parseInt(this.secondNumber);
        }
}