import 'package:flutter/material.dart';
import 'package:flutter_chatty/theme.dart';
import 'package:flutter_chatty/widgets/chat_tile.dart';
import 'package:flutter_chatty/widgets/receiver_message.dart';
import 'package:flutter_chatty/widgets/sender_message.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 30,
          top: 50,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(48),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/icon.png',
              width: 55,
              height: 55,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jakarta Fair',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '14.209 Members',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff808BA2),
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/images/wa.png',
              width: 55,
              height: 55,
              fit: BoxFit.fill,
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: ListView(
            children: [
              ReceiverMessage(
                imageUrl: 'assets/images/pic1.png',
                text: 'How are u guys ? ',
                time: '12:00',
              ),
              ReceiverMessage(
                imageUrl: 'assets/images/pic4.png',
                text: 'Am Fine Dude ',
                time: '12:01',
              ),
              SenderMessage(
                imageUrl: 'assets/images/pic1.png',
                text: 'How About u Renata ? ',
                time: '12:01',
              ),
              ReceiverMessage(
                imageUrl: 'assets/images/pic2.png',
                text: 'Im Good ',
                time: '12:06',
              ),
              SenderMessage(
                imageUrl: 'assets/images/pic1.png',
                text: 'How About u Renata ? ',
                time: '12:01',
              ),
              ReceiverMessage(
                imageUrl: 'assets/images/pic2.png',
                text: 'Im Good ',
                time: '12:06',
              ),
              SenderMessage(
                imageUrl: 'assets/images/pic1.png',
                text: 'How About u Renata ? ',
                time: '12:01',
              ),
              ReceiverMessage(
                imageUrl: 'assets/images/pic2.png',
                text: 'Im Good ',
                time: '12:06',
              ),
              SenderMessage(
                imageUrl: 'assets/images/pic1.png',
                text: 'How About u Renata ? ',
                time: '12:01',
              ),
              ReceiverMessage(
                imageUrl: 'assets/images/pic2.png',
                text: 'Im Good ',
                time: '12:06',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatField() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Type Messages',
                  hintStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('tapped');
              },
              child: Image.asset(
                'assets/images/send.png',
                width: 35,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      floatingActionButton: chatField(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
