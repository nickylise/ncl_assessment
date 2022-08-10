import 'dart:convert';

import 'package:ncl_assessment/models/ship_facts.dart';

CruiseShipResponseModel cruiseShipResponseModelFromJson(String str) => CruiseShipResponseModel.fromJson(json.decode(str));
String cruiseShipResponseModelToJson(CruiseShipResponseModel data) => json.encode(data.toJson());
class CruiseShipResponseModel {
  CruiseShipResponseModel({
      String? shipName,
      ShipFacts? shipFacts
  }){
    _shipName = shipName;
    _shipFacts = shipFacts;
}

  CruiseShipResponseModel.fromJson(dynamic json) {
    _shipName = json['shipName'];
    _shipFacts = json['shipFacts'] != null ? ShipFacts.fromJson(json['shipFacts']) : null;
  }
  String? _shipName;
  ShipFacts? _shipFacts;

CruiseShipResponseModel copyWith({
  String? shipName,
  ShipFacts? shipFacts,
}) => CruiseShipResponseModel(
  shipName: shipName ?? _shipName,
  shipFacts: shipFacts ?? _shipFacts,
);
  String? get shipName => _shipName;
  ShipFacts? get shipFacts => _shipFacts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['shipName'] = _shipName;
    if (_shipFacts != null) {
      map['shipFacts'] = _shipFacts?.toJson();
    }
    return map;
  }

}

