import 'package:flutter/material.dart';
import 'package:flutter_instachat_app/Tab_view/chat_tab_view.dart';
import 'package:flutter_instachat_app/Tab_view/room_tab_view.dart';

void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
          leading:Icon(Icons.arrow_back_outlined,color: Colors.white,),
            title: Text("Chats",style: TextStyle(
              color: Colors.white
            ),),
            actions: [
              IconButton(icon: Icon(Icons.videocam_outlined,color: Colors.white,),
                  onPressed: (){}),
              IconButton(icon: Icon(Icons.edit,color: Colors.white,),
                  onPressed: (){})
                          ],
            bottom: TabBar(
              indicatorColor: Colors.white,

              tabs: [
                Tab(text: "Chats",),
                Tab(text: "Rooms",),
              ],
            ),
          ),
          body: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [

                Expanded(
                  child: TabBarView(children: [
                    ChatTab(),
                    RoomTab(),
                  ]),
                ),

              ],
            ),
          ),

        ),
      ),
    );
  }
}
