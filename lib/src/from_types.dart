part of ascii_tables;

class fromTypes {
  int _padding = 1;
  Map <String, int> _column_sizes;
  void setPadding(int padding) => throw new UnimplementedError();
  void setColumnSizes(Map <String, int> column_sizes) => throw new UnimplementedError();
  fromMap(Map <String, Map <String, String>> map) => throw new UnimplementedError();
  fromList(List <Map <String, String>> list) => throw new UnimplementedError();
  fromSet(Set set) => throw new UnimplementedError();
  fromIterator(Iterator <String> i) => throw new UnimplementedError();
}