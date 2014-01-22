import 'package:ascii_tables/ascii_tables.dart';

main() {
  List <Map <String, String>> list_map = [{'name':'Juan Sebastian','last name':'Simon'},{'name':'John','last name':'Doe','age': '27'}];
  Map map = {'one':{'name':'Juan Sebastian','last_name':'Simon', 'age': '27'},'two':{'name':'Pedro','last_name':'Simon'}};
  List list = [{'ascii' : 'tables'}];


  Set plainSet = new Set();
  plainSet.add('First Item');
  plainSet.add('Second Item');
  plainSet.add('Third Item');
  plainSet.add('Third Item');


  Set mapSet = new Set();
  mapSet.add({'map item': 'First Item'});
  mapSet.add({'map item': 'Second Item'});
  mapSet.add({'map item': 'Third Item'});

  new AsciiTables.fromMap(map)
    ..displayHeader(false)
    ..hideBorders(true)
    ..printTable();
    print("\n");

  AsciiTables at = new AsciiTables.fromMap(map)
    ..displayHeader(true);
    print(at.returnTable());


  new AsciiTables.fromList(list)
    ..displayHeader(true)
    ..printTable();

  new AsciiTables.fromList(list_map)
    ..displayHeader(true)
    ..printTable();

  new AsciiTables.fromSet(plainSet)
    ..displayHeader(true)
    ..printTable();

  new AsciiTables.fromSet(mapSet)
    ..displayHeader(true)
    ..printTable();

}