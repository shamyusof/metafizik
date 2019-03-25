import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:firebase_admob/firebase_admob.dart';

class jodohPage extends StatefulWidget {
  _jodohPageState createState() => _jodohPageState();
}

class _jodohPageState extends State<jodohPage> {

  InterstitialAd createInterstitialAd() {
    return new InterstitialAd(
        adUnitId: "ca-app-pub-1877517412301043/7858082295",
        //targetingInfo: targetInfo,
        listener: (MobileAdEvent event) {
          print("Interstitial event : $event");
        });
  }

  /// variable no asas 1

  var hari, bulan;
  String tahun, formatted;
  var tahun1, tahun2, noHari, noBulan, noTahun1 ,noTahun2;
  var forHari = new DateFormat('dd');
  var forBulan = new DateFormat('MM');
  var forTahun = new DateFormat('yy');

  var fTahun, fHari, fBulan,noAb, noC,noDe, noF,noCf, noAsas;

  // variable no asas 2

  var _hari, _bulan;
  String _tahun, _formatted;
  var _tahun1, _tahun2, _noHari, _noBulan, _noTahun1 , _noTahun2;
  var _forHari = new DateFormat('dd');
  var _forBulan = new DateFormat('MM');
  var _forTahun = new DateFormat('yy');

  var _fTahun, _fHari, _fBulan, _noAb, _noC, _noDe, _noF, _noCf, _noAsas, noPasangan, _noPasangan, serasi;


  //////// End variable  //////

  void _showPicker(){
    showDatePicker(
      context: context,
      firstDate: new DateTime(1950),
      initialDate: new DateTime(2018),
      lastDate: DateTime.now())
      
      .then((DateTime dt) {
        setState(() {
           tahun = "$dt.year";
           fTahun = forTahun.format(dt);
           hari = dt.day;
           fHari = forHari.format(dt);
           bulan = dt.month;
           fBulan = forBulan.format(dt);
           tahun1 = dt.year;
           tahun2 = tahun.substring(0, 2);
           kiraNoHari();
           kiraNoBulan();
           kiraNoTahun1();
           kiraNoTahun2();
           kiraNoKiri();
           kiraNoKanan();
           kiraNoAsas();
        });
      });
  }

  void kiraNoHari(){

    setState(() {
     if(hari == 10 ){
      noHari = 1;
      } else if(hari == 11 ){
      noHari = 2;
      }else if(hari == 12 ){
      noHari = 3;
      }else if(hari == 13 ){
      noHari = 4;
      }else if(hari == 14 ){
      noHari = 5;
      }else if(hari == 15 ){
      noHari = 6;
      }else if(hari == 16 ){
      noHari = 7;
      }else if(hari == 17 ){
      noHari = 8;
      }else if(hari == 18 ){
      noHari = 9;
      }else if(hari == 19 ){
      noHari = 1;
      } else if(hari == 20 ){
      noHari = 2;
      }else if(hari == 21 ){
      noHari = 3;
      }else if(hari == 22 ){
      noHari = 4;
      }else if(hari == 23 ){
      noHari = 5;
      }else if(hari == 24 ){
      noHari = 6;
      }else if(hari == 25 ){
      noHari = 7;
      }else if(hari == 26 ){
      noHari = 8;
      }else if(hari == 27 ){
      noHari = 9;
      }else if(hari == 28 ){
      noHari = 1;
      } else if(hari == 29 ){
      noHari = 2;
      }else if(hari == 30 ){
      noHari = 3;
      }else if(hari == 31 ){
      noHari = 4;
      }else{
        noHari = hari;
      } 
          
    });
    
  }

  void kiraNoBulan(){

    setState(() {
     if(bulan == 10 ){
      noBulan = 1;
      } else if(bulan == 11 ){
      noBulan = 2;
      } else if(bulan == 12 ){
      noBulan = 3;
      }else{
        noBulan = bulan;
      } 
          
    });
    
  }

  void kiraNoTahun1(){

    setState(() {
     if(tahun2 == '20' ){
      noTahun1 = 2;
      } else if(tahun2 == '19' ){
      noTahun1 = 1;
      }else{
        noTahun1 = tahun2;
      } 
          
    });
    
  }

