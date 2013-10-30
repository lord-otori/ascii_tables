import 'package:unittest/unittest.dart';
import 'package:ascii_tables/ascii_tables.dart';
void main() {
  group('FormatString', (){
    group('str_pad:', (){
    test("pad default", () => expect(new FormatString().str_pad('aaa', 5), matches('aaa  ')));
    test("default equals pad right", () => expect(new FormatString().str_pad('aaa', 5, ' ', PAD_RIGHT), new FormatString().str_pad('aaa', 5)));
    test("pad left", () => expect(new FormatString().str_pad('aaa', 5, ' ', PAD_LEFT), '  aaa'));
    test("pad both", () => expect(new FormatString().str_pad('aaa', 5, ' ', PAD_BOTH), ' aaa '));
    test("pad with null parameter", () => expect(new FormatString().str_pad('aaa', 5, null, PAD_BOTH), ' aaa '));
    });
    group('str_repeat:', (){
      test("simple string repeat", () => expect(new FormatString().str_repeat('aaa', 2),'aaaaaa'));
      test("repeat string with spaces", () => expect(new FormatString().str_repeat('x ', 2), 'x x '));
    });
  });

}