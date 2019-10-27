These are partial and random notes. I've yet to establish a coherent
summary of what the topic will be, despite several attempts.

So for now, here you are.

## Links

- ledger-cli Google Groups
    - [Ledger and the accountancy equation](https://groups.google.com/d/topic/ledger-cli/k0ZRUfBWvL4/discussion)
    - [Confusion about a few things](https://groups.google.com/d/topic/ledger-cli/1F1prbDAn3s/discussion)
    - [New option for Debit/Credit reports: --dc](https://groups.google.com/d/topic/ledger-cli/uvBjsHrwzAY/discussion)
    - [Re: new name for hledger-equity.hs ?](https://groups.google.com/forum/#!topic/ledger-cli/XCWNBpMtgp8/discussion)
- hledger Google Groups
    - [new name for hledger-equity.hs ?](https://groups.google.com/forum/#!topic/hledger/TeBp1ymz1RA/discussion)
- money.stackexchange.com
    - [What is the Equity account for in GnuCash](https://money.stackexchange.com/questions/56484/what-is-the-equity-account-for-in-gnucash)
    - [In double entry accounting, how does income become equity?](https://money.stackexchange.com/questions/23994/in-double-entry-accounting-how-does-income-become-equity?noredirect=1&lq=1)
- beancount docs
    - [Types of Accounts](https://xuhcc.github.io/beancount-docs/02_the_double_entry_counting_method.html#types-of-accounts)
    - [Equity](https://xuhcc.github.io/beancount-docs/02_the_double_entry_counting_method.html#equity)
    - [Chart of Accounts](https://xuhcc.github.io/beancount-docs/02_the_double_entry_counting_method.html#chart-of-accounts)
    - [Credits & Debits](https://xuhcc.github.io/beancount-docs/02_the_double_entry_counting_method.html#credits-debits)
- [Plain Text Accounting](https://plaintextaccounting.org)
- ledger docs
    - [Stating where money goes](https://www.ledger-cli.org/3.0/doc/ledger3.html#Stating-where-money-goes)
    - [Archiving Previous Years](https://www.ledger-cli.org/3.0/doc/ledger3.html#Archiving-Previous-Years)
- hledger docs
    - [hledger#close](https://hledger.org/hledger.html#close)
    - [hledger accounting links](https://hledger.org/accounting-links.html#theory)
        - [Rambaud et al., Algebraic Models for Accounting Systems](https://www.maa.org/press/maa-reviews/algebraic-models-for-accounting-systems)
        - [Ellerman, On Double-Entry Bookkeeping: The Mathematical Treatment](http://www.ellerman.org/wp-content/uploads/2014/11/DEB-MathTreatment-reprint.pdf)
- GnuCash docs
    - [static accounting equation](https://www.gnucash.org/docs/v3/C/gnucash-guide/basics-accounting1.html#accounting_equation_static)
    - [(dynamic) accounting equation](https://www.gnucash.org/docs/v3/C/gnucash-guide/basics-accounting1.html#accounting_equation_dynamic)
    - [rearranged accounting equation](https://www.gnucash.org/docs/v3/C/gnucash-guide/basics-accounting1.html#accounting_equation_rearranged)
- Wikipedia
    - [Accounting equation](https://wikipedia.org/wiki/Accounting_equation)
    - [Retained earnings](https://wikipedia.org/wiki/Retained_earnings)
    - [Debits and Credits](https://wikipedia.org/wiki/Debits_and_credits)

## Some frequently encountered conventions in plain text accounting

### Top level accounts

- assets
- liabilities
- equity
- income
- expenses

### Transactions must balance

A typical transaction in ledger might be,

``` text
2000-01-01 an example transaction
  expenses:gas    10 USD
  assets:cash    -10 USD
```

Ledger convention is for transactions to balance, for example in the
previous, `10 + (-10) = 0`, so the postings balance. In fact, this is
enforced. If we try to write the following to our ledger file,

``` text
2000-01-01 an example transaction
  expenses:gas    10 USD
  assets:cash     -3 USD
```

Then ledger will emit the following error message,

``` text
​> 2000-01-01 an example transaction
​>   expenses:gas    10 USD
​>   assets:cash     -3 USD
Unbalanced remainder is:
               7 USD
Amount to balance against:
              10 USD
Error: Transaction does not balance
```

### Corollary, an accounting equation

With the above top level accounts, and the fact that transactions must
balance, this implies the following equation will hold.

\[
\text{assets} + \text{liabilities} + \text{equity} + \text{income} + \text{expenses} = 0.
\]

### Signed numbers versus debit/credit

The notation chosen for plain text accounting uses signed numbers,
rather than requiring the notion of debits and credits.

I think we can borrow terminology from Ellerman, where they refer to
the two systems as SSS and DSU. That is, single-sided accounts with
signed numbers, versus double-sided accounts with unsigned numbers.

So if plain text accounting had used DSU, we might have written the
above transaction instead as,

``` text
2000-01-01 an example transaction
                 debits   credits
  expenses:gas   10 USD
  assets:cash              10 USD
```

We hope you agree that the SSS version is preferable, and natural to
use.

If you are trying to translate between an SSS amount or account, and
debit/credit terminology, a mnemonic might be as simple as "debit is
positive, credit is negative".

Note that we are implicitly flipping the sign on credit accounts, that
is, liabilities, equity and income will typically have negative
balances in plain text accounting.

Consider that GnuCash docs provide the DSU variant of our accounting
equation above, reproduced here.

\[
\text{Assets} + \text{Expenses} = \text{Liabilities} + \text{Equity} + \text{Income}.
\]

### Equity and net income

There appears to be a discrepancy. Wikipedia writes the accounting
equation as,

\[
\text{Assets} = \text{Liabilities} + \text{Equity}.
\]

So why do our accounting equations above have two extra terms, income
and expenses?

Wikipedia even writes the following equations,

\[
\begin{align*}
\text{Owner's equity} &= \text{Contributed Capital} + \text{Retained Earnings}, \\
\text{Retained Earnings} &= \text{Net Income} − \text{Dividends, and} \\
\text{Net Income} &= \text{Income} − \text{Expenses}
\end{align*}
\]

This suggests that income and expenses should be subaccounts to
equity. So why do we have them as top-level accounts, or siblings to
the equity account?

Perhaps this quote from Wikpedia leads us to a possible viewpoint.

> At the end of that period, the net income (or net loss) at that
> point is transferred from the Profit and Loss Account to the
> retained earnings account.

Rambaud et al. briefly share an example with this partition of
accounts, for equity accounts, permanent accounts, and temporary accounts.

\[
A = A_e \cup A_p \cup A_t.
\]

Then further subdividing temporary accounts into revenue and expenses,

\[
A = A_e \cup A_p \cup A_{tr} \cup A_{te}.
\]

They go on to suggest "that the temporary accounts are to be closed
and their balances combined and added to the retained earnings
account."

This notion that the top-level, current income and expense accounts
are "temporary", is repeated in a few more of the links above.

The equity is what we expect, every time we close the books.

This seems to solve the apparent discrepancy. Wikipedia's version of
accounting equation is true again, any time the top-level income and
expense accounts are zeroed out.

### Zeroing out net income

Let's see how we might do this in text accounting, with an example.

Suppose in January, you have the following transactions.

``` text
2000-01-01 paycheck
  assets:checking           10 USD
  income:employer          -10 USD

2000-01-01 rent
  expenses:rent              5 USD
  assets:checking           -5 USD
```

At the end of January, you might close the books by adding the
following transaction, to move profits and losses to retained
earnings.

``` text
2000-01-31 close 2000-01
  income:employer           10 USD
  expenses:rent             -5 USD
  equity:retained earnings  -5 USD
```

Now we can check our balances again.

``` text
> ledger balance
               5 USD  assets:checking
              -5 USD  equity:retained earnings
--------------------
                   0
```

By closing the books, we have restored the usual accounting equation.
That is, for our SSS system in plain text accounting, the following
equation is true again.

\[
\text{assets} + \text{liabilities} + \text{equity} = 0.
\]

### Plain text accounting closing

It would be possible to generate the closing transaction above with
hledger's `close` command,

``` text
> hledger close income expenses --closing | sed -e 's/closing balances/retained earnings/'
2000-01-31 retained earnings
  expenses:rent              -5 USD = 0 USD
  income:employer            10 USD = 0 USD
  equity:retained earnings   -5 USD
```

The examples I found do it a little differently, filtering on assets
and liabilities, and using this to close assets and liabilities in the
previous period's ledger file, and reopen just those accounts in the
next period's file.

``` text
> hledger close assets liabilities
2000-01-31 closing balances
  assets:checking            -5 USD = 0 USD
  equity:closing balances     5 USD

2000-02-01 opening balances
  assets:checking             5 USD = 5 USD
  equity:opening balances    -5 USD
```

In some sense, this is implicitly closing net income and adding it to
equity.

To illustrate what we mean, let's consider another example.

``` text
2000-01-01 opening balance
  assets:checking          5 USD
  equity:opening balance  -5 USD
  
2000-01-15 paycheck
  assets:checking          7 USD
  income:employer         -7 USD
```

Then note our equity is now -5 USD, and our net income is -7 USD.

With the hledger approach, we have,

``` text
> hledger close assets liabilities
2000-01-31 closing balances
    assets:checking                 -12 USD = 0 USD
    equity:closing balances          12 USD

2000-02-01 opening balances
    assets:checking                  12 USD = 12 USD
    equity:opening balances         -12 USD
```

So now we have the new equity equal to the old equity plus net income,
that is, -5 + (-7) = -12.

### A proof

Let's see if we can add notation, and state and prove a more precise
claim, corresponding with the claim made in the previous section.

Our example will be that of two files, one with an ongoing record of
transactions, and at end of period, we will add transactions to
facilitate recording the next period to the new file.

We consider three moments in time, or locations in the text ledger
files, really. The first is at the end of the previous period, but
before the closing transaction. The second moment we consider is after
the closing transaction for that period, but in that same file. The
third and final moment we consider, is after the opening transaction
for the next period, in the new file.

We denote the account balances for each moment with the following
notation, that is, assets, liabilities, equity, income, and expenses,
for each of the three moments, in order.

\[
A, L, E, I, X,\\
A', L', E', I', X',\\
A'', L'', E'', I'', X''.
\]

We can now state our claim more precisely.

We claim that with the above scenario, and notation, that,

\[
\begin{align*}
E'' &= E + I + X, \\
I'' &= 0, \\
X'' &= 0.
\end{align*}
\]

In other words, considering the two moments, before closing, and after
opening, we are in some sense, closing the net income and adding to
equity.

We don't need it for our proof, but perhaps for clarity, we provide
following to denote the closing transaction.

``` text
2000-01-31 closing
  A' = A - A = 0
  L' = L - L = 0
  E' = E + (A + L)
  I' = I
  X' = X
```

And the opening transaction we denote as,

``` text
2000-02-01 opening
  A'' = A
  L'' = L
  E'' = -(A + L)
  I'' = 0
  X'' = 0
```

We take as given that \(A + L + E + I + X = 0\). Then since \(A + L +
E'' = 0\), it quickly follows that,

\[
\begin{align*}
E'' &= E + I + X, \\
I'' &= 0, \\
X'' &= 0,
\end{align*}
\]

as was claimed.

In other words, for hledger's prevailing close examples, in some
sense, net income was closed and added to equity.
