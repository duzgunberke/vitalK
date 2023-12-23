import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:piano_ls/src/constants/colors.dart';
import 'package:piano_ls/src/constants/image_strings.dart';
import 'package:piano_ls/src/constants/sizes.dart';
import 'package:piano_ls/src/constants/texts.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          tEditProfile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(image: AssetImage(tSplashImage)),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor),
                      child: const Icon(LineAwesomeIcons.camera,
                          color: Colors.black, size: 20),
                    ))
              ]),
              const SizedBox(
                height: 50,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text(tFullName),
                        prefixIcon: Icon(Icons.person_outline_rounded)),
                  ),
                  const SizedBox(
                    height: tFormHeight - 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text(tEmail),
                        prefixIcon: Icon(Icons.email_outlined)),
                  ),
                  const SizedBox(
                    height: tFormHeight - 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text(tPhoneNo), prefixIcon: Icon(Icons.numbers)),
                  ),
                  const SizedBox(
                    height: tFormHeight - 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text(tPassword),
                        prefixIcon: Icon(Icons.password_sharp)),
                  ),
                  const SizedBox(
                    height: tFormHeight,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () =>
                          Get.to(() => const UpdateProfileScreen()),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: tPrimaryColor,
                          side: BorderSide.none,
                          shape: const StadiumBorder()),
                      child: const Text(
                        tEditProfile,
                        style: TextStyle(color: tDarkColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: tFormHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text.rich(TextSpan(
                          text: tJoined,
                          style: TextStyle(fontSize: 12),
                          children: [
                            TextSpan(
                                text: tJoinedAt,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12))
                          ])),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              foregroundColor: Colors.red,
                              shape: StadiumBorder(),
                              side: BorderSide.none,
                              backgroundColor:
                                  Colors.redAccent.withOpacity(0.1)),
                          child: const Text(tDelete))
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
