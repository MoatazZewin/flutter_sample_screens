import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  // const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        elevation: 0.0,
      backgroundColor: Colors.white,
      title:Row(
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage("https://image.tmdb.org/t/p/w780/uDYJS3n69bAST4GHt7MN0zwczIy.jpg"),
          ),
          SizedBox(
            width: 15.0,
          ),
          Text("Chats",
          style: TextStyle(
            color: Colors.black,
          ),),
        ],
      ),
      actions: [
        IconButton(onPressed: (){print("camera pressed");}, icon: CircleAvatar(radius: 15.0,
            backgroundColor: Colors.blue,
            child: Icon(Icons.camera_alt,color: Colors.white,size: 16.0,))),
        IconButton(onPressed: (){print("edit  pressed");}, icon: CircleAvatar(radius: 15.0,
            backgroundColor: Colors.blue,
            child: Icon(Icons.edit, color: Colors.white, size: 16.0,),)),
      ],
    ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(0.5)),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Search"),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 100.0,
                child: ListView.separated(
                   shrinkWrap: true,
                    itemBuilder: (context, index)=> buildStoryItem(),
                    separatorBuilder: (context, index)=>SizedBox(width: 20.0),
                    itemCount: 7,
                     scrollDirection: Axis.horizontal,),
              ),
              SizedBox(height: 20.0,),
              ListView.separated(
                 physics:  NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                  itemBuilder: (context, index)=> buildChatItem(),
                  separatorBuilder: (context, index)=>SizedBox(height: 20.0),
                  itemCount: 15)




            ],
          ),
        ),
      ),
    );

  }
  Widget buildChatItem()=> Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage("https://image.tmdb.org/t/p/w780/uDYJS3n69bAST4GHt7MN0zwczIy.jpg"),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(width: 10.0),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("moataz ahmed mohamed zewin ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0,),
            Row(
              children: [
                Expanded(
                    child: Text("hello my name is hady can we make an internship the alpa and the aomga",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                ),
                SizedBox(width: 5.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.0),
                  child: Container(
                    height: 7.0,
                    width: 7.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),

                ),
                Text("2:00 Am"),
              ],
            ),
          ],
        ),
      ),
    ],
  );
  Widget buildStoryItem()=>  Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(radius: 30.0,
              backgroundImage: NetworkImage('https://image.tmdb.org/t/p/w780/uDYJS3n69bAST4GHt7MN0zwczIy.jpg'),),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Text("moataz ahmed mohamed",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),

      ],
    ),
  );


}
