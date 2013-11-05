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
  group('BodyBuilder', (){
    BodyBuilder bb, ba, bc, bd;
    String str;
    Map mapcontent, mapcontent_two_lines, mapcontent_two_lines_offset_one;
    setUp((){
      mapcontent = {'one': {'ascii' : 'tables'}};
      mapcontent_two_lines = {'one': {'ascii' : 'tables'}, 'two': {'ascii': 'test'}};
      mapcontent_two_lines_offset_one = {'one': {'ascii' : 'tables'}, 'two': {'asciis': 'test'}};
      Map <String, int> column_sizes = {"ascii": 6};
      Map <String, int> column_sizes_offset = {"ascii": 6};
      ba = new BodyBuilder(3, column_sizes);
      bb = new BodyBuilder(5, column_sizes);
      bc = new BodyBuilder(1, column_sizes);
      bd = new BodyBuilder(1, column_sizes_offset);
    });
  test('BodyFormat 3 spaces', () => expect(ba.fromMap(mapcontent), equals('|   tables   |')));
  test('BodyFormat 5 spaces', () => expect(bb.fromMap(mapcontent), equals('|     tables     |')));
  test('BodyFormat 1 space 2 rows', () => expect(bc.fromMap(mapcontent_two_lines), equals("| tables |\n|  test  |")));
  test('BodyFormat 1 space 2 rows with offset', () => expect(bc.fromMap(mapcontent_two_lines_offset_one), equals("| tables |\n| ------ |")));
  });
}