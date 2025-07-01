class TariffModel {
  String? name;
  String? groupGuid;
  List<Data>? tariffData;

  TariffModel({this.name, this.groupGuid, this.tariffData});

  TariffModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    groupGuid = json['group_guid'];
    if (json['data'] != null) {
      tariffData = <Data>[];
      json['data'].forEach((v) {
        tariffData!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['group_guid'] = groupGuid;
    if (tariffData != null) {
      data['data'] = tariffData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? tarifGuid;
  String? code;
  String? name;
  String? nameMobile;
  bool? noLimit;
  int? dailyLimit;
  int? monthlyLimit;
  bool? noLimitTime;
  String? limitTimeFrom;
  String? limitTimeTo;
  String? description;
  bool? probniyTarif;
  int? price;
  String? groupGuid;
  String? startDate;
  String? endDate;
  num? remainder;

  Data({
    this.tarifGuid,
    this.code,
    this.name,
    this.nameMobile,
    this.noLimit,
    this.dailyLimit,
    this.monthlyLimit,
    this.noLimitTime,
    this.limitTimeFrom,
    this.limitTimeTo,
    this.description,
    this.probniyTarif,
    this.price,
    this.groupGuid,
    this.startDate,
    this.endDate,
    this.remainder,
  });

  Data.fromJson(Map<String, dynamic> json) {
    tarifGuid = json['tarif_guid'];
    code = json['code'];
    name = json['name'];
    nameMobile = json['name_mobile'];
    noLimit = json['no_limit'];
    dailyLimit = json['daily_limit'];
    monthlyLimit = json['monthly_limit'];
    noLimitTime = json['no_limit_time'];
    limitTimeFrom = json['limit_time_from'];
    limitTimeTo = json['limit_time_to'];
    description = json['description'];
    probniyTarif = json['probniy_tarif'];
    price = json['price'];
    groupGuid = json['group_guid'];
    startDate = json['start_time'];
    endDate = json['end_time'];
    remainder = json['remainder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tarif_guid'] = tarifGuid;
    data['code'] = code;
    data['name'] = name;
    data['name_mobile'] = nameMobile;
    data['no_limit'] = noLimit;
    data['daily_limit'] = dailyLimit;
    data['monthly_limit'] = monthlyLimit;
    data['no_limit_time'] = noLimitTime;
    data['limit_time_from'] = limitTimeFrom;
    data['limit_time_to'] = limitTimeTo;
    data['description'] = description;
    data['probniy_tarif'] = probniyTarif;
    data['price'] = price;
    data['group_guid'] = groupGuid;
    data['start_time'] = startDate;
    data['end_time'] = endDate;
    data['remainder'] = remainder;
    return data;
  }
}
