In this note, we show that, for prevailing hledger close examples, the
net income is, in some sense, closed out and added to equity, as it
seems classical accounting would desire.

First, we establish some notation. Then we will state the precise
claim, and then prove it.

Notation:

There are three points in time that we want to give names of variables for, that is, 

1. in the previous period's file, before closing
2. in the previous period's file, after closing
3. in the next period's file, after opening

So, for the first moment, we label the accounts A, L, E, I, X.

For the second, we label them,  A'', L'', E'', I'', X''.

And for the third, A', L', E', I', X'

Claim:

With the above notation, the following equations hold,

  E' = E + I + X,
  I' = 0,
  X' = 0.
  
In other words, the net income has been closed out and added to equity.

Proof:

The closing transaction is,

2000-01-31 closing
  A'' = A - A = 0
  L'' = L - L = 0
  E'' = E + (A + L)
  I'' = I
  X'' = X

The opening transaction is,

2000-02-01 opening
  A' = A
  L' = L
  E' = -(A + L)
  I' = 0
  X' = 0

Note that A + L + E' = 0. Then since A + L + E + I + X = 0, it follows that,

  E' - E = I + X.
  
And since I' = X' = 0, we've proved our claim.

