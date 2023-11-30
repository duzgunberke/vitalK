import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piano_ls/src/constants/image_strings.dart';
import 'package:piano_ls/src/constants/sizes.dart';
import 'package:piano_ls/src/constants/texts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: const AssetImage(tSplashImage),height:height * 0.6,),
            Column(
              children: [
                Text(tWelcomeTitle,style: Theme.of(context).textTheme.displaySmall,),
                Text(tWelcomeSubTitle,style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.center,),
              ],
            ),
            Row(
              children: [
                Expanded(child: OutlinedButton(onPressed: (){}, child: Text(tLogin.toUpperCase()))),
                
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text(tSignup),))
              ],
            )
          ],
        ),
      ) ,
    );
  }
}
