class TariffModel {
  String? tarifGuid;
  String? code;
  String? name;
  bool? noLimit;
  int? dailyLimit;
  int? monthlyLimit;
  bool? noLimitTime;
  String? limitTimeFrom;
  String? limitTimeTo;
  String? description;
  bool? probniyTarif;
  int? price;

  TariffModel(
      {this.tarifGuid,
      this.code,
      this.name,
      this.noLimit,
      this.dailyLimit,
      this.monthlyLimit,
      this.noLimitTime,
      this.limitTimeFrom,
      this.limitTimeTo,
      this.description,
      this.probniyTarif,
      this.price});

  TariffModel.fromJson(Map<String, dynamic> json) {
    tarifGuid = json['tarif_guid'];
    code = json['code'];
    name = json['name'];
    noLimit = json['no_limit'];
    dailyLimit = json['daily_limit'];
    monthlyLimit = json['monthly_limit'];
    noLimitTime = json['no_limit_time'];
    limitTimeFrom = json['limit_time_from'];
    limitTimeTo = json['limit_time_to'];
    description = json['description'];
    probniyTarif = json['probniy_tarif'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tarif_guid'] = tarifGuid;
    data['code'] = code;
    data['name'] = name;
    data['no_limit'] = noLimit;
    data['daily_limit'] = dailyLimit;
    data['monthly_limit'] = monthlyLimit;
    data['no_limit_time'] = noLimitTime;
    data['limit_time_from'] = limitTimeFrom;
    data['limit_time_to'] = limitTimeTo;
    data['description'] = description;
    data['probniy_tarif'] = probniyTarif;
    data['price'] = price;
    return data;
  }
}
