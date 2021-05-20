import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:meta_trader/screen/home/home.dart';
import 'package:meta_trader/utils/Utils.dart';
import 'package:meta_trader/utils/image_constant.dart';
import 'package:meta_trader/widget/header.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {

  final scaffoldKey = new GlobalKey<ScaffoldState>();
  PanelController _pc = new PanelController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SlidingUpPanel(
        controller: _pc,
        isDraggable: true,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
        ),
        panel: Container(
          child: Home(),
        ),
        body: Container(
          color: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 20),
              Header(
                settingOnClick: ()=> Navigator.pushNamed(context, '/more'),
              ),
              Expanded(child: Container(
                child: CustomScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  slivers: [
                    itemCategory(6)
                  ],
                ),
              ))
            ],
          ),
        ),
        maxHeight: size.height - (AppBar().preferredSize.height+30),
        minHeight: size.height * 0.63,
      ),
    );
  }

  itemCategory(int total){
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 2.7;
    final double itemHeight = size.height / 18;
    return SliverPadding(
      key: scaffoldKey,
      padding: EdgeInsets.all(10.0),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: (itemWidth / itemHeight)),
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            String item = '';
            return InkWell(
              // onTap: ()=>Navigator.pushNamed(context, '/list_artikel', arguments: {'data':item}),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),//Utils.colorFromHex(item.background)
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    // Icon(Icons.card_giftcard_sharp, color: Colors.white, size: 30,),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Floating', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
                            SizedBox(height: 5),
                            Text('Demo', style: TextStyle(fontSize: 12, color: Colors.white)),
                          ],
                      ),
                    )),
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('72,960.68', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
                            SizedBox(height: 5),
                            Text('10,213.00', style: TextStyle(fontSize: 12, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          childCount: total,
        ),
      ),
    );
  }
}