  void kiraNoTahun2(){

    setState(() {
     if(fTahun=="01"){
        noTahun2= 1;
    }else if(fTahun=="02"){
        noTahun2= 2;
    }else if(fTahun=="03"){
        noTahun2= 3;
    }else if(fTahun=="04"){
        noTahun2= 4;
    }else if(fTahun=="05"){
        noTahun2= 5;
    }else if(fTahun=="06"){
        noTahun2= 6;
    }else if(fTahun=="07"){
        noTahun2= 7;
    }else if(fTahun=="08"){
        noTahun2= 8;
    }else if(fTahun=="09"){
        noTahun2= 9;
    }else if(fTahun=="10"){
        noTahun2= 1;
    }else if(fTahun=="11"){
        noTahun2= 2;
    }else if(fTahun=="12"){
        noTahun2= 3;
    }else if(fTahun=="13"){
        noTahun2= 4;
    }else if(fTahun=="14"){
        noTahun2= 5;
    }else if(fTahun=="15"){
        noTahun2= 6;
    }else if(fTahun=="16"){
        noTahun2= 7;
    }else if(fTahun=="17"){
        noTahun2= 8;
    }else if(fTahun=="18"){
        noTahun2= 9;
    }else if(fTahun=="19"){
        noTahun2= 1;
    }else if(fTahun=="20"){
        noTahun2= 2;
    }else if(fTahun=="21"){
        noTahun2= 3;
    }else if(fTahun=="22"){
        noTahun2= 4;
    }else if(fTahun=="23"){
        noTahun2= 5;
    }else if(fTahun=="24"){
        noTahun2= 6;
    }else if(fTahun=="25"){
        noTahun2= 7;
    }else if(fTahun=="26"){
        noTahun2= 8;
    }else if(fTahun=="27"){
        noTahun2= 9;
    }else if(fTahun=="28"){
        noTahun2= 1;
    }else if(fTahun=="29"){
        noTahun2= 2;
    }else if(fTahun=="30"){
        noTahun2= 3;
    }else if(fTahun=="31"){
        noTahun2= 4;
    }else if(fTahun=="32"){
        noTahun2= 5;
    }else if(fTahun=="33"){
        noTahun2= 6;
    }else if(fTahun=="34"){
        noTahun2= 7;
    }else if(fTahun=="35"){
        noTahun2= 8;
    }else if(fTahun=="36"){
        noTahun2= 9;
    }else if(fTahun=="37"){
        noTahun2= 1;
    }else if(fTahun=="38"){
        noTahun2= 2;
    }else if(fTahun=="39"){
        noTahun2= 3;
    }else if(fTahun=="40"){
        noTahun2= 4;
    }else if(fTahun=="41"){
        noTahun2= 5;
    }else if(fTahun=="42"){
        noTahun2= 6;
    }else if(fTahun=="43"){
        noTahun2= 7;
    }else if(fTahun=="44"){
        noTahun2= 8;
    }else if(fTahun=="45"){
        noTahun2= 9;
    }else if(fTahun=="46"){
        noTahun2= 1;
    }else if(fTahun=="47"){
        noTahun2= 2;
    }else if(fTahun=="48"){
        noTahun2= 3;
    }else if(fTahun=="49"){
        noTahun2= 4;
    }else if(fTahun=="50"){
        noTahun2= 5;
    }else if(fTahun=="51"){
        noTahun2= 6;
    }else if(fTahun=="52"){
        noTahun2= 7;
    }else if(fTahun=="53"){
        noTahun2= 8;
    }else if(fTahun=="54"){
        noTahun2= 9;
    }else if(fTahun=="55"){
        noTahun2= 1;
    }else if(fTahun=="56"){
        noTahun2= 2;
    }else if(fTahun=="57"){
        noTahun2= 3;
    }else if(fTahun=="58"){
        noTahun2= 4;
    }else if(fTahun=="59"){
        noTahun2= 5;
    }else if(fTahun=="60"){
        noTahun2= 6;
    }else if(fTahun=="61"){
        noTahun2= 7;
    }else if(fTahun=="62"){
        noTahun2= 8;
    }else if(fTahun=="63"){
        noTahun2= 9;
    }else if(fTahun=="64"){
        noTahun2= 1;
    }else if(fTahun=="65"){
        noTahun2= 2;
    }else if(fTahun=="66"){
        noTahun2= 3;
    }else if(fTahun=="67"){
        noTahun2= 4;
    }else if(fTahun=="68"){
        noTahun2= 5;
    }else if(fTahun=="69"){
        noTahun2= 6;
    }else if(fTahun=="70"){
        noTahun2= 7;
    }else if(fTahun=="71"){
        noTahun2= 8;
    }else if(fTahun=="72"){
        noTahun2= 9;
    }else if(fTahun=="73"){
        noTahun2= 1;
    }else if(fTahun=="74"){
        noTahun2= 2;
    }else if(fTahun=="75"){
        noTahun2= 3;
    }else if(fTahun=="76"){
        noTahun2= 4;
    }else if(fTahun=="77"){
        noTahun2= 5;
    }else if(fTahun=="78"){
        noTahun2= 6;
    }else if(fTahun=="79"){
        noTahun2= 7;
    }else if(fTahun=="80"){
        noTahun2= 8;
    }else if(fTahun=="81"){
        noTahun2= 9;
    }else if(fTahun=="82"){
        noTahun2= 1;
    }else if(fTahun=="83"){
        noTahun2= 2;
    }else if(fTahun=="84"){
        noTahun2= 3;
    }else if(fTahun=="85"){
        noTahun2= 4;
    }else if(fTahun=="86"){
        noTahun2= 5;
    }else if(fTahun=="87"){
        noTahun2= 6;
    }else if(fTahun=="88"){
        noTahun2= 7;
    }else if(fTahun=="89"){
        noTahun2= 8;
    }else if(fTahun=="90"){
        noTahun2= 9;
    }else if(fTahun=="91"){
        noTahun2= 1;
    }else if(fTahun=="92"){
        noTahun2= 2;
    }else if(fTahun=="93"){
        noTahun2= 3;
    }else if(fTahun=="94"){
        noTahun2= 4;
    }else if(fTahun=="95"){
        noTahun2= 5;
    }else if(fTahun=="96"){
        noTahun2= 6;
    }else if(fTahun=="97"){
        noTahun2= 7;
    }else if(fTahun=="98"){
        noTahun2= 8;
    }else if(fTahun=="99"){
        noTahun2= 9;
    }else if(fTahun=="00"){
        noTahun2= 5;
    }else{
        noTahun2= fTahun;
    }
          
    });
    
  }

