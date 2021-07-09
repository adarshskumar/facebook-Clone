import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: dulquer,
            displayStatus: true,
          ),
          Avatar(
            displayImage: balu,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammootty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: kunju,
            displayStatus: true,
          ),
          Avatar(
            displayImage: biju,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dulquer,
            displayStatus: true,
          ),
          Avatar(
            displayImage: balu,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammootty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: kunju,
            displayStatus: true,
          ),
          Avatar(
            displayImage: biju,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(
        left: 3,
        right: 8,
      ),
      child: OutlineButton.icon(
        shape: StadiumBorder(),
        borderSide: BorderSide(
          color: Colors.blue[100],
          width: 2,
        ),
        onPressed: () {
          print("Create Room Button Pressed");
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \nRoom",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
