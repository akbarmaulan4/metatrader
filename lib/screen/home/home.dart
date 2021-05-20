import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey.shade500,
                ),
                width: size.width * 0.40,
                height: 3,
              ),
            ),
            SizedBox(height: 20),
            buble(),
            SizedBox(height: 10),
            card(),
            SizedBox(height: 15),
            Text('Alert', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            menuCategory(background: Colors.green.shade100, label: 'Account Low Margin <100%',
                icon: Icon(CupertinoIcons.waveform_path_ecg, color: Colors.red,)),
            menuCategory(background: Colors.red.shade100, label: 'VPS Hight CPU! Please Check',
                icon: Icon(CupertinoIcons.waveform_path_ecg, color: Colors.red,)),
            menuCategory(background: Colors.red.shade100, label: 'VPS Offline! CHeck now',
                icon: Icon(CupertinoIcons.waveform_path_ecg, color: Colors.red,)),
            menuCategory(background: Colors.orange.shade100, label: 'Invoice overdue!',
                icon: Icon(CupertinoIcons.waveform_path_ecg, color: Colors.red,)),
            SizedBox(height: 15),
            Text('Transaction Log', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 15),
            itemLog(),
            itemLog(),
            itemLog(),
          ],
        ),
      ),
    );
  }

  buble(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                child:  Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue
                      ),
                      child: Center(
                        child: Text('1012', style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text('Account', style: TextStyle(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.bold))
                  ],
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                child:  Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue
                      ),
                      child: Center(
                        child: Text('102', style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text('VPS', style: TextStyle(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.bold))
                  ],
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                child:  Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue
                      ),
                      child: Center(
                        child: Text('602K', style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text('Affiliate', style: TextStyle(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.bold))
                  ],
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                child:  Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue
                      ),
                      child: Center(
                        child: Text('2,236K', style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text('Invoice', style: TextStyle(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.bold))
                  ],
                ),
              )),
        ],
      ),
    );
  }

  card(){
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.blue
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Get paid for Referring Customers to Us', style: TextStyle(color: Colors.white),),
          SizedBox(height: 5),
          Row(
            children: [
              Text('10%', style: TextStyle(fontSize: 40, color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
              SizedBox(width: 10),
              Text('Credit Balance\nEvery Order\n& Renewal', style: TextStyle(color: Colors.white),),
              SizedBox(width: 15),
              Icon(Icons.account_balance_wallet_rounded, size: 60, color: Colors.orangeAccent,)
            ],
          )
        ],
      ),
    );
  }
  
  menuCategory({Color background, String label, Icon icon}){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: background
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          icon,
          SizedBox(width: 10),
          Text(label, style: TextStyle(color: Colors.red),)
        ],
      ),
    );
  }

  itemLog(){
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('95373235414-Okky Dua'),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Text('GBPAUD,', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Buy 0.01', style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                    SizedBox(height: 2),
                    Text('0,77144-->0,77212'),
                  ],
                ),
              )),
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('ID-Jagoan...11110'),
                      SizedBox(height: 2),
                      Text('2020.12.14 14:14'),
                      SizedBox(height: 2),
                      Text('0,43'),
                    ],
                  ),
              )),
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
