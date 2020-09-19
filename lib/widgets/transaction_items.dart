import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';


class TransactionItems extends StatelessWidget {
  const TransactionItems({
    Key key,
    @required this.transactions,
    @required this.deleteTx,
  }) : super(key: key);

  final Transaction transactions;
  final Function deleteTx;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(
        vertical: 1,
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: EdgeInsets.all(6),
            child: FittedBox(
              child: Text(
                '\$${transactions.amount}',
              ),
            ),
          ),
        ),
        title: Text(
          transactions.title,
          style: Theme.of(context).textTheme.title,
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(
            transactions.date,
          ),
        ),
        trailing: MediaQuery.of(context).size.width > 400
            ? FlatButton.icon(
                textColor: Theme.of(context).errorColor,
                icon: Icon(Icons.delete),
                label: Text('Delete'),
                onPressed: () => deleteTx(transactions.id),
              )
            : IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => deleteTx(transactions.id),
                color: Theme.of(context).errorColor,
              ),
      ),
    );
  }
}