  void kiraNoKiri(){

    noAb = noHari + noBulan;

    setState(() {
     if(noAb == 10 ){
        noC = 1;
      }else if(noAb == 11 ){
          noC = 2;
      }else if(noAb == 12 ){
          noC = 3;
      }else if(noAb == 13 ){
          noC = 4;
      }else if(noAb == 14 ){
          noC = 5;
      }else if(noAb == 15 ){
          noC = 6;
      }else if(noAb == 16 ){
          noC = 7;
      }else if(noAb == 17 ){
          noC = 8;
      }else if(noAb == 18 ){
          noC = 9;
      }else{
          noC = noAb ;
      }
    
          
    });
    
  }

  void kiraNoKanan(){

    noDe = noTahun1 + noTahun2;

    setState(() {
     if(noDe == 10 ){
        noF = 1;
      }else if(noDe == 11 ){
          noF = 2;
      }else if(noDe == 12 ){
          noF = 3;
      }else if(noDe == 13 ){
          noF = 4;
      }else if(noDe == 14 ){
          noF = 5;
      }else if(noDe == 15 ){
          noF = 6;
      }else if(noDe == 16 ){
          noF = 7;
      }else if(noDe == 17 ){
          noF = 8;
      }else if(noDe == 18 ){
          noF = 9;
      }else if(noDe == null ){
          noF = 'hehe';
      }else{
          noF = noDe ;
      }
              
    });
    
  }

