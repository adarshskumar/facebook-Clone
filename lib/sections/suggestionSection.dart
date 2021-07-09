import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/suggestionCard.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People You May Know"),
            trailing: IconButton(
              onPressed: () {
                print("More pressed");
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  name: "Adarsh S Kumar",
                  avatar: biju,
                  mutualFriends: "1 Mutual Friend",
                  addFriend: () {
                    print("Request FreindShip!!");
                  },
                  removeFriend: () {
                    print("Remove this person!!");
                  },
                ),
                SuggestionCard(
                  name: "BLIND Psycho",
                  avatar: psycho,
                  mutualFriends: "210 Mutual Friend",
                  addFriend: () {
                    print("Request FreindShip!!");
                  },
                  removeFriend: () {
                    print("Remove this person!!");
                  },
                ),
                SuggestionCard(
                  name: "Kaztro",
                  avatar: kaztro,
                  mutualFriends: "141 Mutual Friend",
                  addFriend: () {
                    print("Request FreindShip!!");
                  },
                  removeFriend: () {
                    print("Remove this person!!");
                  },
                ),
                SuggestionCard(
                  name: "Sanju Techy",
                  avatar: sanju,
                  mutualFriends: "311 Mutual Friend",
                  addFriend: () {
                    print("Request FreindShip!!");
                  },
                  removeFriend: () {
                    print("Remove this person!!");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
