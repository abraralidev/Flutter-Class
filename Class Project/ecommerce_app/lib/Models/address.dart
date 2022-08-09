class AddressModel {
  String? name;
  String ?phoneNumber;
  String ?flatNumber;
  String? city;
  String ?state;
  String? pincode;

  AddressModel(
      {required name,
        required phoneNumber,
        required flatNumber,
        required city,
        required state,
        required pincode});

  AddressModel?fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    flatNumber = json['flatNumber'];
    city = json['city'];
    state = json['state'];
    pincode = json['pincode'];
    return null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['name'] = name;
    data['phoneNumber'] = phoneNumber;
    data['flatNumber'] = flatNumber;
    data['city'] = city;
    data['state'] = state;
    data['pincode'] = pincode;
    return data;
  }
}
