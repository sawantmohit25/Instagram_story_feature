import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:story_feature_app/insta_stories.dart';
class InstaHomePage extends StatefulWidget {
  @override
  _InstaHomePageState createState() => _InstaHomePageState();
}

class _InstaHomePageState extends State<InstaHomePage> {

  final appBar=AppBar(
    backgroundColor:Color(0xfff8faf8),
    centerTitle:true,
    elevation:1.0,
    leading:Icon(Icons.add_box_outlined,size:30,color:Colors.black,),
    title: SizedBox(
        height: 35.0, child: Image.asset("assets/insta_logo.png")),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(0,12,12,0),
        child:FaIcon(FontAwesomeIcons.facebookMessenger,color:Colors.black,),
      )
    ],

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body:SingleChildScrollView(child: InstaBody()),
      bottomNavigationBar:Container(
        height:50,
        alignment:Alignment.center,
        child: BottomAppBar(
          child:Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
               IconButton(
                icon: Icon(
                  Icons.home,
                ),
                onPressed: () {},
              ),
               IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: (){},
              ),
               IconButton(
                icon:FaIcon(FontAwesomeIcons.video),
                onPressed:(){},
              ),
               IconButton(
                icon: Icon(
                  Icons.favorite_border_outlined,
                ),
                onPressed:(){},
              ),
              Container(
                height: 30.0,
                width: 30.0,
                decoration:BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcg4Y51XjQ-zSf87X4nUPTQzsF83eFdZswTg&usqp=CAU")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InstaBody extends StatefulWidget {
  @override
  _InstaBodyState createState() => _InstaBodyState();
}

class _InstaBodyState extends State<InstaBody> {
  bool onPressed = false;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(height:130,child: InstaStories()),
        Divider(height:2.0,thickness:1.0,),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                   Container(
                    height: 40.0,
                    width: 40.0,
                    decoration:BoxDecoration(
                      shape: BoxShape.circle,
                      image:DecorationImage(
                          fit: BoxFit.fill,
                          image:NetworkImage(
                              "https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg")),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Steven Gerrard",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed:(){},
              )
            ],
          ),
        ),
        Image.network(
          "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon:Icon(onPressed
                        ? Icons.favorite
                        : FontAwesomeIcons.heart),
                    color: onPressed ? Colors.red : Colors.black,
                    onPressed: () {
                      setState(() {
                        onPressed = !onPressed;
                      });
                    },
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    FontAwesomeIcons.comment,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(FontAwesomeIcons.paperPlane),
                ],
              ),
              Icon(FontAwesomeIcons.bookmark)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20,0,12,0),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.start,
            children: [
              Text(
                "Liked by Rita Corden,Lisa and 278,529 others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(height:3.0,),
        Padding(
          padding:EdgeInsets.fromLTRB(20,0,0,0),
          child:Row(
            mainAxisAlignment:MainAxisAlignment.start,
            children: [
              RichText(text: TextSpan(children: [
                TextSpan(text: 'Steven Gerrard ', style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize:15)),
                TextSpan(text: ' Eat Sleep Coffee Repeat.',style:TextStyle(color:Colors.black)),
              ]))
            ],
          ),
        ),
        SizedBox(height:3.0,),
        Padding(
          padding:EdgeInsets.fromLTRB(20,0,0,0),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.start,
            children: [
              Text('View all 25 comments',style:TextStyle(color:Colors.grey)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 3.0, 0.0,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
               Container(
                height: 30.0,
                width: 30.0,
                decoration:BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg")),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child:TextField(
                  decoration:InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add a comment...",
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:20),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("1 Day Ago", style: TextStyle(color: Colors.grey,fontSize:10)),
            ],
          ),
        )
      ],
    );
  }
}
