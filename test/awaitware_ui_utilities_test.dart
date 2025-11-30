import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';

void main() {
  group('Spacing Extensions', () {
    testWidgets('p4 adds 16px padding', (WidgetTester tester) async {
      final widget = Container().p4();
      expect(widget, isA<Padding>());
      final padding = widget as Padding;
      expect(padding.padding, const EdgeInsets.all(16));
    });

    testWidgets('m4 adds 16px margin', (WidgetTester tester) async {
      final widget = Container().m4();
      expect(widget, isA<Container>());
      final container = widget as Container;
      expect(container.margin, const EdgeInsets.all(16));
    });
  });

  group('Color Extensions', () {
    testWidgets('bgBlue600 sets blue background', (WidgetTester tester) async {
      final widget = Container().bgBlue600();
      expect(widget, isA<Container>());
      final container = widget as Container;
      expect(container.color, Colors.blue.shade600);
    });
  });

  group('Typography Extensions', () {
    test('text2Xl sets font size to 24', () {
      final text = const Text('Hello').text2Xl();
      expect(text.style?.fontSize, 24);
    });

    test('fontBold sets font weight to 700', () {
      final text = const Text('Hello').fontBold();
      expect(text.style?.fontWeight, FontWeight.w700);
    });

    test('textCenter sets text alignment', () {
      final text = const Text('Hello').textCenter();
      expect(text.textAlign, TextAlign.center);
    });
  });

  group('Sizing Extensions', () {
    testWidgets('w64 sets width to 256', (WidgetTester tester) async {
      final widget = Container().w64();
      expect(widget, isA<SizedBox>());
      final sizedBox = widget as SizedBox;
      expect(sizedBox.width, 256);
    });

    testWidgets('h64 sets height to 256', (WidgetTester tester) async {
      final widget = Container().h64();
      expect(widget, isA<SizedBox>());
      final sizedBox = widget as SizedBox;
      expect(sizedBox.height, 256);
    });
  });

  group('Layout Extensions', () {
    testWidgets('center wraps in Center widget', (WidgetTester tester) async {
      final widget = Container().center();
      expect(widget, isA<Center>());
    });

    testWidgets('expanded wraps in Expanded widget',
        (WidgetTester tester) async {
      final widget = Container().expanded();
      expect(widget, isA<Expanded>());
    });
  });

  group('Flex Extensions', () {
    testWidgets('row creates Row widget', (WidgetTester tester) async {
      final widget = [Container(), Container()].row();
      expect(widget, isA<Row>());
      final row = widget as Row;
      expect(row.children.length, 2);
    });

    testWidgets('column creates Column widget', (WidgetTester tester) async {
      final widget = [Container(), Container()].column();
      expect(widget, isA<Column>());
      final column = widget as Column;
      expect(column.children.length, 2);
    });

    test('gap adds spacing between items', () {
      final widgets = [Container(), Container(), Container()];
      final result = widgets.gap(8);
      expect(result.length, 5); // 3 widgets + 2 gaps
    });
  });

  group('Visibility Extensions', () {
    testWidgets('show makes widget visible', (WidgetTester tester) async {
      final widget = Container().show(true);
      expect(widget, isA<Visibility>());
      final visibility = widget as Visibility;
      expect(visibility.visible, true);
    });

    testWidgets('hide makes widget invisible', (WidgetTester tester) async {
      final widget = Container().hide(true);
      expect(widget, isA<Visibility>());
      final visibility = widget as Visibility;
      expect(visibility.visible, false);
    });
  });
}
