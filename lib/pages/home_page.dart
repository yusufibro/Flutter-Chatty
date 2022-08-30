import 'package:flutter/material.dart';
import 'package:flutter_chatty/pages/message.dart';
import 'package:flutter_chatty/theme.dart';
import 'package:flutter_chatty/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePage(),),);
        },
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/pic.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Shabrina Carpenteur',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Influencer',
                  style: TextStyle(
                    color: lightBlue,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/pic1.png',
                        name: 'Arnold',
                        text: 'Sorry, Youre not my friends',
                        time: 'Now',
                        unRead: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/pic2.png',
                        name: 'Renata',
                        text: 'Make Money Not Friends',
                        time: '2.24',
                        unRead: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/icon.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone ca...',
                        time: '11.11',
                        unRead: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/icon1.png',
                        name: 'Chef Indonesia',
                        text: 'Here here we can go...',
                        time: '2.40',
                        unRead: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/icon2.png',
                        name: 'Lawak Indonesia',
                        text: 'The car which does not...',
                        time: '4.20',
                        unRead: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/icon1.png',
                        name: 'Chef Indonesia',
                        text: 'Here here we can go...',
                        time: '2.40',
                        unRead: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/icon.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone ca...',
                        time: '11.11',
                        unRead: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/icon1.png',
                        name: 'Chef Indonesia',
                        text: 'Here here we can go...',
                        time: '2.40',
                        unRead: true,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
