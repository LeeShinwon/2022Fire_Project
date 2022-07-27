import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class preview extends StatefulWidget {
  const preview({Key? key}) : super(key: key);

  @override
  State<preview> createState() => _previewState();
}

class _previewState extends State<preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Image.asset("assets/Close-Square.png"),
          onPressed: () {},
        ),
        actions: [
          TextButton(onPressed: () {},
              child:
          Text("완료",
          style: TextStyle(
              fontFamily: "DoHyeon",
            fontSize: 20,
            color: Colors.amber
          ),
          )
          )
        ],
      ),

      body:
      Column(
        children: [
          // SizedBox(
          //   height: 50,
          // ),
          Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
              ),
              Text("preview",
              style: TextStyle(
                fontFamily: "DoHyeon",
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),

                  ),

            ),
          ),
          ),
          Center(
            child:
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 4.0,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(

                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)

                  ),
                  boxShadow: [BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0.5, 2), // changes position of shadow
                  ),]
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            IconButton(onPressed: (){}, 
                icon: Image.asset("assets/Camera.png"),
              iconSize: 65,
            ),
              IconButton(onPressed: () {},
                  icon: Image.asset("assets/gallery.png"),
                iconSize: 65,
              ),
              IconButton(onPressed: () {},
                  icon: Image.asset("assets/Edit-Square.png"),
                iconSize: 65,
              )
            ],
          )

        ],
      ),


    );
  }
}
