// file for what all factors are composed wrt to transactions

import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date; // predefined class for giving date and time

  Transaction({
    @required this.id,
    @required this.title,
    @required this.date,
    @required this.amount,
  });  
}
