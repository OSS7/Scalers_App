import 'package:flutter/material.dart';
import 'package:scalers_test/core/widgets/custom_bottom_sheet.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomSheet(),
      body: Center(
        child: Text(
          'Coming soon',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
