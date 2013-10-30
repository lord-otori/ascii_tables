library ascii_tables;

part 'src/format_string.dart';
part 'src/exceptions.dart';
part 'src/from_types.dart';
part 'src/header_builder.dart';
part 'src/body_builder.dart';
part 'src/table_measure.dart';

const PAD_RIGHT = 1;
const PAD_LEFT = 2;
const PAD_BOTH = 3;


class AsciiTables{


  bool _isPrintHeaderEnabled = true;
  String _tableHeaderString;
  String _tableBodyString;
  int _padding = 1;
  int _from_type;
  Map <String, int> _column_sizes;


  Map <String, Map <String, String>> _content_map = new Map();



  HeaderBuilder _hb = new HeaderBuilder();
  BodyBuilder _bb = new BodyBuilder();
  TableMeasure _tm = new TableMeasure();

  AsciiTables.fromMap(Map <String, Map <String, String>> map){
    this._content_map = map;
    this._column_sizes = this._tm.fromMap(map);
  }

  AsciiTables.fromList(List <Map <String, String>> list) {
    this._content_map = new Map.fromIterable(list);
    this._column_sizes = this._tm.fromMap(this._content_map);
  }

  AsciiTables.fromSet(Set set) {

  }

  AsciiTables.fromIterator(Iterator <String> i){

  }

  void displayHeader(bool display_header) {
    this._isPrintHeaderEnabled = display_header;
  }

  void setPadding(int padding){
    this._padding = padding;
  }

  void printTable() {
    print(this._makeTable());
  }

  String returnTable() {
    return this._makeTable();
  }

  String _makeTable() {
    StringBuffer table = new StringBuffer();
      this._hb.setPadding(this._padding);
      this._bb.setPadding(this._padding);
      this._hb.setColumnSizes(this._column_sizes);
      this._bb.setColumnSizes(this._column_sizes);
      this._tableHeaderString = this._hb.fromMap(this._content_map);
      this._tableBodyString = this._bb.fromMap(this._content_map);


    FormatString fs = new FormatString();

    int total_length = this._column_sizes.length * 2 * this._padding;
    this._column_sizes.forEach((k,v) {
      total_length += v;
    });
    total_length += (this._column_sizes.length -1);
    table.write('+');
    table.write(fs.str_repeat('-', total_length));
    table.write('+\n');
    if(this._isPrintHeaderEnabled){
      table.write(this._tableHeaderString);
      table.write('\n');
    }
      table.write(this._tableBodyString);
      table.write('\n+');
      table.write(fs.str_repeat('-', total_length));
      table.write('+');
      return table.toString();
  }
}