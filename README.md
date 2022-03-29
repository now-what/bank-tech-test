Bank tech test
===

A REPL-based interactive bank account.
The program allows to:
- Create a new account.
- Deposit money.
- Withdraw money.
- Request (print) a statement that shows a chronological list of transactions and the running balance.

Instructions
---

- Clone this repository.
- `cd` into the repository folder.
- `rspec` to run the tests.
- Load the program in IRB: `irb -r ./account.rb`
- Create an account: `account = Account.new`
- Deposit money: `account.deposit(100)`
- And withdraw money: `account.withdraw(20)`
- Print a statement: `account.statement`

Screenshots
---

![](/screenshots/Screenshot%202022-03-29%20at%2021.49.40.png)

![](/screenshots/Screenshot%202022-03-29%20at%2021.50.03.png)


Requirements
---

- You should be able to interact with your code via a REPL like IRB or Node. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

Acceptance criteria
---

**Given** a client makes a deposit of 1000 on 10-01-2023
**And** a deposit of 2000 on 13-01-2023
**And** a withdrawal of 500 on 14-01-2023
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

User stories
---

```
As a client of the bank,
so that I can store money away,
I want to be able to make deposits.
```
```
As a client of the bank,
so that I can access my money,
I want to be able to make withdrawals.
```
```
As a client of the bank,
so that I can know how much money I have,
I want to be able to print statements.
```
```
As a bank statement,
so that I can show a list of transactions,
I want to be able to list all deposits and withdrawals of an account in chronological order.
```

Domain modelling
---

| Objects | Messages |
--- | ---
Account | deposit(), withdraw(), statement()
Transaction

---

Approach
---

- I started with a basic domain model and with some user stories.
- Then I layed out the `deposit()` and `withdraw()` methods in `Account`.
- Then I thought of having each deposit and withdraw action to automatically create and store an instance of `Transaction`.
- Every instance of `Transaction` carrys an amount (either `debit` or `credit`), a timestamp, and the running `balance`.
- I then built the `statement()` method that prints out a list of transactions according to specification.

Things to improve
---

- Testing of the `Transaction` class:
    - the "hold the current balance" test is actually operating on the `Account` class.
    - I am not sure if the other tests are meaningful.
- `statement()` can probably be extracted to its own class.
- I added a lot of code so that either the debit or the credit cell is empty for each transaction (instead of printing `"0.00"`).
- Refactoring. 

