import 'dart:convert';

class RegisteeModel {
  String firstName;
  String middleName;
  String lastName;
  String gender;
  String phoneNo;
  String parentName;
  String parentNo;
  String homeAddress;
  String disabilityCluster;
  String commitmentFee;
  String parentConsent;
  String passIssued;
  String wouldCamp;

  RegisteeModel({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.gender,
    required this.phoneNo,
    required this.parentName,
    required this.parentNo,
    required this.homeAddress,
    required this.disabilityCluster,
    required this.commitmentFee,
    required this.parentConsent,
    required this.passIssued,
    required this.wouldCamp,
  });

  factory RegisteeModel.fromJson(Map<String, dynamic> json) {
    return RegisteeModel(
      firstName: json['firstName'],
      middleName: json['middleName'],
      lastName: json['lastName'],
      gender: json['gender'],
      phoneNo: json['phoneNo'],
      parentName: json['parentName'],
      parentNo: json['parentNo'],
      homeAddress: json['homeAddress'],
      disabilityCluster: json['disabilityCluster'],
      commitmentFee: json['commitmentFee'],
      parentConsent: json['parentConsent'],
      passIssued: json['passIssued'],
      wouldCamp: json['wouldCamp'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['firstName'] = firstName;
    data['middleName'] = middleName;
    data['lastName'] = lastName;
    data['gender'] = gender;
    data['phoneNo'] = phoneNo;
    data['parentName'] = parentName;
    data['parentNo'] = parentNo;
    data['homeAddress'] = homeAddress;
    data['disabilityCluster'] = disabilityCluster;
    data['commitmentFee'] = commitmentFee;
    data['parentConsent'] = parentConsent;
    data['passIssued'] = passIssued;
    data['wouldCamp'] = wouldCamp;
    return data;
  }
}

