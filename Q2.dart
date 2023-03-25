//Create a BankAccount class with balance and accountNumber properties, and methods called deposit() and withdraw() that modify the balance property. Then create a CheckingAccount class that inherits from BankAccount and has a transactionLimit property. Override the withdraw() method in the CheckingAccount class to check if the withdrawal amount is within the transaction limit before modifying the balance property.

import 'dart:io';

class BankAccount {
  int balance = 0;
  int accountNumber = 0;


  BankAccount(this.balance,this.accountNumber);
  void deposit() {
    int deposit= 20000;
    balance+=deposit;
    print("Current balance is:Rs.$balance.");
  }
  void withdraw(){
    print("Enter Amount to Withdraw:");
    String drawInput = stdin.readLineSync() as String;
    int withdraw = int.parse(drawInput);
    int remaining = balance - withdraw;
    print("The withdrew amount is Rs.$withdraw and the remaining balance is Rs.$remaining");

  }
}

class CheckingAccount extends BankAccount {
  int transactionLimit;

  CheckingAccount(int balance, int accountNumber,this.transactionLimit) : super(balance,accountNumber);

  void withdraw() {
    print("Enter the Amount:");
    String drawInput = stdin.readLineSync() as String;
    int withdraw = int.parse(drawInput);
    if(withdraw>transactionLimit){
      print("Your entered amount is above the transaction Limit plz insert small amount ");
    }
    else{
      int remaining = balance - withdraw;
      print("The withdrew amount is Rs.$withdraw and the remaining balance is Rs.$remaining");
    }

  }
}

void main() {
  CheckingAccount checkingAccount = CheckingAccount(40000,79346743,100000);
  checkingAccount.deposit();
  checkingAccount.withdraw();

}