import 'package:flutter_test/flutter_test.dart';
import 'package:locationmaster/location_master.dart';

void main() {
  testWidgets('Test if app exists', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const LocationMaster());
  });
}
