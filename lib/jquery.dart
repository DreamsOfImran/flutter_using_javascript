@JS()
library jquery;

import 'package:js/js.dart';

// new jQuery() invokes JavaScript `new jQuery()`
@JS()
// ignore: camel_case_types
class jQuery {
  external factory jQuery(String selector);
  external int get length; // We get this from the jQuery instance
}
