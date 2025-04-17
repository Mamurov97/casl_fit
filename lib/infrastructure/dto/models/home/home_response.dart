class HomeResponse {
  int? userId;
  String? name;
  String? image;
  String? phone;
  String? guid;

  HomeResponse({this.userId, this.name, this.image, this.phone, this.guid});

  HomeResponse.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'];
    image = json['image'];
    phone = json['phone'];
    guid = json['guid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['name'] = name;
    data['image'] = image;
    data['phone'] = phone;
    data['guid'] = guid;
    return data;
  }
}
