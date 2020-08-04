@JS()
library notify;

import 'package:js/js.dart';

@JS()
class Notify {
  external factory Notify(String str);
  external void success(dynamic str);
}
