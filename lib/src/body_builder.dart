part of ascii_tables;

class BodyBuilder implements fromTypes {
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
    try {
    List table_rows = new List();
    map.forEach((k,v){
      String row = '|';
      this._column_sizes.forEach((String column_name, int column_size) {
        String column_content = v.containsKey(column_name) ? v[column_name] : this._fs.str_repeat('-', column_size);
        row += this._fs.str_pad(column_content, column_size + (this._padding * 2), ' ', PAD_BOTH) + '|';
      });
      table_rows.add(row);
    });
    return table_rows.join('\n');
    } catch(e, s){
      print(e);
      print(s);
    }
  }

  String fromList(List <Map <String, String>> list) {
    return '';
  }
  String fromSet(Set set) {
    return '';
  }
  String fromIterator(Iterator <String> i) {
    return '';
  }
}