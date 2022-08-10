import 'dart:convert';


ShipFacts shipFactsFromJson(String str) => ShipFacts.fromJson(json.decode(str));
String shipFactsToJson(ShipFacts data) => json.encode(data.toJson());
class ShipFacts {
  ShipFacts({
    String? passengerCapacity,
    String? grossRegisterTonnage,
    String? overallLength,
    String? maxBeam,
    String? draft,
    String? engines,
    String? cruiseSpeed,
    String? crew,
    String? inauguralDate,
    String? remodeledDate,}){
    _passengerCapacity = passengerCapacity;
    _grossRegisterTonnage = grossRegisterTonnage;
    _overallLength = overallLength;
    _maxBeam = maxBeam;
    _draft = draft;
    _engines = engines;
    _cruiseSpeed = cruiseSpeed;
    _crew = crew;
    _inauguralDate = inauguralDate;
    _remodeledDate = remodeledDate;
  }

  ShipFacts.fromJson(dynamic json) {
    _passengerCapacity = json['passengerCapacity'];
    _grossRegisterTonnage = json['grossRegisterTonnage'];
    _overallLength = json['overallLength'];
    _maxBeam = json['maxBeam'];
    _draft = json['draft'];
    _engines = json['engines'];
    _cruiseSpeed = json['cruiseSpeed'];
    _crew = json['crew'];
    _inauguralDate = json['inauguralDate'];
    _remodeledDate = json['remodeledDate'];
  }

  String? _passengerCapacity;
  String? _grossRegisterTonnage;
  String? _overallLength;
  String? _maxBeam;
  String? _draft;
  String? _engines;
  String? _cruiseSpeed;
  String? _crew;
  String? _inauguralDate;
  String? _remodeledDate;

  ShipFacts copyWith({  String? passengerCapacity,
    String? grossRegisterTonnage,
    String? overallLength,
    String? maxBeam,
    String? draft,
    String? engines,
    String? cruiseSpeed,
    String? crew,
    String? inauguralDate,
    String? remodeledDate,
  }) => ShipFacts(
    passengerCapacity: passengerCapacity ?? _passengerCapacity,
    grossRegisterTonnage: grossRegisterTonnage ?? _grossRegisterTonnage,
    overallLength: overallLength ?? _overallLength,
    maxBeam: maxBeam ?? _maxBeam,
    draft: draft ?? _draft,
    engines: engines ?? _engines,
    cruiseSpeed: cruiseSpeed ?? _cruiseSpeed,
    crew: crew ?? _crew,
    inauguralDate: inauguralDate ?? _inauguralDate,
    remodeledDate: remodeledDate ?? _remodeledDate,
  );
  String? get passengerCapacity => _passengerCapacity;
  String? get grossRegisterTonnage => _grossRegisterTonnage;
  String? get overallLength => _overallLength;
  String? get maxBeam => _maxBeam;
  String? get draft => _draft;
  String? get engines => _engines;
  String? get cruiseSpeed => _cruiseSpeed;
  String? get crew => _crew;
  String? get inauguralDate => _inauguralDate;
  String? get remodeledDate => _remodeledDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['passengerCapacity'] = _passengerCapacity;
    map['grossRegisterTonnage'] = _grossRegisterTonnage;
    map['overallLength'] = _overallLength;
    map['maxBeam'] = _maxBeam;
    map['draft'] = _draft;
    map['engines'] = _engines;
    map['cruiseSpeed'] = _cruiseSpeed;
    map['crew'] = _crew;
    map['inauguralDate'] = _inauguralDate;
    map['remodeledDate'] = _remodeledDate;
    return map;
  }

}