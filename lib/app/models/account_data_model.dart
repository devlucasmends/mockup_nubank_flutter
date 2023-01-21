class AccountDataModel {
  final String userName;
  final double accountBalance;
  final double invoiceAmount;
  final double creditLimit;
  final double loanLimit;
  final double investimentsValue;
  final double criptoValue;

  AccountDataModel({
    this.userName = 'Lucas',
    this.accountBalance = 1000.0,
    this.invoiceAmount = 1500.0,
    this.creditLimit = 1500.0,
    this.loanLimit = 5000.0,
    this.investimentsValue = 200.0,
    this.criptoValue = 100.0,
  });
}
