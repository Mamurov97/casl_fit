class WeightHeightResponse {
  int? id;
  String? size;
  String? date;

  WeightHeightResponse({this.id, this.size, this.date});

  WeightHeightResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    size = json['size'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['size'] = size;
    data['date'] = date;
    return data;
  }

  @override
  String toString() {
    return '{id: $id, size: $size, date: $date}';
  }
}
