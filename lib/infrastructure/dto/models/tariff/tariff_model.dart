class TariffModel {
  TariffModel({
    required this.id,
    required this.guidTarif,
    required this.kod,
    required this.name,
    required this.bezlimit,
    required this.kunlikLimit,
    required this.oylikLimit,
    required this.bezLimitVremya,
    required this.vremyaLimitS,
    required this.vremyaLimitPo,
    required this.opisaniya,
    required this.probniyTarif,
    required this.createdAt,
    required this.updatedAt,
  });

  final int? id;
  final String? guidTarif;
  final String? kod;
  final String? name;
  final String? bezlimit;
  final String? kunlikLimit;
  final String? oylikLimit;
  final String? bezLimitVremya;
  final DateTime? vremyaLimitS;
  final DateTime? vremyaLimitPo;
  final String? opisaniya;
  final String? probniyTarif;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  TariffModel copyWith({
    int? id,
    String? guidTarif,
    String? kod,
    String? name,
    String? bezlimit,
    String? kunlikLimit,
    String? oylikLimit,
    String? bezLimitVremya,
    DateTime? vremyaLimitS,
    DateTime? vremyaLimitPo,
    String? opisaniya,
    String? probniyTarif,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return TariffModel(
      id: id ?? this.id,
      guidTarif: guidTarif ?? this.guidTarif,
      kod: kod ?? this.kod,
      name: name ?? this.name,
      bezlimit: bezlimit ?? this.bezlimit,
      kunlikLimit: kunlikLimit ?? this.kunlikLimit,
      oylikLimit: oylikLimit ?? this.oylikLimit,
      bezLimitVremya: bezLimitVremya ?? this.bezLimitVremya,
      vremyaLimitS: vremyaLimitS ?? this.vremyaLimitS,
      vremyaLimitPo: vremyaLimitPo ?? this.vremyaLimitPo,
      opisaniya: opisaniya ?? this.opisaniya,
      probniyTarif: probniyTarif ?? this.probniyTarif,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  factory TariffModel.fromJson(Map<String, dynamic> json){
    return TariffModel(
      id: json["id"],
      guidTarif: json["GuidTarif"],
      kod: json["kod"],
      name: json["Name"],
      bezlimit: json["bezlimit"],
      kunlikLimit: json["kunlik_limit"],
      oylikLimit: json["oylik_limit"],
      bezLimitVremya: json["bez_limit_vremya"],
      vremyaLimitS: DateTime.tryParse(json["vremya_limit_s"] ?? ""),
      vremyaLimitPo: DateTime.tryParse(json["vremya_limit_po"] ?? ""),
      opisaniya: json["opisaniya"],
      probniyTarif: json["probniy_tarif"],
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "GuidTarif": guidTarif,
    "kod": kod,
    "Name": name,
    "bezlimit": bezlimit,
    "kunlik_limit": kunlikLimit,
    "oylik_limit": oylikLimit,
    "bez_limit_vremya": bezLimitVremya,
    "vremya_limit_s": vremyaLimitS?.toIso8601String(),
    "vremya_limit_po": vremyaLimitPo?.toIso8601String(),
    "opisaniya": opisaniya,
    "probniy_tarif": probniyTarif,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };

  @override
  String toString(){
    return "$id, $guidTarif, $kod, $name, $bezlimit, $kunlikLimit, $oylikLimit, $bezLimitVremya, $vremyaLimitS, $vremyaLimitPo, $opisaniya, $probniyTarif, $createdAt, $updatedAt, ";
  }
}
