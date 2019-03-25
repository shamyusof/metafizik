import 'package:flutter/material.dart';
import 'package:metafizik/model/Item.dart';
import 'package:metafizik/screen/ItemList.dart';


class HomeScreen extends StatelessWidget {
  List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    itemList = _itemList();

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Movies'),
      // ),
      body: _listView(),
    );
  }

  Widget _listView() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(
              child: ListView(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            children: itemList
                .map(
                  (Item) => ItemList(item: Item),
                )
                .toList(),
          )),
        ],
      ),
    );
  }

  List<Item> _itemList() {
    return [
      Item(
        id: 0,
        name: 'Set Premium : Mandian Aura 769',
        category: 'Set Aura 769',
        desc: 'Apa kelebihan menggunakan Garam Aura 769 sebagai garam mandian?\n\n '
            '1. Menangani serta menghilangkan stress dan tekanan perasaan.\n'
            '2. Mengembalikan tenaga yang hilang.\n'
            '3. Membantu merawat dan menangani migrain dan sakit kepala.\n'
            '4. Melindungi kulit daripada kering.\n'
            '5. Mengimbangi tekanan darah.\n'
            '6. Meningkatkan kandungan oksigen dalam tubuh.\n'
            '7. Membantu dalam penyembuhan penyakit kulit, melembut dan menghaluskan kulit badan.\n\n'

            'Keistimewaan Garam Mandian Assyifa’ Garam Aura Gold 769 yang tidak terdapat pada produk lain\n\n '
            '1. Menampal ‘AURA BOCOR’, merawat serta membesarkan AURA DIRI.\n '
            '2. Membantu menangani serta mengelakkan gangguan makhluk halus.\n '
            '3. Menaikkan SERI WAJAH.\n '
            '4. Membantu memulihkan semangat yang telah luntur\n '
            '5. Membantu merapatkan hubungan kekeluargaan, persaudaraan, serta rakan sekerja.\n '
            '6. Membantu sebagai ‘PELARIS’ semulajadi untuk perniagaan/Kerjaya.\n '
            '7. Membantu menunaikan hajat/niat yang khusus.\n '
            '8. Membantu menguatkan ‘MAGNET’kekayaan dan kejayaan diri.\n '
            '9. Membantu meningkatkan keyakinan diri.\n '

            'Adakah anda memerlukan produk ini?\n\n'
            'Garam merupakan sesuatu yang hidup seperti air dan juga bungaan ,dimana'
            'ketiga-tiganya mempunyai aura tersendiri. Contoh air apabila kita berkata'
            'perkara-perkara positif maka positiflah ia, andainya negatif maka negatiflah dia. '
            '(Sebelum ni juga pernah dilakukan kajian, keatas molekul air yang dibacakan '
            'dengan ayat al quran susunannya lebih cantik berbanding air yang tidak dibacakan ayat suci alquran.)\n\n'
            'Sama juga garam dan pati bungaan. Walaubagaimanapun, Garam Aura Gold 769 '
            'ini adalah sebagai asbab sahaja, sebenarnya semua kejadian adalah dari Allah, '
            'yang mengizinkan sembuh dan sebagainya juga adalah Allah. Macam kita sakit '
            'kepala kita ambik panadol, so yang menyembuhkan Allah dan panadol itu asbab sahaja.\n\n'

            'Dapatkan Garam Aura Gold 769 ini apabila anda ingin rasai sendiri kelainannya mengamalkan mandian garam.\n\n'
            
            'Mandian hendaklah dilakukan berturut-turut selama 21 hari, sekiranya terlupa'
            'kena bermula semula dari satu sehingga 21 hari. Ini dilakukan supaya dapat buang'
            'semua penyakit/ perkara negatif yang berada dalam tubuh kita.',
        rating: 8.7,
        directors: 'Directors: Anthony Russo, Joe Russo',
        releaseDate: 'RM169',
        releaseDateDesc: 'Harga : RM169',
        runtime: '2h 29min',
        bannerUrl: 'assets/img/aura.jpg',
        imageUrl: 'assets/img/p2.png',
      ),
      Item(
        id: 1,
        name: 'Set Trial : Mandian Aura 769',
        category: 'Set Aura 769',
        desc:'Apa kelebihan menggunakan Garam Aura 769 sebagai garam mandian?\n\n '
            '1. Menangani serta menghilangkan stress dan tekanan perasaan.\n'
            '2. Mengembalikan tenaga yang hilang.\n'
            '3. Membantu merawat dan menangani migrain dan sakit kepala.\n'
            '4. Melindungi kulit daripada kering.\n'
            '5. Mengimbangi tekanan darah.\n'
            '6. Meningkatkan kandungan oksigen dalam tubuh.\n'
            '7. Membantu dalam penyembuhan penyakit kulit, melembut dan menghaluskan kulit badan.\n\n'

            'Keistimewaan Garam Mandian Assyifa’ Garam Aura Gold 769 yang tidak terdapat pada produk lain\n\n '
            '1. Menampal ‘AURA BOCOR’, merawat serta membesarkan AURA DIRI.\n '
            '2. Membantu menangani serta mengelakkan gangguan makhluk halus.\n '
            '3. Menaikkan SERI WAJAH.\n '
            '4. Membantu memulihkan semangat yang telah luntur\n '
            '5. Membantu merapatkan hubungan kekeluargaan, persaudaraan, serta rakan sekerja.\n '
            '6. Membantu sebagai ‘PELARIS’ semulajadi untuk perniagaan/Kerjaya.\n '
            '7. Membantu menunaikan hajat/niat yang khusus.\n '
            '8. Membantu menguatkan ‘MAGNET’kekayaan dan kejayaan diri.\n '
            '9. Membantu meningkatkan keyakinan diri.\n '

            'Adakah anda memerlukan produk ini?\n\n'
            'Garam merupakan sesuatu yang hidup seperti air dan juga bungaan ,dimana'
            'ketiga-tiganya mempunyai aura tersendiri. Contoh air apabila kita berkata'
            'perkara-perkara positif maka positiflah ia, andainya negatif maka negatiflah dia. '
            '(Sebelum ni juga pernah dilakukan kajian, keatas molekul air yang dibacakan '
            'dengan ayat al quran susunannya lebih cantik berbanding air yang tidak dibacakan ayat suci alquran.)\n\n'
            'Sama juga garam dan pati bungaan. Walaubagaimanapun, Garam Aura Gold 769 '
            'ini adalah sebagai asbab sahaja, sebenarnya semua kejadian adalah dari Allah, '
            'yang mengizinkan sembuh dan sebagainya juga adalah Allah. Macam kita sakit '
            'kepala kita ambik panadol, so yang menyembuhkan Allah dan panadol itu asbab sahaja.\n\n'

            'Dapatkan Garam Aura Gold 769 ini apabila anda ingin rasai sendiri kelainannya mengamalkan mandian garam.\n\n'
            
            'Mandian hendaklah dilakukan berturut-turut selama 21 hari, sekiranya terlupa'
            'kena bermula semula dari satu sehingga 21 hari. Ini dilakukan supaya dapat buang'
            'semua penyakit/ perkara negatif yang berada dalam tubuh kita.',
        rating: 5.2,
        directors: 'Directors: Michael Bay',
        releaseDate: 'RM69',
        releaseDateDesc: 'Harga : RM69',
        runtime: '2h 34min',
        bannerUrl: 'assets/img/trial769.jpg',
        imageUrl: 'assets/img/p3.png',
      ),
      Item(
        id: 2,
        name: 'Set Premium : Auro Gold',
        category: 'Set Aura 769',
        desc: 'Apa kelebihan menggunakan Garam Aura 769 sebagai garam mandian?\n\n '
            '1. Menangani serta menghilangkan stress dan tekanan perasaan.\n'
            '2. Mengembalikan tenaga yang hilang.\n'
            '3. Membantu merawat dan menangani migrain dan sakit kepala.\n'
            '4. Melindungi kulit daripada kering.\n'
            '5. Mengimbangi tekanan darah.\n'
            '6. Meningkatkan kandungan oksigen dalam tubuh.\n'
            '7. Membantu dalam penyembuhan penyakit kulit, melembut dan menghaluskan kulit badan.\n\n'

            'Keistimewaan Garam Mandian Assyifa’ Garam Aura Gold 769 yang tidak terdapat pada produk lain\n\n '
            '1. Menampal ‘AURA BOCOR’, merawat serta membesarkan AURA DIRI.\n '
            '2. Membantu menangani serta mengelakkan gangguan makhluk halus.\n '
            '3. Menaikkan SERI WAJAH.\n '
            '4. Membantu memulihkan semangat yang telah luntur\n '
            '5. Membantu merapatkan hubungan kekeluargaan, persaudaraan, serta rakan sekerja.\n '
            '6. Membantu sebagai ‘PELARIS’ semulajadi untuk perniagaan/Kerjaya.\n '
            '7. Membantu menunaikan hajat/niat yang khusus.\n '
            '8. Membantu menguatkan ‘MAGNET’kekayaan dan kejayaan diri.\n '
            '9. Membantu meningkatkan keyakinan diri.\n '

            'Adakah anda memerlukan produk ini?\n\n'
            'Garam merupakan sesuatu yang hidup seperti air dan juga bungaan ,dimana'
            'ketiga-tiganya mempunyai aura tersendiri. Contoh air apabila kita berkata'
            'perkara-perkara positif maka positiflah ia, andainya negatif maka negatiflah dia. '
            '(Sebelum ni juga pernah dilakukan kajian, keatas molekul air yang dibacakan '
            'dengan ayat al quran susunannya lebih cantik berbanding air yang tidak dibacakan ayat suci alquran.)\n\n'
            'Sama juga garam dan pati bungaan. Walaubagaimanapun, Garam Aura Gold 769 '
            'ini adalah sebagai asbab sahaja, sebenarnya semua kejadian adalah dari Allah, '
            'yang mengizinkan sembuh dan sebagainya juga adalah Allah. Macam kita sakit '
            'kepala kita ambik panadol, so yang menyembuhkan Allah dan panadol itu asbab sahaja.\n\n'

            'Dapatkan Garam Aura Gold 769 ini apabila anda ingin rasai sendiri kelainannya mengamalkan mandian garam.\n\n'
            
            'Mandian hendaklah dilakukan berturut-turut selama 21 hari, sekiranya terlupa'
            'kena bermula semula dari satu sehingga 21 hari. Ini dilakukan supaya dapat buang'
            'semua penyakit/ perkara negatif yang berada dalam tubuh kita.',
        rating: 5.7,
        directors: 'Directors: Steven S. DeKnight',
        releaseDate: 'RM199',
        releaseDateDesc: 'Harga : RM199',
        runtime: '1h 51min',
        bannerUrl: 'assets/img/vip.jpg',
        imageUrl: 'assets/img/p1.png',
      ),
      Item(
        id: 3,
        name: 'Set Trial : Auro Gold',
        category: 'Set Aura 769',
        desc: 'Apa kelebihan menggunakan Garam Aura 769 sebagai garam mandian?\n\n '
            '1. Menangani serta menghilangkan stress dan tekanan perasaan.\n'
            '2. Mengembalikan tenaga yang hilang.\n'
            '3. Membantu merawat dan menangani migrain dan sakit kepala.\n'
            '4. Melindungi kulit daripada kering.\n'
            '5. Mengimbangi tekanan darah.\n'
            '6. Meningkatkan kandungan oksigen dalam tubuh.\n'
            '7. Membantu dalam penyembuhan penyakit kulit, melembut dan menghaluskan kulit badan.\n\n'

            'Keistimewaan Garam Mandian Assyifa’ Garam Aura Gold 769 yang tidak terdapat pada produk lain\n\n '
            '1. Menampal ‘AURA BOCOR’, merawat serta membesarkan AURA DIRI.\n '
            '2. Membantu menangani serta mengelakkan gangguan makhluk halus.\n '
            '3. Menaikkan SERI WAJAH.\n '
            '4. Membantu memulihkan semangat yang telah luntur\n '
            '5. Membantu merapatkan hubungan kekeluargaan, persaudaraan, serta rakan sekerja.\n '
            '6. Membantu sebagai ‘PELARIS’ semulajadi untuk perniagaan/Kerjaya.\n '
            '7. Membantu menunaikan hajat/niat yang khusus.\n '
            '8. Membantu menguatkan ‘MAGNET’kekayaan dan kejayaan diri.\n '
            '9. Membantu meningkatkan keyakinan diri.\n '

            'Adakah anda memerlukan produk ini?\n\n'
            'Garam merupakan sesuatu yang hidup seperti air dan juga bungaan ,dimana'
            'ketiga-tiganya mempunyai aura tersendiri. Contoh air apabila kita berkata'
            'perkara-perkara positif maka positiflah ia, andainya negatif maka negatiflah dia. '
            '(Sebelum ni juga pernah dilakukan kajian, keatas molekul air yang dibacakan '
            'dengan ayat al quran susunannya lebih cantik berbanding air yang tidak dibacakan ayat suci alquran.)\n\n'
            'Sama juga garam dan pati bungaan. Walaubagaimanapun, Garam Aura Gold 769 '
            'ini adalah sebagai asbab sahaja, sebenarnya semua kejadian adalah dari Allah, '
            'yang mengizinkan sembuh dan sebagainya juga adalah Allah. Macam kita sakit '
            'kepala kita ambik panadol, so yang menyembuhkan Allah dan panadol itu asbab sahaja.\n\n'

            'Dapatkan Garam Aura Gold 769 ini apabila anda ingin rasai sendiri kelainannya mengamalkan mandian garam.\n\n'
            
            'Mandian hendaklah dilakukan berturut-turut selama 21 hari, sekiranya terlupa'
            'kena bermula semula dari satu sehingga 21 hari. Ini dilakukan supaya dapat buang'
            'semua penyakit/ perkara negatif yang berada dalam tubuh kita.',
        rating: 7.9,
        directors: 'Directors: Taika Waititi',
        releaseDate: 'RM99',
        releaseDateDesc: 'Harga : RM99',
        runtime: '2h 10min',
        bannerUrl: 'assets/img/trial_vip.jpg',
        imageUrl: 'assets/img/p4.png',
      ),
    ];
  }
}