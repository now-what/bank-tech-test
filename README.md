Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00




User stories
---

As a client of the bank,
so that I can store money away,
I want to be able to make deposits.

As a client of the bank,
so that I can access my money,
I want to be able to make withdrawals.

As a client of the bank,
so that I can know how much money I have,
I want to be able to print statements.

As a bank statement,
so that I can show a list of transactions,
I want to be able to list all deposits and withdrawals of an account in chronological order.


Objects | Messages
Money | deposit(), withdraw()
Statement | list()
Transaction