  void kiraNoAsas(){

    noCf = noC + noF;

    setState(() {
     if(noCf == 10 ){
        noAsas = 1;
      }else if(noCf == 11 ){
          noAsas = 2;
      }else if(noCf == 12 ){
          noAsas = 3;
      }else if(noCf == 13 ){
          noAsas = 4;
      }else if(noCf == 14 ){
          noAsas = 5;
      }else if(noCf == 15 ){
          noAsas = 6;
      }else if(noCf == 16 ){
          noAsas = 7;
      }else if(noCf == 17 ){
          noAsas = 8;
      }else if(noCf == 18 ){
          noAsas = 9;
      }else{
          noAsas = noCf ;
      }
              
    });
    
  }

//// kiraan no pasangan


void _kiraNoHari(){

    setState(() {
     if(_hari == 10 ){
      _noHari = 1;
      } else if(_hari == 11 ){
      _noHari = 2;
      }else if(_hari == 12 ){
      _noHari = 3;
      }else if(_hari == 13 ){
      _noHari = 4;
      }else if(_hari == 14 ){
      _noHari = 5;
      }else if(_hari == 15 ){
      _noHari = 6;
      }else if(_hari == 16 ){
      _noHari = 7;
      }else if(_hari == 17 ){
      _noHari = 8;
      }else if(_hari == 18 ){
      _noHari = 9;
      }else if(_hari == 19 ){
      _noHari = 1;
      } else if(_hari == 20 ){
      _noHari = 2;
      }else if(_hari == 21 ){
      _noHari = 3;
      }else if(_hari == 22 ){
      _noHari = 4;
      }else if(_hari == 23 ){
      _noHari = 5;
      }else if(_hari == 24 ){
      _noHari = 6;
      }else if(_hari == 25 ){
      _noHari = 7;
      }else if(_hari == 26 ){
      _noHari = 8;
      }else if(_hari == 27 ){
      _noHari = 9;
      }else if(_hari == 28 ){
      _noHari = 1;
      } else if(_hari == 29 ){
      _noHari = 2;
      }else if(_hari == 30 ){
      _noHari = 3;
      }else if(_hari == 31 ){
      _noHari = 4;
      }else{
        _noHari = _hari;
      } 
          
    });
    
  }

  void _kiraNoBulan(){

    setState(() {
     if(_bulan == 10 ){
      _noBulan = 1;
      } else if(_bulan == 11 ){
      _noBulan = 2;
      } else if(_bulan == 12 ){
      _noBulan = 3;
      }else{
        _noBulan = _bulan;
      } 
          
    });
    
  }

  void _kiraNoTahun1(){

    setState(() {
     if(_tahun2 == '20' ){
      _noTahun1 = 2;
      } else if(_tahun2 == '19' ){
      _noTahun1 = 1;
      }else{
        _noTahun1 = _tahun2;
      } 
          
    });
    
  }

