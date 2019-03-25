import 'package:flutter/material.dart';


class produkPage extends StatefulWidget {
  _produkPageState createState() => _produkPageState();
}

class _produkPageState extends State<produkPage> {

  List<Container> daftarSuperhero = new List();

  var karakter = [
    {"nama": "Aura 769", "gambar": "aura.jpg", "keterangan":"test details 1"},
    {"nama": "Trial Aura 769", "gambar": "trial769.jpg", "keterangan":"test details 2"},
    {"nama": "Set VIP", "gambar": "vip.jpg", "keterangan":"test details 3"},
    {"nama": "Trial VIP", "gambar": "trial_vip.jpg", "keterangan":"test details 4"},

  ];

  _buatlist() async {
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      final String gambar = karakternya["gambar"];

      daftarSuperhero.add(new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
              child: new Column(
            children: <Widget>[
              new Hero(
                tag: karakternya['nama'],
                child: new Material(
                  child: new InkWell(
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new Detail(
                                    nama: karakternya['nama'],
                                    gambar: gambar,
                                  ),
                            )),
                    child: new Image.asset(
                      "assets/img/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(5.0),
              ),
              new Text(
                karakternya['nama'],
                style: new TextStyle(fontSize: 15.0),
              )
            ],
          ))));
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text(
      //     "Super Hero",
      //     style: new TextStyle(color: Colors.white),
      //   ),
      // ),
      body: new GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 4 / 5,
        //mainAxisSpacing: 10.0,
        //crossAxisSpacing: 10.0,
        //crossAxisSpacing: 5.0,
        //padding: const EdgeInsets.all(10.0),
        children: daftarSuperhero,
      ),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar, this.keterangan});
  final String nama;
  final String gambar;
  final String keterangan;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 290.0,
              child: new Hero(
                tag: nama,
                child: new Material(
                  elevation: 2.0,
                  //shadowColor: Colors.yellow.shade900,
                  child: new InkWell(
                    child: new Image.asset(
                      "assets/img/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          new BagianNama(
            nama: nama,
          ),
          //new BagianIcon(),
          new Keterangan(),
          // new Container(
          //   padding: new EdgeInsets.all(10.0),
          //   child: new Card(
          //     child: new Padding(
          //       padding: const EdgeInsets.all(10.0),
          //       child: new Text(
          //         "$keterangan",
          //         style: new TextStyle(fontSize: 18.0),
          //         textAlign: TextAlign.justify,
          //       ),
          //     ),
          //   ),
          // )
          
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nama,
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                new Text(
                  "Xenrich Academy",
                  style: new TextStyle(fontSize: 17.0, color: Colors.grey),
                ),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.red,
              ),
              new Text(
                "12",
                style: new TextStyle(fontSize: 18.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class BagianIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Iconteks(
            icon: Icons.call,
            teks: "Call",
          ),
          new Iconteks(
            icon: Icons.message,
            teks: "Message",
          ),
          new Iconteks(
            icon: Icons.photo,
            teks: "Photo",
          ),
        ],
      ),
    );
  }
}

class Iconteks extends StatelessWidget {
  Iconteks({this.icon, this.teks});
  final IconData icon;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 50.0,
            color: Colors.blue,
          ),
          new Text(
            teks,
            style: new TextStyle(fontSize: 18.0, color: Colors.blue),
          )
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {

  Keterangan({this.keterangan});
  final String keterangan;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: 
          
          new Text("Apa kelebihan menggunakan Garam Aura 769 sebagai garam mandian?\n\n1. Menangani serta menghilangkan stress dan tekanan perasaan.\n2. Mengembalikan tenaga yang hilang.\n3. Membantu merawat dan menangani migrain dan sakit kepala.\n4. Melindungi kulit daripada kering.\n5. Mengimbangi tekanan darah.\n6. Meningkatkan kandungan oksigen dalam tubuh.\n7. Membantu dalam penyembuhan penyakit kulit, melembut dan menghaluskan kulit badan.\n\nKeistimewaan Garam Mandian Assyifa’ Garam Aura God 769 yang tidak terdapat pada produk lain\n\n1. Menampal ‘AURA BOCOR’, merawat serta membesarkan AURA DIRI.\n2. Membantu menangani serta mengelakkan gangguan makhluk halus.\n3. Menaikkan SERI WAJAH.\n4. Membantu memulihkan semangat yang telah luntur.\n5. Membantu merapatkan hubungan kekeluargaan, persaudaraan, serta rakan sekerja.\n6. Membantu sebagai ‘PELARIS’ semulajadi untuk perniagaan/Kerjaya.\n7. Membantu menunaikan hajat/niat yang khusus.\n8. Membantu menguatkan ‘MAGNET’ kekayaan dan kejayaan diri.\n9. Membantu meningkatkan keyakinan diri.",
            style: new TextStyle(fontSize: 16.0),
            //textAlign: TextAlign.justify,
            
          ),
        ),
      ),
    );
  }
}