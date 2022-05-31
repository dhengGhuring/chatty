import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_tiles.dart';
import 'package:chatty/widgets/group_tiles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profile.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sabrina Carpenter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Travel Freelancer',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: tranparanceBlueColor),
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
                      imageUrl: 'assets/images/fr1.png',
                      name: 'Joshuer',
                      text: "Sorry, you're not my ty...",
                      time: 'now',
                      unread: true,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/fr2.png',
                      name: 'Gabriella',
                      text: "I saw it clearly and mig...",
                      time: '2.30',
                      unread: false,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Groups',
                      style: titleTextStyle,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GroupTile(
                      imageUrl: 'assets/images/grub1.png',
                      name: 'Jakarta Fair',
                      text: 'Why does everyone ca...',
                      time: '11.11',
                    ),
                    GroupTile(
                        imageUrl: 'assets/images/grub2.png',
                        name: 'Angga',
                        text: 'Here here we can go..',
                        time: '7.11'),
                    GroupTile(
                        imageUrl: 'assets/images/grub3.png',
                        name: 'Bentley',
                        text: 'The car which does not...',
                        time: '7.11'),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
