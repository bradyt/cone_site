This page is drafted notes on my understanding of text accounting.

I will also be reading more at <https://hledger.org/accounting-links.html>.

Some of the quotes below are from links found there.

The text below is some reading I've done on the choice in text
accounting for the following topics:

- top level accounts
- accounting equation
- debit vs credit

I'd like to do a little more research on

- choice of "income" instead of "revenue"
- what the concept of equity maps to in various contexts

The following post suggests that Quicken already had the same four main
accounts, from
<https://community.quicken.com/discussion/7107529/faq-accounting-101>.

> Asset, Liability, Income, and Expense.

It's possible GnuCash was influenced in this by Quicken, or at least,
we see, from <https://en.wikipedia.org/wiki/GnuCash>.

> It was initially aimed at developing capabilities similar to Intuit,
> Inc.'s Quicken application,

We see below that GnuCash seems to take the same four accounts, and
starts to write accounting equations, and adds some implicit
interpretation of "equity" to these.

From section 2.1.3 of
<https://www.gnucash.org/docs/v3/C/gnucash-guide/basics-accounting1.html>,
we see they distinguish between a "static accounting equation",

> Assets - Liabilities = Equity

and a dynamic accounting equation,

> Assets - Liabilities = Equity + (Income - Expenses)

or their "rearranged accounting equation",

> Assets + Expenses = Liabilities + Equity + Income

Note the table following that, describing how to use debit/credit
terminology.

| account type | debit    | credit   |
|--------------|----------|----------|
| assets       | increase | decrease |
| expenses     | increase | decrease |
| liabilities  | decrease | increase |
| equity       | decrease | increase |
| income       | decrease | increase |

Presumably, when John Wiegley invented text accounting in 2003, he
modified the signs of these accounts, so that the equation becomes,

> Assets + Liabilities + Equity + Income + Expenses = 0

This has a few nice side effects.

1. The equation is simpler
2. The signs of values in transactions are easier to write
3. A mnemonic for debit vs credit is easier

Regarding debit vs credit, consider the following quote from
"Algebraic Models for Accounting Systems".

> There is an important comment to be made regarding signs: for the
> entries of a balance vector can be positive or negative. The great
> advantage of using positive and negative signs is that the signs
> take care of questions of credit or debit automatically; for
> example, a credit balance has a positive sign and a debit balance a
> negative one.

In other words, we can simply identify debit postings when the amount
is positive, and credit postings when the amount is negative.

For example, consider in the follow text transaction, the comments
indicating debit vs credit.

```text
2000-01-01
    account1   10 USD ; debit
    account2  -10 USD ; credit
```
