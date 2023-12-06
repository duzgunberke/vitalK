import 'package:flutter/material.dart';

import 'package:piano_ls/src/constants/sizes.dart';
import 'package:piano_ls/src/constants/texts.dart';
import 'package:piano_ls/src/features/core/screens/dashboard/widgets/dashboard_appbar_widget.dart';
import 'package:piano_ls/src/features/core/screens/dashboard/widgets/search_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tDashboardTitle, style: textTheme.bodyMedium),
              Text(tDashboardHeading, style: textTheme.displayMedium),
              const SizedBox(
                height: tDashboardPadding,
              ),
              SearchWidget(textTheme: textTheme),
              const SizedBox(
                height: tDashboardPadding,
              ),
              const SizedBox(
                height: tDashboardPadding,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
