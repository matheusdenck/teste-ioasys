class EnterpriseModel {
  final int? id;
  final bool? email_enterprise,
      facebook,
      twitter,
      linkedin,
      phone,
      own_enterprise;

  final String? enterprise_name, photo, description, city, country;

  final int? value;
  final double? share_price;

  final EnterpriseType? enterprise_type;

  EnterpriseModel({
    this.id,
    this.email_enterprise,
    this.facebook,
    this.twitter,
    this.linkedin,
    this.phone,
    this.own_enterprise,
    this.enterprise_name,
    this.photo,
    this.description,
    this.city,
    this.country,
    this.value,
    this.share_price,
    this.enterprise_type,
  });

  factory EnterpriseModel.fromJson(Map<String, dynamic> json) {
    return EnterpriseModel(
      id: json['id'],
      email_enterprise: json['email_enterprise'],
      facebook: json['facebook'],
      twitter: json['twitter'],
      linkedin: json['linkedin'],
      phone: json['phone'],
      own_enterprise: json['own_enterprise'],
      enterprise_name: json['enterprise_name'],
      photo: json['photo'],
      description: json['description'],
      city: json['city'],
      country: json['country'],
      value: json['value'],
      share_price: json['share_price'],
      enterprise_type: EnterpriseType.fromJson(json['enterprise_type']),
    );
  }

  static List<EnterpriseModel> fromList(List<dynamic> list) {
    return list.map((e) => EnterpriseModel.fromJson(e)).toList();
  }
}

class EnterpriseType {
  final int? id;
  final String? enterprise_type_name;

  EnterpriseType({this.id, this.enterprise_type_name});

  factory EnterpriseType.fromJson(Map<String, dynamic> json) {
    return EnterpriseType(
      id: json['id'],
      enterprise_type_name: json['enterprise_type_name'],
    );
  }
}
