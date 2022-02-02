# bank_tech_test/
Challenge link
https://github.com/makersacademy/course/blob/main/individual_challenges/bank_tech_test.md

A Ruby program which records banking transactions and prints out account statements.

Installing / Getting started
git clone https://github.com/Fadaka/bank_tech_test

Clones the repo and loads the required files in itb.

##Features
Debit (Deposits), Credit (withdrawal), Statement.

Account statements return time of transaction, credit, debit and balance

##Usage (within irb)

**Creating a new account -**

``` ruby
account = Account.new()
```

**Deposit 100 -**

``` ruby
account.debit(100)
 ```

**withdrawing 50 -**

```ruby
account.credit(50) 
```

**Printing account statements -**

```ruby
account.statement 
```

Used TDD to write all code and tests,  with 100% test coverage.
Used requirements to sketch domain model with short methods with one responsibility (e.g. withdraw, deposit, statements ).
used raise error to check that insufficients funds were present
Made use of doubles .
Refactored code and adhered to SRP.

![alt text](https://github.com/Fadaka/bank_tech_test/blob/main/Screenshot%202022-02-02%20at%2007.57.05.png)
