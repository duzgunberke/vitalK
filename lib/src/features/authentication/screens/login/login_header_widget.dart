import 'package:flutter/material.dart';
import 'package:piano_ls/src/constants/image_strings.dart';
import 'package:piano_ls/src/constants/texts.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
      Image(
        image: const AssetImage(loginScreenImage),
        height: size.height * 0.2,
      ),
      Text(tLoginTitle, style: Theme.of(context).textTheme.displayLarge),
      Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyLarge),
    ],);
  }
}
