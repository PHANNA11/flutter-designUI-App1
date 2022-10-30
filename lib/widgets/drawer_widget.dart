import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: HexColor('334756'),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Expanded(
                          flex: 2,
                          child: Icon(
                            Icons.account_balance_wallet_rounded,
                            size: 70,
                            color: Color.fromARGB(255, 12, 92, 15),
                          ),
                        ),
                        Expanded(
                          child: Icon(
                            Icons.account_balance_wallet_rounded,
                            size: 40,
                          ),
                        ),
                        Expanded(
                            child: Icon(
                          Icons.account_balance_wallet_rounded,
                          size: 40,
                        )),
                        Expanded(
                          child: Icon(
                            Icons.more_horiz_sharp,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Main Account',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    subtitle: Text('ETH Currency',
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Preference',
                        style: TextStyle(fontSize: 22, color: Colors.white)),
                  )
                ],
              ),
              //color: Colors.red,
            ),
            const Divider(
              //  height: 2,
              color: Colors.white,
            ),
            listTileWidget(
                title: 'Language',
                subTitle: 'System Defaul',
                icons: Icons.language),
            const Divider(
              //  height: 2,
              color: Colors.white,
            ),
            listTileWidget(
                title: 'Change Currency',
                subTitle: '',
                icons: Icons.currency_bitcoin),
            const Divider(
              //  height: 2,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  Widget listTileWidget({String? title, String? subTitle, IconData? icons}) {
    return ListTile(
      leading: Icon(
        icons,
        size: 30,
        color: Colors.white,
      ),
      title: Text(
        title!,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      subtitle: Text(
        subTitle!,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
