class PlanResponse {
  int? id;
  String? guidTarif;
  String? kod;
  String? name;
  String? bezlimit;
  String? kunlikLimit;
  String? oylikLimit;
  String? bezLimitVremya;
  String? vremyaLimitS;
  String? vremyaLimitPo;
  String? opisaniya;
  String? probniyTarif;
  String? createdAt;
  String? updatedAt;

  PlanResponse(
      {this.id,
        this.guidTarif,
        this.kod,
        this.name,
        this.bezlimit,
        this.kunlikLimit,
        this.oylikLimit,
        this.bezLimitVremya,
        this.vremyaLimitS,
        this.vremyaLimitPo,
        this.opisaniya,
        this.probniyTarif,
        this.createdAt,
        this.updatedAt});

  PlanResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    guidTarif = json['GuidTarif'];
    kod = json['kod'];
    name = json['Name'];
    bezlimit = json['bezlimit'];
    kunlikLimit = json['kunlik_limit'];
    oylikLimit = json['oylik_limit'];
    bezLimitVremya = json['bez_limit_vremya'];
    vremyaLimitS = json['vremya_limit_s'];
    vremyaLimitPo = json['vremya_limit_po'];
    opisaniya = json['opisaniya'];
    probniyTarif = json['probniy_tarif'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['GuidTarif'] = guidTarif;
    data['kod'] = kod;
    data['Name'] = name;
    data['bezlimit'] = bezlimit;
    data['kunlik_limit'] = kunlikLimit;
    data['oylik_limit'] = oylikLimit;
    data['bez_limit_vremya'] = bezLimitVremya;
    data['vremya_limit_s'] = vremyaLimitS;
    data['vremya_limit_po'] = vremyaLimitPo;
    data['opisaniya'] = opisaniya;
    data['probniy_tarif'] = probniyTarif;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
