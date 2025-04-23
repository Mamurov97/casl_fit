class CategoryTariffModel {
  int? id;
  String? groupGuid;
  String? name;
  int? plansCount;
  String? date;

  CategoryTariffModel(
      {this.id, this.groupGuid, this.name, this.plansCount, this.date});

  CategoryTariffModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    groupGuid = json['group_guid'];
    name = json['name'];
    plansCount = json['plans_count'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['group_guid'] = groupGuid;
    data['name'] = name;
    data['plans_count'] = plansCount;
    data['date'] = date;
    return data;
  }

  @override
  String toString() {
    return 'CategoryTariffModel{id: $id, groupGuid: $groupGuid, name: $name, plansCount: $plansCount, date: $date}';
  }
}
