//item structure
//  "title": "포시즌스 호텔 서울",
//       "link": "http://www.fourseasons.com/kr/seoul",
//       "category": "숙박>호텔",
//       "description": "",
//       "telephone": "",
//       "address": "서울특별시 종로구 당주동 29",
//       "roadAddress": "서울특별시 종로구 새문안로 97",
//       "mapx": "1269752350",
//       "mapy": "375706891"

class LocalItem {
  String title;
  String link;
  String category;
  String description;
  String telephone;
  String address;
  String roadAddress;
  String mapx;
  String mapy;

  LocalItem({
    required this.title,
    required this.link,
    required this.category,
    required this.description,
    required this.telephone,
    required this.address,
    required this.roadAddress,
    required this.mapx,
    required this.mapy,
  });

  //constructor
  LocalItem.fromJson(Map<String, dynamic> map) :this(
    title: map['title'],
    link: map['link'],
    category: map['category'],
    description: map['description'],
    telephone: map['telephone'],
    address: map['address'],
    roadAddress: map['roadAddress'],
    mapx: map['mapx'],
    mapy: map['mapy'],

  );

  //toJson method
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'link': link,
      'category': category,
      'description': description,
      'telephone' : telephone,
      'address' : address,
      'roadAddress' : roadAddress,
      'mapx' : mapx,
      'mapy' : mapy,
    };
  }
}