  void _kiraNoTahun2(){

    setState(() {
     if(_fTahun=="01"){
        _noTahun2= 1;
    }else if(_fTahun=="02"){
        _noTahun2= 2;
    }else if(_fTahun=="03"){
        _noTahun2= 3;
    }else if(_fTahun=="04"){
        _noTahun2= 4;
    }else if(_fTahun=="05"){
        _noTahun2= 5;
    }else if(_fTahun=="06"){
        _noTahun2= 6;
    }else if(_fTahun=="07"){
        _noTahun2= 7;
    }else if(_fTahun=="08"){
        _noTahun2= 8;
    }else if(_fTahun=="09"){
        _noTahun2= 9;
    }else if(_fTahun=="10"){
        _noTahun2= 1;
    }else if(_fTahun=="11"){
        _noTahun2= 2;
    }else if(_fTahun=="12"){
        _noTahun2= 3;
    }else if(_fTahun=="13"){
        _noTahun2= 4;
    }else if(_fTahun=="14"){
        _noTahun2= 5;
    }else if(_fTahun=="15"){
        _noTahun2= 6;
    }else if(_fTahun=="16"){
        _noTahun2= 7;
    }else if(_fTahun=="17"){
        _noTahun2= 8;
    }else if(_fTahun=="18"){
        _noTahun2= 9;
    }else if(_fTahun=="19"){
        _noTahun2= 1;
    }else if(_fTahun=="20"){
        _noTahun2= 2;
    }else if(_fTahun=="21"){
        _noTahun2= 3;
    }else if(_fTahun=="22"){
        _noTahun2= 4;
    }else if(_fTahun=="23"){
        _noTahun2= 5;
    }else if(_fTahun=="24"){
        _noTahun2= 6;
    }else if(_fTahun=="25"){
        _noTahun2= 7;
    }else if(_fTahun=="26"){
        _noTahun2= 8;
    }else if(_fTahun=="27"){
        _noTahun2= 9;
    }else if(_fTahun=="28"){
        _noTahun2= 1;
    }else if(_fTahun=="29"){
        _noTahun2= 2;
    }else if(_fTahun=="30"){
        _noTahun2= 3;
    }else if(_fTahun=="31"){
        _noTahun2= 4;
    }else if(_fTahun=="32"){
        _noTahun2= 5;
    }else if(_fTahun=="33"){
        _noTahun2= 6;
    }else if(_fTahun=="34"){
        _noTahun2= 7;
    }else if(_fTahun=="35"){
        _noTahun2= 8;
    }else if(_fTahun=="36"){
        _noTahun2= 9;
    }else if(_fTahun=="37"){
        _noTahun2= 1;
    }else if(_fTahun=="38"){
        _noTahun2= 2;
    }else if(_fTahun=="39"){
        _noTahun2= 3;
    }else if(_fTahun=="40"){
        _noTahun2= 4;
    }else if(_fTahun=="41"){
        _noTahun2= 5;
    }else if(_fTahun=="42"){
        _noTahun2= 6;
    }else if(_fTahun=="43"){
        _noTahun2= 7;
    }else if(_fTahun=="44"){
        _noTahun2= 8;
    }else if(_fTahun=="45"){
        _noTahun2= 9;
    }else if(_fTahun=="46"){
        _noTahun2= 1;
    }else if(_fTahun=="47"){
        _noTahun2= 2;
    }else if(_fTahun=="48"){
        _noTahun2= 3;
    }else if(_fTahun=="49"){
        _noTahun2= 4;
    }else if(_fTahun=="50"){
        _noTahun2= 5;
    }else if(_fTahun=="51"){
        _noTahun2= 6;
    }else if(_fTahun=="52"){
        _noTahun2= 7;
    }else if(_fTahun=="53"){
        _noTahun2= 8;
    }else if(_fTahun=="54"){
        _noTahun2= 9;
    }else if(_fTahun=="55"){
        _noTahun2= 1;
    }else if(_fTahun=="56"){
        _noTahun2= 2;
    }else if(_fTahun=="57"){
        _noTahun2= 3;
    }else if(_fTahun=="58"){
        _noTahun2= 4;
    }else if(_fTahun=="59"){
        _noTahun2= 5;
    }else if(_fTahun=="60"){
        _noTahun2= 6;
    }else if(_fTahun=="61"){
        _noTahun2= 7;
    }else if(_fTahun=="62"){
        _noTahun2= 8;
    }else if(_fTahun=="63"){
        _noTahun2= 9;
    }else if(_fTahun=="64"){
        _noTahun2= 1;
    }else if(_fTahun=="65"){
        _noTahun2= 2;
    }else if(_fTahun=="66"){
        _noTahun2= 3;
    }else if(_fTahun=="67"){
        _noTahun2= 4;
    }else if(_fTahun=="68"){
        _noTahun2= 5;
    }else if(_fTahun=="69"){
        _noTahun2= 6;
    }else if(_fTahun=="70"){
        _noTahun2= 7;
    }else if(_fTahun=="71"){
        _noTahun2= 8;
    }else if(_fTahun=="72"){
        _noTahun2= 9;
    }else if(_fTahun=="73"){
        _noTahun2= 1;
    }else if(_fTahun=="74"){
        _noTahun2= 2;
    }else if(_fTahun=="75"){
        _noTahun2= 3;
    }else if(_fTahun=="76"){
        _noTahun2= 4;
    }else if(_fTahun=="77"){
        _noTahun2= 5;
    }else if(_fTahun=="78"){
        _noTahun2= 6;
    }else if(_fTahun=="79"){
        _noTahun2= 7;
    }else if(_fTahun=="80"){
        _noTahun2= 8;
    }else if(_fTahun=="81"){
        _noTahun2= 9;
    }else if(_fTahun=="82"){
        _noTahun2= 1;
    }else if(_fTahun=="83"){
        _noTahun2= 2;
    }else if(_fTahun=="84"){
        _noTahun2= 3;
    }else if(_fTahun=="85"){
        _noTahun2= 4;
    }else if(_fTahun=="86"){
        _noTahun2= 5;
    }else if(_fTahun=="87"){
        _noTahun2= 6;
    }else if(_fTahun=="88"){
        _noTahun2= 7;
    }else if(_fTahun=="89"){
        _noTahun2= 8;
    }else if(_fTahun=="90"){
        _noTahun2= 9;
    }else if(_fTahun=="91"){
        _noTahun2= 1;
    }else if(_fTahun=="92"){
        _noTahun2= 2;
    }else if(_fTahun=="93"){
        _noTahun2= 3;
    }else if(_fTahun=="94"){
        _noTahun2= 4;
    }else if(_fTahun=="95"){
        _noTahun2= 5;
    }else if(_fTahun=="96"){
        _noTahun2= 6;
    }else if(_fTahun=="97"){
        _noTahun2= 7;
    }else if(_fTahun=="98"){
        _noTahun2= 8;
    }else if(_fTahun=="99"){
        _noTahun2= 9;
    }else if(_fTahun=="00"){
        _noTahun2= 5;
    }else{
        _noTahun2= _fTahun;
    }
          
    });
    
  }

