# bank_tech_test/
Challenge link
https://github.com/makersacademy/course/blob/main/individual_challenges/bank_tech_test.md

A Ruby program which records banking transactions and prints out account statements.

Installing / Getting started
git clone https://github.com/Fadaka/bank_tech_test

Clones the repo and loads the required files in itb.

#Features
Debit (Deposits), Credit (withdrawal), Statement.

Account statements return time of transaction, credit, debit and balance

#Usage (within irb)

**Creating a new account**
account = Account.new()

**deposit 100 -**
account.debit(100)

**withdrawing 50 -**
account.credit(50)

**Printing account statements**
account.statement

Used TDD to write all code and tests,  with 100% test coverage.
Used requirements to sketch domain model with short methods with one responsibility (e.g. withdraw, deposit, statements ).
used raise error to check that insufficients funds were present
Made use of doubles .
Refactored code and adhered to SRP.
