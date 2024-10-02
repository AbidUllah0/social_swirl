import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_swirl_app/widgets/custom_text.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(text: 'About Us'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UPCOMING LEADING',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'COMPANY IN PAKISTAN',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/map.png',
                            width: MediaQuery.of(context).size.width * 0.4,
                          ),
                          Positioned(
                            left: 20,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), // Shadow color
                                    spreadRadius: 2, // Spread radius
                                    blurRadius: 5, // Blur radius
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/social_swirl.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const CustomText(
                  text: 'From Were We Start',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              const CustomText(
                text: 'Social Swirl, founded by Danial Khan in'
                    '2022, \nis a dynamic software company based in the'
                    'United \nKingdom. Specializing in innovative software and, media\n'
                    'solutions we focus on new creations to help businesses and\n individuals'
                    'optimize their online presence and achieve their goals.\n Our mission is to provide high'
                    'quality, personalized, reliable, and affordable services. With an experienced team dedicated to'
                    ', we aim to build lasting client relationships based on trust, transparency, and open communication.',
                textAlign: TextAlign.center,
                fontSize: 10,
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                    child: Image.asset('assets/images/social_swirl.png')),
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Colors.black, width: 0.1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Message From CEO',
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          CustomText(
                            text:
                                "The company's mission is to provide\n high-quality software solutions and\n media that helpe buisness and individuals\n optimise their online presence and achieve\n their goals. With a team of experienced\n professionals and a commitment to exvellence.\n Social Swirl is dedicated to providing\n personalised reliable, and affordable\n services to its clients, AIMS Our missiom\n is to provide high-quality software solutions\n and media services that help buisness and individuals\n optimise their online presence and achive their goals",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            fontSize: 8,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        'assets/images/social_swirl.png',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
