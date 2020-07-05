# Getting started
### But what is it?

The mobile apps for Android and iOS, `cone`, help users write plain text financial transactions to a text file, to a location on their phone, like "Documents", "Google Drive", "On My iPhone", or "iCloud Drive".

Here are a couple of example transactions.

```text
2020-07-04 Springfield Market
    expenses:food:groceries             120.96 USD
    assets:wallet:cash                   60.00 USD
    assets:springfield_bank:checking   -180.96 USD

2020-07-05 Farmer's Market
    expenses:food:groceries              22.86 USD
    assets:wallet:cash                  -22.86 USD
```

There is existing software for the personal computer that can parse these files and calculate all sorts of balances, registers and reports. We hope to add a few of these features to the mobile `cone` app in the not too distant future. A very simple account tree with all balances, will likely be one of the first such features.

Note that you are in relative control of your data. That is one of the key features of this file format, where the original such file format was invented by John Wiegley in 2003.

Note that these tools are free, and you can expect your data to be future proof. You do not have a monthly or yearly subscription. You can always print out these text files for secure and physical archives, or to some degree, print them out and hand them to your accountant. Though usually you can customize a report to your accountant's preferences.

These plain text financial formats tend to appeal more to software engineers, for their personal accounting. But the format has captivated a larger audience, such as people that like to tinker, hobby, or just see features they prefer in this format. If you are curious, I understand this format is not very often used within large companies, as they will usually invest in enterprise software, but usage in small businesses seems fairly common.

# Quickstart guide

The first step for using the `cone` app, is to associate an empty text file, or an existing ledger file in one of the ledger formats, such as ledger-cli's, etc.

If your version of `cone` is `0.2.20` or older, you'll have to use some other method to create that text file. In case you are having difficulty with that, here is a text file you can download:


- <a href="../your-plain-text-journal.txt" download>your-plain-text-journal.txt</a>

On newer versions of `cone`, there should be a button to create a new empty text file and save it to one of your phone's storage location. Note that this uses a different method than the original method that picks an existing file, and many cloud providers have not implemented this feature. A workaround could be to use "Create new file" to put on "Documents" or "On My iPhone", then use your "Files" app to move that new file to your desired location, then switch back to `cone` and use the usual "Pick existing file" feature to link from that cloud location.

Really it's amusing that Android and iOS do not make it easier to create a new empty text file.

Now that you have a file linked to `cone`, you can add transactions. If you are using this app on the go, you could consider just taking receipts at point of sale, then when you have a moment sitting down, transfer the information from the receipt to your journal.

If your transaction is similar to an existing one, note there is a copy feature in `cone`, where you can select an existing transaction and then copy it into the data entry field, and then edit the values that have changed. Note that `cone` will otherwise only update the date of the transaction to today's date.

We hope to come up with more elegant solutions to entering data quickly.

I hope you enjoy this app, at least as an interesting experiment in what this sort of app might be on mobile devices.