  void _kiraNoKiri(){

    _noAb = _noHari + _noBulan;

    setState(() {
     if(_noAb == 10 ){
        _noC = 1;
      }else if(_noAb == 11 ){
          _noC = 2;
      }else if(_noAb == 12 ){
          _noC = 3;
      }else if(_noAb == 13 ){
          _noC = 4;
      }else if(_noAb == 14 ){
          _noC = 5;
      }else if(_noAb == 15 ){
          _noC = 6;
      }else if(_noAb == 16 ){
          _noC = 7;
      }else if(_noAb == 17 ){
          _noC = 8;
      }else if(_noAb == 18 ){
          _noC = 9;
      }else{
          _noC = _noAb ;
      }
    
          
    });
    
  }

  void _kiraNoKanan(){

    _noDe = _noTahun1 + _noTahun2;

    setState(() {
     if(_noDe == 10 ){
        noF = 1;
      }else if(_noDe == 11 ){
          noF = 2;
      }else if(_noDe == 12 ){
          noF = 3;
      }else if(_noDe == 13 ){
          noF = 4;
      }else if(_noDe == 14 ){
          noF = 5;
      }else if(_noDe == 15 ){
          noF = 6;
      }else if(_noDe == 16 ){
          noF = 7;
      }else if(_noDe == 17 ){
          noF = 8;
      }else if(_noDe == 18 ){
          noF = 9;
      }else if(_noDe == null ){
          noF = 'hehe';
      }else{
          noF = _noDe ;
      }
              
    });
    
  }

  void _kiraNoAsas(){

    _noCf = _noC + noF;

    setState(() {
     if(_noCf == 10 ){
        _noAsas = 1;
      }else if(_noCf == 11 ){
          _noAsas = 2;
      }else if(_noCf == 12 ){
          _noAsas = 3;
      }else if(_noCf == 13 ){
          _noAsas = 4;
      }else if(_noCf == 14 ){
          _noAsas = 5;
      }else if(_noCf == 15 ){
          _noAsas = 6;
      }else if(_noCf == 16 ){
          _noAsas = 7;
      }else if(_noCf == 17 ){
          _noAsas = 8;
      }else if(_noCf == 18 ){
          _noAsas = 9;
      }else{
          _noAsas = _noCf ;
      }
              
    });
    
  }


