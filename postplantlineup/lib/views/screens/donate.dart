import 'package:flutter/material.dart';
import '../utils/banner_ad_widget.dart';
import '../utils/colors.dart';

class DonationPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const DonationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Donate',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: CustomColors.primaryColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: CustomColors.primaryColor,
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Make a Donation',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.06,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.textColor,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        Text(
                          'Hello, you can support us by making a donation.',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.04,
                            color: CustomColors.textColor,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        ElevatedButton(
                          onPressed: () {
                            // Add necessary navigation code to go to the donation page
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.accentColor,
                            minimumSize: Size(screenSize.width * 0.8, screenSize.height * 0.06),
                          ),
                          child: Text(
                            'Make a Donation',
                            style: TextStyle(
                              fontSize: screenSize.width * 0.04,
                              fontWeight: FontWeight.bold,
                              color: CustomColors.textColor,
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        Text(
                          'How Your Donation Helps?',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.textColor,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01),
                        Text(
                          'By donating, you can help us improve our project and provide better service.',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.035,
                            color: CustomColors.textColor,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const BannerAdWidget(), // Placed at the end of the Column
        ],
      ),
    );

  }
}
