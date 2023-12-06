import 'package:flutter/material.dart';
import 'package:piano_ls/src/constants/colors.dart';
import 'package:piano_ls/src/constants/image_strings.dart';
import 'package:piano_ls/src/constants/texts.dart';
import 'package:piano_ls/src/repository/authentication/authentication_repository.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text(
        tAppName,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: tCardBgColor),
          child: IconButton(
              onPressed: () {
                AuthenticationRepository.instance.logout();
              },
              icon: const Image(image: AssetImage(tSplashImage))),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
