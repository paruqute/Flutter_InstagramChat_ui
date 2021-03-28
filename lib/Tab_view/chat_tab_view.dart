import 'package:flutter/material.dart';
import 'package:flutter_instachat_app/model/chat_model.dart';
class ChatTab extends StatefulWidget {
  @override
  _ChatTabState createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 30,
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor:Colors.white10,
                hintText: "Search",
                hintStyle: TextStyle(color:Colors.white54),
                prefixIcon: Icon(Icons.search,color: Colors.white54,),

                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),

              ),

            ),
          ),
          Flexible(child: ListView.builder(
            shrinkWrap: true,
            itemCount: values.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(values[index].dpurl),
                ),
                title: Text(values[index].name,style: TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.bold
                ),),
                subtitle: Text(values[index].time,style: TextStyle(
                    color: Colors.white54
                ),),
                trailing: Icon(Icons.camera_alt_outlined,color: Colors.white54,),
              );
            },))
        ],
      ),
    );
  }
}
