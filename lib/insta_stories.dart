import 'package:flutter/material.dart';
import 'package:story_feature_app/story_data.dart';
import 'package:story_feature_app/story_page_view.dart';
class InstaStories extends StatelessWidget {
  List<StoryData> storiesData=[
    StoryData(
        userName:'John Wick',
        avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcg4Y51XjQ-zSf87X4nUPTQzsF83eFdZswTg&usqp=CAU',
        storyUrl: 'https://www.thoughtco.com/thmb/l6mjGqVnMW8z53UcD86DE16ZG5c=/2576x2576/smart/filters:no_upscale()/sunrise-at-taj-mahal--agra--uttar-pradash--india-583682538-5b91840bc9e77c0050bdc67b.jpg',
      storyQuote:'If you want to live a happy life, tie it to a goal, not to people or things.',
      storyQuoteColor:Colors.black,
    ),
    StoryData(
        userName:'Rita Corden',
        avatarUrl: 'https://pixinvent.com/materialize-material-design-admin-template/app-assets/images/user/12.jpg',
        storyUrl: 'https://d1bv4heaa2n05k.cloudfront.net/posts%2FBlogPost24769%2F1573555874883-shutterstock_1251162775.jpg',
      storyQuote: 'Everything you can imagine is real.',
      storyQuoteColor:Colors.blue,
    ),
    StoryData(
        userName:'Steven Gerrard',
        avatarUrl: 'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg',
        storyUrl: 'https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      storyQuote:'Problems are not stop signs, they are guidelines. ',
      storyQuoteColor:Colors.red,
    ),
    StoryData(
        userName:'Lisa Franco',
        avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaH95MYy4lQdqXKOR2FCcv2KIHRhz7rCj4N8VKm4zbQmfaOU7lU_m_ykDR6sWGMMEKof8&usqp=CAU',
        storyUrl: 'https://i.ytimg.com/vi/_adJBzQgfsg/maxresdefault.jpg',
      storyQuote:'If you tell the truth you don’t have to remember anything.',
      storyQuoteColor:Colors.yellow,
    ),
    StoryData(
        userName:'Ian Bishop',
        avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVSq9LTCYPBnJM6zLdZhgRXQabSNAA0gH9MapKOKYBMDBC_Jpk8WgN9LF8eyXsMkBvAuI&usqp=CAU',
        storyUrl: 'https://healthyhappyimpactful.com/wp-content/uploads/2020/04/meals-dinner.jpg',
      storyQuote:'Hate comes from intimidation, love comes from appreciation.',
      storyQuoteColor:Colors.purple,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(12.0),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child:  Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child:  ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:storiesData.length,
                itemBuilder: (context, index) =>  Column(
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>StoryPageView(storyUrl:storiesData[index].storyUrl,avatarUrl:storiesData[index].avatarUrl,)));
                      },
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: <Widget>[
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration:  BoxDecoration(
                              borderRadius:BorderRadius.circular(50),
                              border:index==0?Border.all(color:Colors.white):Border.all(color:Colors.red,width:2.0),
                              image:  DecorationImage(
                                  fit: BoxFit.fill,
                                  image:  NetworkImage(storiesData[index].avatarUrl)),
              ),
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
                          index == 0 ? Positioned(right: 10.0, child:  CircleAvatar(backgroundColor: Colors.blueAccent, radius: 10.0, child: new Icon(Icons.add, size: 14.0, color: Colors.white,),)) :  Container(),
          ],
        ),
                    ),
                    SizedBox(height:3.0),
                    Text(storiesData[index].userName,style:TextStyle(fontSize:11),)
                  ],
                ),
      ),
    ),
    )
        ],
      ),
    );
  }
}