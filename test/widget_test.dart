import 'package:flutter_test/flutter_test.dart';
import 'package:lim_lab_act_2/main.dart';

void main() {
  testWidgets('Water Tracker screen test', (WidgetTester tester) async {
    await tester.pumpWidget(const WaterTrackerApp());

    expect(find.text('Water Tracker'), findsOneWidget);
    expect(find.text('Stay Hydrated!'), findsOneWidget);
    expect(find.text('Daily Water Goal'), findsOneWidget);
    expect(find.text('8'), findsOneWidget);
    expect(find.text('Drink water regularly'), findsOneWidget);
    expect(find.text('Bring your water bottle'), findsOneWidget);
  });
}
