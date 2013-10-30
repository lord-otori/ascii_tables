part of ascii_tables;

class HeaderBuilder implements fromTypes {

  int _padding = 1;
  Map <String, int> _column_sizes;
  FormatString _fs = new FormatString();


  void setPadding(int padding){
    this._padding = padding;
  }
  void setColumnSizes(Map <String, int> column_sizes) {
    this._column_sizes = column_sizes;
  }

  String fromMap(Map <String, Map <String, String>> map){
    StringBuffer header_row = new StringBuffer();
    Set header = new Set();
    map.forEach((k,v) {
      v.forEach((key,value){
      header.add(key);
    });});


    header.forEach((String column_name) {
      header_row.write('|');
      header_row.write(this._fs.str_pad(column_name, this._column_sizes[column_name] + (this._padding * 2), ' ', PAD_BOTH));
    });
    header_row.write('|');
    header_row.write('\n+');
    header_row.write(this._fs.str_repeat('-', (header_row.length - 4)));
    header_row.write('+');
    return header_row.toString();
  }

  String fromList(List <Map <String, String>> list) => throw new UnimplementedError();
  String fromSet(Set set) => throw new UnimplementedError();
  String fromIterator(Iterator <String> i) => throw new UnimplementedError();
}