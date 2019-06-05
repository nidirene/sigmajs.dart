@JS()
@TestOn('browser')
library test.basic;

// These are soft-deprecated, but test are present to ensure 1:1.
import 'dart:js' show context, JsFunction, JsObject;

import 'package:js/js.dart';
import 'package:js/js_util.dart' as js;
import 'package:test/test.dart';

@JS()
external num addNumbers(num a, num b);

void main() {
  test('should call a JS function', () {
    expect(addNumbers(1, 2), 3);
  });
}
