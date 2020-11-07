import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Gird List';
    var data = Data();
    var flickrPhoto = FlickrPhoto.fromMap(data.jsonData['photos']);
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: GridView.count(
            crossAxisCount: 3,
            children: flickrPhoto.photo
                .map((p) => Center(child: Image.network(p.urlString())))
                .toList()),
      ),
    );
  }
}

class FlickrPhoto {
  int page, pages;
  List<Photo> photo;
  FlickrPhoto.fromMap(Map snapshot) {
    this.page = snapshot['page'];
    this.page = snapshot['pages'];
    List photoMap = snapshot['photo'];
    this.photo = photoMap.map((t) => Photo.fromMap(t)).toList();
  }
}

class Photo {
  String id, secret, server, title;
  int farm;

  Photo.fromMap(Map snapshot) {
    this.id = snapshot['id'];
    this.secret = snapshot['secret'];
    this.server = snapshot['server'];
    this.farm = snapshot['farm'];
    this.title = snapshot['title'];
  }

  urlString() {
    return 'https://farm$farm.staticflickr.com/$server/$id\_$secret.jpg';
  }
}

class Data {
  Map jsonData = {
    "photos": {
      "page": 1,
      "pages": 1863,
      "perpage": 100,
      "total": "186299",
      "photo": [
        {
          "id": "50550633771",
          "owner": "188128962@N07",
          "secret": "980868a69c",
          "farm": 66,
          "server": "65535",
          "title": "Washington at night",
        },
        {
          "id": "50550633251",
          "owner": "188128962@N07",
          "secret": "31743cf0f1",
          "server": "65535",
          "farm": 66,
          "title": "Washington at night",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50550618797",
          "owner": "141329731@N03",
          "secret": "f8a5faef7c",
          "server": "65535",
          "farm": 66,
          "title": "_DSC5869",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50550465516",
          "owner": "189809057@N03",
          "secret": "9fb251c2bd",
          "server": "65535",
          "farm": 66,
          "title": "choose the best holden wreckers canberra",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50550356692",
          "owner": "146906624@N04",
          "secret": "0b6987d8dd",
          "server": "65535",
          "farm": 66,
          "title": "\u00eele de versailles",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50549481233",
          "owner": "66944894@N06",
          "secret": "0b002293a9",
          "server": "65535",
          "farm": 66,
          "title": "Bentley 3\/8",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50550141826",
          "owner": "43603376@N05",
          "secret": "112610c9cb",
          "server": "65535",
          "farm": 66,
          "title": "Waller Road",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50550106596",
          "owner": "46578714@N05",
          "secret": "00d1292691",
          "server": "65535",
          "farm": 66,
          "title": "23 1959 Austin Healey 3000 MkI",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50550110261",
          "owner": "32569229@N06",
          "secret": "18afea1f99",
          "server": "65535",
          "farm": 66,
          "title": "Ferrari FXX K Evo",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50549344288",
          "owner": "97717683@N08",
          "secret": "8b13656830",
          "server": "65535",
          "farm": 66,
          "title": "Ferrari 812 Superfast",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50549950991",
          "owner": "125640853@N06",
          "secret": "2dcbc3657a",
          "server": "65535",
          "farm": 66,
          "title": "JW-8705",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50550074087",
          "owner": "125640853@N06",
          "secret": "6ee84fd8c2",
          "server": "65535",
          "farm": 66,
          "title": "JW-8709",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50550073432",
          "owner": "125640853@N06",
          "secret": "262ee2a0b4",
          "server": "65535",
          "farm": 66,
          "title": "JW-8716",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50550073407",
          "owner": "125640853@N06",
          "secret": "0a99206e69",
          "server": "65535",
          "farm": 66,
          "title": "JW-8717",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50549216713",
          "owner": "125640853@N06",
          "secret": "e75c2a4060",
          "server": "65535",
          "farm": 66,
          "title": "JW-8719",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50549949541",
          "owner": "125640853@N06",
          "secret": "a36a3ea041",
          "server": "65535",
          "farm": 66,
          "title": "JW-8720",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50549949051",
          "owner": "125640853@N06",
          "secret": "b4a9a607d0",
          "server": "65535",
          "farm": 66,
          "title": "JW-8729",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50549946631",
          "owner": "125640853@N06",
          "secret": "f67d76a98b",
          "server": "65535",
          "farm": 66,
          "title": "JW-8761",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50549944831",
          "owner": "125640853@N06",
          "secret": "6190683fc4",
          "server": "65535",
          "farm": 66,
          "title": "JW-8789",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50550068602",
          "owner": "125640853@N06",
          "secret": "915c103cc2",
          "server": "65535",
          "farm": 66,
          "title": "JW-8791",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50550060887",
          "owner": "130542797@N07",
          "secret": "f1a16acc0b",
          "server": "65535",
          "farm": 66,
          "title": "Ford Granada 2.8i Ghia X B901XPP",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50550060392",
          "owner": "130542797@N07",
          "secret": "f8b97fcff3",
          "server": "65535",
          "farm": 66,
          "title": "Ford Focus RS RS53JAY and RS59DEL",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548779808",
          "owner": "155896017@N08",
          "secret": "4dcc75f2b5",
          "server": "65535",
          "farm": 66,
          "title": "Junction City, Kansas VW Beetle Garage",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50549206986",
          "owner": "81065266@N00",
          "secret": "a7a90fca54",
          "server": "65535",
          "farm": 66,
          "title": "Baker Street`1972-2020",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50549181736",
          "owner": "34538235@N02",
          "secret": "ec881d060b",
          "server": "65535",
          "farm": 66,
          "title": "Needham Packing Comapany",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50549044381",
          "owner": "34538235@N02",
          "secret": "10a01dabd4",
          "server": "65535",
          "farm": 66,
          "title": "Old Gal",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50547940913",
          "owner": "44177780@N06",
          "secret": "4cda5bc1c9",
          "server": "65535",
          "farm": 66,
          "title": "7212. More light streaks",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548667586",
          "owner": "190843788@N07",
          "secret": "0f0e85c145",
          "server": "65535",
          "farm": 66,
          "title": "Great shot of a Porsche logo.",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548582401",
          "owner": "152335126@N08",
          "secret": "a9babb5829",
          "server": "65535",
          "farm": 66,
          "title": "Cape Disappointment Lighthouse Sepia",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548562846",
          "owner": "185432629@N06",
          "secret": "20420d503d",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548562516",
          "owner": "185432629@N06",
          "secret": "2d7d01a799",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548693347",
          "owner": "185432629@N06",
          "secret": "a55ee914cf",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548562256",
          "owner": "185432629@N06",
          "secret": "28109770e6",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548693172",
          "owner": "185432629@N06",
          "secret": "f60fb8a5ff",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548691852",
          "owner": "185432629@N06",
          "secret": "ef54479680",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548691317",
          "owner": "185432629@N06",
          "secret": "ac22f9fd09",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548559236",
          "owner": "185432629@N06",
          "secret": "d970df1151",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548557746",
          "owner": "185432629@N06",
          "secret": "37427a6e30",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548688882",
          "owner": "185432629@N06",
          "secret": "0620176106",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548556271",
          "owner": "185432629@N06",
          "secret": "df146ce01f",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548687142",
          "owner": "185432629@N06",
          "secret": "0b73c8e326",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548555031",
          "owner": "185432629@N06",
          "secret": "8d8b9abf7c",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548685902",
          "owner": "185432629@N06",
          "secret": "25bdd57cd3",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548682777",
          "owner": "185432629@N06",
          "secret": "6ae5ee677f",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548680722",
          "owner": "185432629@N06",
          "secret": "a58f37a643",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50547817008",
          "owner": "185432629@N06",
          "secret": "a6fe692c9d",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50547815658",
          "owner": "185432629@N06",
          "secret": "68d03631fe",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
        {
          "id": "50548678547",
          "owner": "185432629@N06",
          "secret": "ce136acaa7",
          "server": "65535",
          "farm": 66,
          "title": "20201030 - Eisenbahnmuseum Bochum",
          "ispublic": 1,
          "isfriend": 0,
          "isfamily": 0
        },
      ]
    }
  };
}
//563c9f99ac67d401c864818dca744346

//95fd09a1d5828960
