import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Function settingOnClick;
  Header({this.settingOnClick});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2)
            ),
            child: ClipOval(
              child: CachedNetworkImage(
                placeholder: (context, url) => Center(
                  // child: Image.asset(ImageConstant.placeHolderElsimil),
                ),
                imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2U_L6KJsOv1ZX5v-JScbk8ZO_ZEe5CwOvmA&usqp=CAU',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Text('Nama User', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
          Expanded(child: InkWell(
            onTap: ()=>settingOnClick(),
            child: Container(
              alignment: Alignment.centerRight,
              child: Icon(Icons.settings, color: Colors.white,),
            ),
          ))
        ],
      ),
    );
  }
}
