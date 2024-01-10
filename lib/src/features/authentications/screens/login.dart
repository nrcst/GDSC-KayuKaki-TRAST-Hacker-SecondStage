import 'package:flutter/material.dart';
import 'package:trast/src/constants/image_strings.dart';
import 'package:trast/src/constants/sizes.dart';
import 'package:trast/src/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
        padding: const EdgeInsets.all(kDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage(kLoginScreenImage),
              height: size.height * 0.2,
            ),
            Text(kLoginText, style: Theme.of(context).textTheme.headlineSmall),
            Text(kLoginTextSub, style: Theme.of(context).textTheme.bodySmall),
            Form(
                child: Container(
              padding: EdgeInsets.symmetric(vertical: kFormHeight - 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        labelText: kLoginTextUsrnm,
                        hintText: kLoginTextUsrnm,
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(height: kFormHeight - 20),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.fingerprint),
                        labelText: kLoginTextPwd,
                        hintText: kLoginTextPwd,
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.remove_red_eye_sharp),
                        )),
                  ),
                  SizedBox(height: kFormHeight - 20),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: Text(kLoginTextForgor)))
                ],
              ),
            ))
          ],
        ),
      ))),
    );
  }
}
