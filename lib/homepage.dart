import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xff4622fe),
          appBar: AppBar(
            backgroundColor: Color(0xff4622fe),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
            title: Text(
              'Chats',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 44),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(9),
                child: Text('Favuorite Contacts',
                    style: TextStyle(color: Colors.white, fontSize: 23)),
              ),
              SizedBox(
                height: 110,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FMohamed_Aboutrika&psig=AOvVaw2COgmvk-9HZvQsJDV7jlE7&ust=1705790502144000&source=images&cd=vfe&opi=89978449&ved=2ahUKEwjA0Ob4wuqDAxWdAfsDHQrsDAYQr4kDegQIARB8'),
                            ),
                          ),
                          Text(
                            'treka',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: 20),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(37),
                        topRight: Radius.circular(37)),
                    color: Colors.white),
                child: ListView.separated(
                    itemBuilder: (context, index) {return
                      ListTile(
                        leading: CircleAvatar(radius: 30,
                       backgroundImage:AssetImage('emam/assets.jpeg')),
                        title:Text('abo treka') ,
                        subtitle: Text('alahly'),
                      );
                    },
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: 33),
              ))
            ],
          )),
    );
  }
}