 void _showPickerPasangan(){
    showDatePicker(
      context: context,
      firstDate: new DateTime(1950),
      initialDate: new DateTime(2018),
      lastDate: DateTime.now())
      
      .then((DateTime dte) {
        setState(() {
           _tahun = "$dte.year";
           _fTahun = forTahun.format(dte);
           _hari = dte.day;
           _fHari = _forHari.format(dte);
           _bulan = dte.month;
           _fBulan = _forBulan.format(dte);
           _tahun1 = dte.year;
           _tahun2 = _tahun.substring(0, 2);
           _kiraNoHari();
           _kiraNoBulan();
           _kiraNoTahun1();
           _kiraNoTahun2();
           _kiraNoKiri();
           _kiraNoKanan();
           _kiraNoAsas();
           _kiraNoPasangan();
           keserasian();
           createInterstitialAd()
          ..load()
          ..show();
        });
      });
  }

  void _kiraNoPasangan(){

    noPasangan = noAsas + _noAsas;

    setState(() {
     if(noPasangan == 10 ){
        _noPasangan = 1;
      }else if(noPasangan == 11 ){
          _noPasangan = 2;
      }else if(noPasangan == 12 ){
          _noPasangan = 3;
      }else if(noPasangan == 13 ){
          _noPasangan = 4;
      }else if(noPasangan == 14 ){
          _noPasangan = 5;
      }else if(noPasangan == 15 ){
          _noPasangan = 6;
      }else if(noPasangan == 16 ){
          _noPasangan = 7;
      }else if(noPasangan == 17 ){
          _noPasangan = 8;
      }else if(noPasangan == 18 ){
          _noPasangan = 9;
      }else{
          _noPasangan = noPasangan ;
      }
              
    });
    
  }



