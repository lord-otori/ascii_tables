part of ascii_tables;

class HeaderBuilder {
  int padding;
  Map <String, int> column_sizes;

  HeaderBuilder(int padd, Map <String, int> col_sizes) {
    this.padding = padd;
    this.column_sizes = col_sizes;
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
      header_row.write(str_pad(column_name, this.column_sizes[column_name] + (this.padding * 2), ' ', PAD_BOTH));
    });
    header_row.write('|');
    header_row.write('\n+');
    header_row.write(str_repeat('-', (header_row.length - 4)));
    header_row.write('+');
    return header_row.toString();
  }
}