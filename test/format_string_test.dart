import 'package:unittest/unittest.dart';
import 'package:ascii_tables/ascii_tables.dart';
void main() {
  group('FormatString', (){
    group('str_pad:', (){
    test("pad default", () => expect(str_pad('aaa', 5), matches('aaa  ')));
    test("default equals pad right", () => expect(str_pad('aaa', 5, ' ', PAD_RIGHT), str_pad('aaa', 5)));
    test("pad left", () => expect(str_pad('aaa', 5, ' ', PAD_LEFT), '  aaa'));
    test("pad both", () => expect(str_pad('aaa', 5, ' ', PAD_BOTH), ' aaa '));
    test("pad with null parameter", () => expect(str_pad('aaa', 5, null, PAD_BOTH), ' aaa '));
    });
    group('str_repeat:', (){
      test("simple string repeat", () => expect(str_repeat('aaa', 2),'aaaaaa'));
      test("repeat string with spaces", () => expect(str_repeat('x ', 2), 'x x '));
    });
  });

}