import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class SuggestionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;

  SuggestionCard({
    @required this.avatar,
    @required this.name,
    @required this.mutualFriends,
    @required this.addFriend,
    @required this.removeFriend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.grey[300],
            width: 1,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(name != null ? name : ""),
              subtitle: Text(mutualFriends != null ? mutualFriends : ""),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                    buttonAction: addFriend,
                    buttonIcon: Icons.account_box,
                    buttonIconColor: Colors.white,
                    buttonText: "Add Friend",
                    buttonTextColor: Colors.white,
                    buttonColor: Colors.blue,
                  ),
                  blankButton(
                    buttonAction: removeFriend,
                    buttonText: "Remove",
                    buttonTextColor: Colors.black,
                    buttonColor: Colors.grey[300],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget blankButton({
    @required void Function() buttonAction,
    @required String buttonText,
    @required Color buttonColor,
    @required Color buttonTextColor,
  }) {
    return FlatButton(
      onPressed: buttonAction,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget iconButton({
    @required void Function() buttonAction,
    @required IconData buttonIcon,
    @required Color buttonColor,
    @required Color buttonTextColor,
    @required Color buttonIconColor,
    @required String buttonText,
  }) {
    return FlatButton.icon(
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      label: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),
      color: buttonColor,
      onPressed: buttonAction,
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: avatar != null
            ? Image.asset(
                avatar,
                height: 250,
                fit: BoxFit.cover,
              )
            : SizedBox(),
      ),
    );
  }
}
