import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
class StoryPageView extends StatelessWidget {
  String storyUrl;
  String avatarUrl;
  String storyQuote;
  Color storyQuoteColor;
  final _storyController=StoryController();
  StoryPageView({@required this.storyUrl,@required this.avatarUrl,@required this.storyQuoteColor,@required this.storyQuote});
  @override
  Widget build(BuildContext context) {
    final controller=StoryController();
    final List<StoryItem> storyItems=[
      StoryItem.pageImage(url:storyUrl, controller:_storyController,duration:Duration(seconds:6)),
      StoryItem.text(title:'If you want to live a happy life, tie it to a goal, not to people or things.', backgroundColor:Colors.blue,duration:Duration(seconds:6)),
      StoryItem.pageImage(url:avatarUrl, controller:_storyController,duration:Duration(seconds:6)),
    ];
    return Material(
      child:StoryView(storyItems:storyItems, controller:controller),
    );
  }
}
