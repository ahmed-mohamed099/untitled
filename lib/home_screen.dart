

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: LayoutBuilder(builder: (context,constraints){
        if(constraints.maxWidth>600){
         return ItemGridview();
      }else{
          return ItemGridview();
        }
      }),
    );
  }
}
class ItemGridview extends StatelessWidget {
  const ItemGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            crossAxisCount: 2),

        itemBuilder: (context,index)=>
            Container(
              height: 248.51.h,
              width:173.32.w,
              color: Colors.blue,

            ),
      itemCount: 4,
    );
  }
}
