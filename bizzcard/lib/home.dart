import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class biz extends StatefulWidget {
  const biz({Key? key}) : super(key: key);

  @override
  State<biz> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<biz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("BizzCard",style: TextStyle(fontSize: 25),),
        centerTitle: true,
      ),

      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            getCard(),
            getAvator()
          ],
        ),
      ),




    );
    
  }
  
   Container getCard() {
    return Container(
      
      height: 200,
      width: 300,
      margin: EdgeInsets.all(50),

      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(14.5),
        
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Name:Saidul Islam"),
          Text("Phone:01934523832"),
          Text("Address: Dhaka"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Icon(Icons.mail),
                Text("Email:saidul@gmail.com")

            ],
          )

        ],
      ),

    );


  }
  
  Container getAvator() {

    return Container(
      height: 100,
      width: 100,
       decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        image: DecorationImage(image:NetworkImage("https://picsum.photos/200/300.jpg"),fit: BoxFit.cover)
        
      ),



    );

  }
}