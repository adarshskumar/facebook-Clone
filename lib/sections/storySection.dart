import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/storyCard.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: dulquer,
            story: dulquer,
            createStoryStatus: true,
            displayBorder: false,
          ),
          StoryCard(
            labelText: "Mohanlal",
            avatar: mohanlal,
            story: two,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Mammooty",
            avatar: mammootty,
            story: three,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Kunjus",
            avatar: kunju,
            story: four,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Biju Sopanam",
            avatar: balu,
            story: five,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Sanju Techy",
            avatar: sanju,
            story: one,
            createStoryStatus: false,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
