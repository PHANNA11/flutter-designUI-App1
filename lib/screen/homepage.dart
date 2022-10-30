import 'package:desing1/data/transaction_data.dart';
import 'package:desing1/widgets/drawer_widget.dart';
import 'package:desing1/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Java';
    return Scaffold(
      backgroundColor: HexColor('334756'),
      drawer: const DrawerWidget(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: HexColor('3A668B'),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            alignment: Alignment.topCenter,
                            child: const Icon(
                              Icons.settings,
                              size: 35,
                            ))),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            '\$3,185',
                            style: TextStyle(
                              color: Color.fromARGB(255, 209, 201, 201),
                            ),
                          ),
                          Text(
                            '\$1225',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'B.4953',
                            style: TextStyle(
                              color: Color.fromARGB(255, 209, 201, 201),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Transactions',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            Container(
              height: 400,
              // color: Colors.blue,
              child: Column(
                children: List.generate(
                    transactionDatas.length,
                    (index) => ListTileWidget(
                          mapTransaction: transactionDatas[index],
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
