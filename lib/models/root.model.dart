class RootModel {
  int _count;
  String _next;
  String _previous;

  RootModel({int count, String next, String previous}) {
    this._count = count;
    this._next = next;
    this._previous = previous;
  }

  int get count => _count;
  set count(int count) => _count = count;
  String get next => _next;
  set next(String next) => _next = next;
  String get previous => _previous;
  set previous(String previous) => _previous = previous;

  RootModel.fromJson(Map<String, dynamic> json) {
    _count = json['count'];
    _next = json['next'];
    _previous = json['previous'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this._count;
    data['next'] = this._next;
    data['previous'] = this._previous;
    return data;
  }
}
