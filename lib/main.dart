import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/data.dart';
import 'package:mobile_wallet_app/widgets/card_section.dart';
import 'package:mobile_wallet_app/widgets/header.dart';

import 'widgets/expense.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 120,
            child:WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpenseSection())
        ],
      ),
    );
  }
}
