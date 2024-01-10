import 'package:flutter/material.dart';
import 'package:trast/src/constants/colors.dart';
import 'package:trast/src/constants/image_strings.dart';
import 'package:trast/src/constants/sizes.dart';
import 'package:trast/src/features/authentications/screens/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(kDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(kWelcomeScreenImage), height: height * 0.6),
            Column(
              children: [
                Text(
                  "Start saving food with us",
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Our goals is to reduce food waste wherever they are so everybody gets a affordable food and making world a lil bit brighter",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginScreen()),);},
                          style: OutlinedButton.styleFrom(
                          foregroundColor: kSecondaryColor,
                          side: BorderSide(color: kSecondaryColor),
                          padding: EdgeInsets.symmetric(vertical: kButtonHeight)
                        ),
                        child: Text("Login".toUpperCase()))),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            elevation: 0,
                            foregroundColor: kWhiteColor,
                            backgroundColor: kSecondaryColor,
                            side: BorderSide(color: kSecondaryColor),
                            padding: EdgeInsets.symmetric(vertical: kButtonHeight)
                        ),
                        child: Text("Signup".toUpperCase())))
              ],
            )
          ],
        ),
      ),
    );
  }
}
