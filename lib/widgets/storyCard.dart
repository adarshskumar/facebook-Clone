import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/circularButton.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;

  StoryCard({
    @required this.labelText,
    @required this.story,
    @required this.avatar,
    this.createStoryStatus = false,
    this.displayBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 5,
        right: 5,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 5,
              left: 5,
              child: createStoryStatus
                  ? CircularButton(
                      iconColor: Colors.blue,
                      buttonIcon: Icons.add,
                      buttonAction: () {
                        print("Create New Story !! ");
                      },
                    )
                  : Avatar(
                      displayImage: avatar,
                      displayStatus: false,
                      displayBorder: displayBorder,
                      width: 35,
                      height: 35,
                    )),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(labelText != null ? labelText : "N/A",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ],
      ),
    );
  }
}
