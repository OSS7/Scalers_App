
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:scalers_test/core/config/injectable_cofig.dart';
import 'package:scalers_test/data/models/job_model.dart';

import 'package:scalers_test/main.dart';
import 'package:scalers_test/presentation/jobs/jobs_view.dart';
import 'package:scalers_test/presentation/jobs/widgets/jobs_body.dart';

void main() {
  configureDependencies();
  testWidgets('Jobs list should display jobs', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: JobsView()));

    expect(find.text('Jobs'), findsNWidgets(2));
  });
}
