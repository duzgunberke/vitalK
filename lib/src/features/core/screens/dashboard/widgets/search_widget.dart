import 'package:flutter/material.dart';
import 'package:piano_ls/src/constants/texts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(border: Border(left: BorderSide(width: 4))),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tDashboardSearch,
              style: textTheme.displaySmall
                  ?.apply(color: Colors.grey.withOpacity(0.5)),
            ),
          ],
        ),
      ),
    );
  }
}
