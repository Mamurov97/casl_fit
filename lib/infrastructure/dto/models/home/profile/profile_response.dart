class ProfileResponse {
  String? guidClient;
  String? name;
  String? seriyaPassport;
  String? nomerPassport;
  String? passportIssueDate;
  String? whoIssuedThePassport;
  String? pnfl;
  String? mfy;
  String? qfy;
  String? dateBirthday;
  String? passportName;
  String? tel;
  int? balans;
  List<Tarif>? tarif;
  Photo? photo;
  String? weight;
  String? height;
  int? age;

  ProfileResponse(
      {this.guidClient,
        this.name,
        this.seriyaPassport,
        this.nomerPassport,
        this.passportIssueDate,
        this.whoIssuedThePassport,
        this.pnfl,
        this.mfy,
        this.qfy,
        this.dateBirthday,
        this.passportName,
        this.tel,
        this.balans,
        this.tarif,
        this.photo,
        this.weight,
        this.height,
        this.age});

  ProfileResponse.fromJson(Map<String, dynamic> json) {
    guidClient = json['GuidClient'];
    name = json['name'];
    seriyaPassport = json['seriya_passport'];
    nomerPassport = json['nomer_passport'];
    passportIssueDate = json['passport_issue_date'];
    whoIssuedThePassport = json['who_issued_the_passport'];
    pnfl = json['pnfl'];
    mfy = json['mfy'];
    qfy = json['qfy'];
    dateBirthday = json['date_birthday'];
    passportName = json['passport_name'];
    tel = json['tel'];
    balans = json['balans'];
    if (json['tarif'] != null) {
      tarif = <Tarif>[];
      json['tarif'].forEach((v) {
        tarif!.add(Tarif.fromJson(v));
      });
    }
    photo = json['photo'] != null ? Photo.fromJson(json['photo']) : null;
    weight = json['weight'];
    height = json['height'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['GuidClient'] = guidClient;
    data['name'] = name;
    data['seriya_passport'] = seriyaPassport;
    data['nomer_passport'] = nomerPassport;
    data['passport_issue_date'] = passportIssueDate;
    data['who_issued_the_passport'] = whoIssuedThePassport;
    data['pnfl'] = pnfl;
    data['mfy'] = mfy;
    data['qfy'] = qfy;
    data['date_birthday'] = dateBirthday;
    data['passport_name'] = passportName;
    data['tel'] = tel;
    data['balans'] = balans;
    if (tarif != null) {
      data['tarif'] = tarif!.map((v) => v.toJson()).toList();
    }
    if (photo != null) {
      data['photo'] = photo!.toJson();
    }
    data['weight'] = weight;
    data['height'] = height;
    data['age'] = age;
    return data;
  }
}

class Tarif {
  String? tarif;
  String? boshlanishVaqt;
  String? tugashVaqt;
  int? qoldiq;

  Tarif({this.tarif, this.boshlanishVaqt, this.tugashVaqt, this.qoldiq});

  Tarif.fromJson(Map<String, dynamic> json) {
    tarif = json['tarif'];
    boshlanishVaqt = json['boshlanish_vaqt'];
    tugashVaqt = json['tugash_vaqt'];
    qoldiq = json['qoldiq'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tarif'] = tarif;
    data['boshlanish_vaqt'] = boshlanishVaqt;
    data['tugash_vaqt'] = tugashVaqt;
    data['qoldiq'] = qoldiq;
    return data;
  }
}

class Photo {
  String? path;
  String? photo;

  Photo({this.path, this.photo});

  Photo.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['path'] = path;
    data['photo'] = photo;
    return data;
  }
}
