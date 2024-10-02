// import 'package:flutter/material.dart';
// import 'package:social_swirl_app/widgets/custom_text.dart';
//
// import '../../models/services_model.dart';
//
// class ServicesScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<ServicesModel> servicesList = [
//       ServicesModel(
//         name: 'Web Development',
//         description:
//             'We create stunning and responsive websites to help you establish a strong online presence.',
//         image: 'assets/images/web_development.png',
//       ),
//       ServicesModel(
//         name: 'Mobile App Development',
//         description:
//             'We develop high-quality mobile applications for both iOS and Android platforms.',
//         image: 'assets/images/mobile_app.png',
//       ),
//       ServicesModel(
//         name: 'Digital Marketing',
//         description:
//             'Our digital marketing strategies will help you reach your target audience effectively.',
//         image: 'assets/images/digital_marketing.png',
//       ),
//       ServicesModel(
//         name: 'UI/UX Design',
//         description:
//             'We design user-friendly interfaces that enhance user experience and engagement.',
//         image: 'assets/images/uiux_design.png',
//       ),
//       ServicesModel(
//         name: 'Content Creation',
//         description:
//             'We produce high-quality content that resonates with your audience and boosts your brand.',
//         image: 'assets/images/content_creation.png',
//       ),
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         title: const CustomText(text: 'Our Services'),
//       ),
//       body: const SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CustomText(
//                 text: 'What We Offer',
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold),
//             SizedBox(height: 20),
//             Card()
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:social_swirl_app/widgets/custom_button.dart';
import 'package:social_swirl_app/widgets/custom_text.dart';

import '../../models/services_model.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ServicesModel> servicesList = [
      ServicesModel(
        name: 'Website Design and  Development',
        description:
            'Unlock your online potential with captivating websites tailored to your unique vision and business needs.',
        image: 'assets/images/wdd.png',
      ),
      ServicesModel(
        name: 'Buisness websites',
        description:
            'Power up your business with custom-designed websites engineered for success in the digital arena',
        image: 'assets/images/business_website.png',
      ),
      ServicesModel(
        name: 'SEO Optimization',
        description:
            'Propel your website to the top of search engine results and amplify your online visibility with our expert SEO strategies.',
        image: 'assets/images/seo.png',
      ),
      ServicesModel(
        name: 'Digital Marketing',
        description:
            'Expand your digital footprint and connect with your target audience through strategic digital marketing campaigns.',
        image: 'assets/images/digital.png',
      ),
      ServicesModel(
        name: 'Consulting Services',
        description:
            'Gain invaluable insights and expert guidance to steer your business towards sustainable success in the digital age.',
        image: 'assets/images/consulting.png',
      ),
      ServicesModel(
        name: 'E-Commerce Solutions',
        description:
            'Revolutionize your online retail experience with robust e-commerce solutions tailored to fuel your growth and profitability.',
        image: 'assets/images/ecommerse.png',
      ),
      ServicesModel(
        name: 'Designing',
        description:
            'Make a lasting impression with captivating designs that resonate with your audience and elevate your brands identity.',
        image: 'assets/images/designing.png',
      ),
      ServicesModel(
        name: 'CRM Solution',
        description:
            'Transform your customer relationships and drive business growth with our intuitive CRM solutions designed to streamline your sales and support processes.',
        image: 'assets/images/crm.png',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(text: 'Our Services'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: servicesList.length,
          itemBuilder: (context, index) {
            final service = servicesList[index];
            return Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(color: Colors.black, width: 0.1),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Image.asset(
                      service.image,
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                    CustomText(
                      text: service.name,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 4),
                    CustomText(
                      text: service.description,
                      fontSize: 12,
                      color: Colors.grey[700],
                      maxLines: null,
                      overflow: TextOverflow.visible,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(buttonText: 'Get a Quote'),
                        CustomButton(buttonText: 'Read More'),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
