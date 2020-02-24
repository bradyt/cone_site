# Features
## Data entry

Has editable text fields for date, description, and arbitrary number
of postings, which each include account, quantity and
currency/commodity.

### Date field

Has a date picker button, which will insert date in the format
`yyyy-MM-dd`, unless your most recent transaction date has a forward
slash `/` or a period `.`.

Users may wish we supported other date formats, like `dd.MM.yyyy`, but
when there is a choice, we prefer to look at ledger files as a
computer storage format, and there, ISO should be preferred. There is
not a good way to determine between little-endian and middle-endian,
without complicating the parsing step, etc. So this will not be a
priority at this time. We will use big-endian at least for now. The
only reason we broke from using `yyyy-MM-dd`, to other date
separators, is because unfortunately, `yyyy/MM/dd` is the default in
ledger-cli. Also, it didn't seem to cause too much extra work in
parsing, which is still very much a work in progress. We would rather
not complicate parsing unless we have a very good reason.

We now have a feature that shows `Today` as hint text, so that, when
you submit, this is translated to today's date in the big-endian
format specified above.

### Description field

It has some autocomplete dropdown. One drawback at the moment is, the
choice of library does not seem to facilitate using a widget test yet.
Whereas, I'd really like to see lots of tests in the project, to make
it easier to modify the project.

Also, this is apparently a pain point with respect to being usable for
beancount users. I don't have experience with beancount, but I'd like
to come up with a way to make the description field useable for both
ledger/hledger users, _and_ beancount users.

### Account field

Also uses autocomplete dropdown.

### Quantity and commodity fields

#### Quantity field

Will try to pad zeros before writing to file. For example, if your
numberLocale was `ja`, then you might see `3 JPY` written as `3 JPY`,
versus `3 USD` written as `3.00 USD`.

If you set `numberLocale` to e.g. `de`, you will see commas as the
decimal separator.

#### Commodity field

Shows default currency as hint text. If we can create a more useable
data entry
