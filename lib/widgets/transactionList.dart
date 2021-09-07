import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  TransactionList(this.transactions);
  final List<Transaction> transactions;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 110,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 3)),
                    padding: EdgeInsets.all(10),
                    child: Text(
                        '\$${transactions[index].amount.toStringAsFixed(2)}',
                        style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 24)),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(transactions[index].title,
                          style: TextStyle(
                              // color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text(DateFormat.yMMMMd().format(transactions[index].date),
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ],
                  ),
                ],
              ),
            );
          },
          itemCount: transactions.length,
        ));
  }
}