  void keserasian(){


    setState(() {
     if(_noPasangan == 1 ){
       serasi = 'Perhubungan Agak Keras, Banyak Bergerak Sendiri, Independent, Banyak Salah Faham, Banyak Kecil Hati Oleh Sikap Pasangan, Kuat Mengarah, Banyak Menyendiri, Hubungan Dicemburui.';
      }else if(_noPasangan == 2 ){
          serasi = 'Hubungan Intim, Mesra, Ceria, Suka Berkepit Sana Sini, Banyak Bercerita “Membawang” , Banyak Merajuk Dan Menangis. So Far Inilah Angka Dikatakan Paling Terbaik Dalam Bab Jodoh, Maybe..';
      }else if(_noPasangan == 3 ){
          serasi = 'Sedikit Panas, Banyak Aktiviti Lasak, Suka Bergaduh, Pandai Memujuk, Banyak Travel Dan Tak Duduk Diam';
      }else if(_noPasangan == 4 ){
          serasi = 'Banyak Berdiam Diri, Banyak Belajar Bersama, Kaku Dan Tidak Romantik, So Far Ok ler.';
      }else if(_noPasangan == 5 ){
          serasi = 'Banyak Moody Each Other, Ade Je yg Tak Kena, Kena Banyak Adventure Dalam Rumahtangga. Banyak makan hati. SABAR Huhuhu';
      }else if(_noPasangan == 6 ){
          serasi = 'Kekeluargaan Yang Baik, Kewangan Baik, Otak Bisnes, Rezeki, Family Oriented Dan Juga Scandal..hehe';
      }else if(_noPasangan == 7 ){
          serasi = 'Bagus, Kerohanian, Cinta, Kasih Sayang, Anak Lebat!!';
      }else if(_noPasangan == 8 ){
          serasi = 'Sibuk, Penat, Banyak Tanggungjawab, Kaya Tapi Sibuk Dan Stress Atau Banyak Uruskan Isu Orang Lain.';
      }else if(_noPasangan == 9 ){
          serasi = 'Bisnes, Aset, Rezeki, Kejayaan, Bisnes Family, Idea Bisnes, Bahagia';
      }else{
          serasi = '';
      }
              
    });
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  new ListView(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.all(20.0),
            child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
 
             new RawMaterialButton(
                  fillColor: Colors.amber[800],
                  splashColor: Colors.amber,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 20.0,
                    ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.today,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8.0),

                      Text("Sila Pilih Tarikh Lahir Anda",
                        style:  TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],

                  ),
                  ),
                  onPressed: (){ _showPicker();
                  },
                  //shape: StadiumBorder(),
                ),

 
                new Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                ),


                new RawMaterialButton(
                  fillColor: Colors.amber[800],
                  splashColor: Colors.amber,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 20.0,
                    ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.today,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8.0),

                      Text("Pilih Tarikh Lahir Pasangan",
                        style:  TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],

                  ),
                  ),
                  onPressed: (){ _showPickerPasangan();
                  },
                  //shape: StadiumBorder(),
                ),

                new Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                ),

                new Card(
                        
                        child: new Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            new Text(""),
                            new ListTile(
                              leading: new Icon(Icons.person_pin, color: Colors.pink,size: 40.0,),
                              title:new Text("Nombor Asas Anda : " ,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),
                              subtitle: new Text(noAsas != null ? noAsas.toString(): "",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                              ),

                            new ListTile(
                              leading: new Icon(Icons.supervised_user_circle  , color: Colors.pink,size: 40.0,),
                              title:new Text("Nombor Pasangan : " ,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),
                              subtitle: new Text(_noAsas != null ? _noAsas.toString(): "",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                              ),

                            new ListTile(
                              leading: new Icon(Icons.favorite, color: Colors.pink,size: 40.0,),
                              title:new Text("Nombor Keserasian : " ,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),
                              subtitle: new Text(_noPasangan != null ? _noPasangan.toString(): "", 
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                              ),

                            new ListTile(
                              leading: new Icon(Icons.view_headline, color: Colors.pink, size: 40.0,),
                              title:new Text("Huraian : " ,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),
                              subtitle: new Text(serasi != null ? serasi.toString(): "",
                              style: TextStyle(fontWeight: FontWeight.bold),),
                              ),

                            new ListTile(),

                            ])
                          ),

              //   new Text("Nombor Asas Anda :",
              //   style: new TextStyle(
              //           fontWeight: FontWeight.bold,
              //           //color: Colors.pinkAccent,
              //           fontSize: 17.0,
              //         )),
              //   new Text(noAsas != null ? noAsas.toString(): "",
              //   style: new TextStyle(
              //           fontWeight: FontWeight.bold,
              //           color: Colors.pinkAccent,
              //           fontSize: 17.0,
              //         )),

              //   new Padding(
              //     padding: const EdgeInsets.only(top: 12.0),
              //   ),

              //   new Text("Nombor Pasangan :",
              //   style: new TextStyle(
              //           fontWeight: FontWeight.bold,
              //           //color: Colors.pinkAccent,
              //           fontSize: 17.0,
              //         )),
              //   new Text(_noAsas != null ? _noAsas.toString(): "",
              //   style: new TextStyle(
              //           fontWeight: FontWeight.bold,
              //           color: Colors.pinkAccent,
              //           fontSize: 17.0,
              //         )),

              //   new Padding(
              //     padding: const EdgeInsets.only(top: 12.0),
              //   ),

              //   new Text("Nombor Keserasian :",
              //   style: new TextStyle(
              //           fontWeight: FontWeight.bold,
              //           //color: Colors.pinkAccent,
              //           fontSize: 17.0,
              //         )),
              //   new Text(_noPasangan != null ? _noPasangan.toString(): "",
              //   style: new TextStyle(
              //           fontWeight: FontWeight.bold,
              //           color: Colors.pinkAccent,
              //           fontSize: 17.0,
              //         )),

              // new Padding(
              //     padding: const EdgeInsets.only(top: 12.0),
              //   ),
              
              // new Text(serasi != null ? serasi.toString(): "",
              //   style: new TextStyle(
              //           fontWeight: FontWeight.bold,
              //           color: Colors.pinkAccent,
              //           fontSize: 17.0,
              //         )),

            ],
          ), 
          
              
          ),

        ],
      ),
      
    );
  }
}