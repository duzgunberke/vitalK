import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.image,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  final String image, title, subTitle;


  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * 0.2,
        ),
        Text(title, style: Theme.of(context).textTheme.displayLarge),
        Text(subTitle, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}