class BankAccount {
    // TODO
    final String _accountId;
    final String _accountOwner;
    double _balance;
    
    BankAccount({required String accountId, required String accountOwner, double balance = 0}): 
    _accountId  = accountId, 
    _accountOwner = accountOwner,
    _balance = balance;

    int get balance => _balance.toInt();
    String get accountId => _accountId;
    String get accountOwner => _accountOwner;

    void withdraw(double amount){
      if (_balance - amount < 0){
        throw Exception("Insufficient balance for withdrawal!");
      }
      _balance -= amount;
    }

    void credit(double amount){
      if (amount < 0){
        throw Exception("Amount must be positive");
      }
      _balance += amount;
    }

}

class Bank {
    // TODO
    final String _bankName;
    final List<BankAccount> _accounts; 

    Bank({
      required String bankName, 
      List<BankAccount>? accounts
    }) :
    _bankName = bankName,
    _accounts = accounts ?? [];

    String get bankName => _bankName;
    List<BankAccount> get accounts => _accounts;


    BankAccount createAccount(String accountId, String accountOwner){
      for(BankAccount account in _accounts){
        if(accountId == account.accountId){
          throw Exception("Account with ID ${accountId} already exists!");
        }
      }
      BankAccount newAccount = BankAccount(accountId: accountId, accountOwner: accountOwner);
      _accounts.add(newAccount);

      return newAccount;
    }


}
 
void main() {

  Bank myBank = Bank(bankName: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount("100", 'Ronan');


  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount("100", 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
