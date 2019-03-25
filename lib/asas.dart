import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:firebase_admob/firebase_admob.dart';


class asasPage extends StatefulWidget {
  _asasPageState createState() => _asasPageState();
}

class _asasPageState extends State<asasPage> {

  InterstitialAd createInterstitialAd() {
    return new InterstitialAd(
        adUnitId: "ca-app-pub-1877517412301043/7858082295",
        //targetingInfo: targetInfo,
        listener: (MobileAdEvent event) {
          print("Interstitial event : $event");
        });
  }

  var hari;
  var bulan;
  String tahun;
  var tahun1;
  var tahun2;
  var _element, _warna;

  //stage ke dua kira no

  var noHari;
  var noBulan;
  var noTahun1;
  var noTahun2;
  var forHari = new DateFormat('dd');
  var forBulan = new DateFormat('MM');
  var forTahun = new DateFormat('yy');
  String formatted;
  var fTahun;
  var fHari;
  var fBulan;
  var noAb, noC;
  var noDe, noF;
  var noCf, noAsas=0, dnoAsas;
  var noKiraAc, noKiraBc, noKiraAbc, noAc, noBc, noAbc;
  var noKiraDf, noKiraEf, noKiraDef, noDf, noEf, noDef;
  var noKiraFg, noKiraCg, noFg, noCg, noH, noI, noKiraKj;
  var noKiraI, noKiraH, noKodJutawan;
  var pola1, pola2, pola3, pola4, pola5, pola6, pola7, pola8;
  var senaraiPola, senaraiTarikh;

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
           kiraPolakiri();
           kiraPolakanan();
           kiraPolaBawah();
           dapatkanPola();
           getElement();
           createInterstitialAd()
           ..load()
           ..show();
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


      // penerangan no asas

      if(noAsas == 1 ){
        dnoAsas = "Pemimpin / Ketua / Boleh Di harap / Berdikari ";
      }else if(noAsas == 2 ){ 
		dnoAsas =  "Sosial / Peramah / Suka bercakap / Pandai Ambik Hati ";
      }else if(noAsas == 3 ){
          dnoAsas = "Sentiasa Bergerak & byk idea";
      }else if(noAsas == 4 ){
          dnoAsas = "Seorang Perancang @ Suka ilmu / gemar mencuba sesuatu baru";
      }else if(noAsas == 5 ){
          dnoAsas = "Prinsip & Suka buat perubahan baru.";
      }else if(noAsas == 6 ){
          dnoAsas = "Bijak dlm mendaptkan Wang @ Mudah dpt Wang.";
      }else if(noAsas == 7 ){
          dnoAsas = "Pengaruh / Suka Networking / Penyayang";
      }else if(noAsas == 8 ){
          dnoAsas = "Seorang berTanggungjawab & bijak selesaikan masalah";
      }else if(noAsas == 9 ){
          dnoAsas = "Seorang Motivator / menbuka peluang baru / pemimpin";
      }else{
          dnoAsas = "" ;
      }
              
    });
    
  }


  void kiraPolakiri(){

    noKiraAc = noHari + noC;

    noKiraBc = noBulan  + noC;

    

    setState(() {
     if(noKiraAc == 10 ){
        noAc = 1;
      }else if(noKiraAc == 11 ){
          noAc = 2;
      }else if(noKiraAc == 12 ){
          noAc = 3;
      }else if(noKiraAc == 13 ){
          noAc = 4;
      }else if(noKiraAc == 14 ){
          noAc = 5;
      }else if(noKiraAc == 15 ){
          noAc = 6;
      }else if(noKiraAc == 16 ){
          noAc = 7;
      }else if(noKiraAc == 17 ){
          noAc = 8;
      }else if(noKiraAc == 18 ){
          noAc = 9;
      }else{
          noAc = noKiraAc ;
      }


      if(noKiraBc == 10 ){
        noBc = 1;
      }else if(noKiraBc == 11 ){
          noBc = 2;
      }else if(noKiraBc == 12 ){
          noBc = 3;
      }else if(noKiraBc == 13 ){
          noBc = 4;
      }else if(noKiraBc == 14 ){
          noBc = 5;
      }else if(noKiraBc == 15 ){
          noBc = 6;
      }else if(noKiraBc == 16 ){
          noBc = 7;
      }else if(noKiraBc == 17 ){
          noBc = 8;
      }else if(noKiraBc == 18 ){
          noBc = 9;
      }else{
          noBc = noKiraBc ;
      }

      noKiraAbc = noAc + noBc;

      if(noKiraAbc == 10 ){
        noAbc = 1;
      }else if(noKiraAbc == 11 ){
          noAbc = 2;
      }else if(noKiraAbc == 12 ){
          noAbc = 3;
      }else if(noKiraAbc == 13 ){
          noAbc = 4;
      }else if(noKiraAbc == 14 ){
          noAbc = 5;
      }else if(noKiraAbc == 15 ){
          noAbc = 6;
      }else if(noKiraAbc == 16 ){
          noAbc = 7;
      }else if(noKiraAbc == 17 ){
          noAbc = 8;
      }else if(noKiraAbc == 18 ){
          noAbc = 9;
      }else{
          noAbc = noKiraAbc ;
      }
              
    });
    
  }


  void kiraPolakanan(){

    noKiraDf = noF + noTahun1;

    noKiraEf = noF  + noTahun2;

    

    setState(() {
     if(noKiraDf == 10 ){
        noDf = 1;
      }else if(noKiraDf == 11 ){
          noDf = 2;
      }else if(noKiraDf == 12 ){
          noDf = 3;
      }else if(noKiraDf == 13 ){
          noDf = 4;
      }else if(noKiraDf == 14 ){
          noDf = 5;
      }else if(noKiraDf == 15 ){
          noDf = 6;
      }else if(noKiraDf == 16 ){
          noDf = 7;
      }else if(noKiraDf == 17 ){
          noDf = 8;
      }else if(noKiraDf == 18 ){
          noDf = 9;
      }else{
          noDf = noKiraDf ;
      }


      if(noKiraEf == 10 ){
        noEf = 1;
      }else if(noKiraEf == 11 ){
          noEf = 2;
      }else if(noKiraEf == 12 ){
          noEf = 3;
      }else if(noKiraEf == 13 ){
          noEf = 4;
      }else if(noKiraEf == 14 ){
          noEf = 5;
      }else if(noKiraEf == 15 ){
          noEf = 6;
      }else if(noKiraEf == 16 ){
          noEf = 7;
      }else if(noKiraEf == 17 ){
          noEf = 8;
      }else if(noKiraEf == 18 ){
          noEf = 9;
      }else{
          noEf = noKiraEf ;
      }

      noKiraDef = noDf + noEf;

      if(noKiraDef == 10 ){
        noDef = 1;
      }else if(noKiraDef == 11 ){
          noDef = 2;
      }else if(noKiraDef == 12 ){
          noDef = 3;
      }else if(noKiraDef == 13 ){
          noDef = 4;
      }else if(noKiraDef == 14 ){
          noDef = 5;
      }else if(noKiraDef == 15 ){
          noDef = 6;
      }else if(noKiraDef == 16 ){
          noDef = 7;
      }else if(noKiraDef == 17 ){
          noDef = 8;
      }else if(noKiraDef == 18 ){
          noDef = 9;
      }else{
          noDef = noKiraDef ;
      }
              
    });
    
  }

  void kiraPolaBawah(){

    noKiraI = noC + noAsas;

    noKiraH = noF  + noAsas;

    
    setState(() {
     if(noKiraI == 10 ){
        noI = 1;
      }else if(noKiraI == 11 ){
          noI = 2;
      }else if(noKiraI == 12 ){
          noI = 3;
      }else if(noKiraI == 13 ){
          noI = 4;
      }else if(noKiraI == 14 ){
          noI = 5;
      }else if(noKiraI == 15 ){
          noI = 6;
      }else if(noKiraI == 16 ){
          noI = 7;
      }else if(noKiraI == 17 ){
          noI = 8;
      }else if(noKiraI == 18 ){
          noI = 9;
      }else{
          noI = noKiraI ;
      }


      if(noKiraH == 10 ){
        noH = 1;
      }else if(noKiraH == 11 ){
          noH = 2;
      }else if(noKiraH == 12 ){
          noH = 3;
      }else if(noKiraH == 13 ){
          noH = 4;
      }else if(noKiraH == 14 ){
          noH = 5;
      }else if(noKiraH == 15 ){
          noH = 6;
      }else if(noKiraH == 16 ){
          noH = 7;
      }else if(noKiraH == 17 ){
          noH = 8;
      }else if(noKiraH == 18 ){
          noH = 9;
      }else{
          noH = noKiraH ;
      }

      noKiraKj = noH + noI;

      if(noKiraKj == 10 ){
        noKodJutawan = 1;
      }else if(noKiraKj == 11 ){
          noKodJutawan = 2;
      }else if(noKiraKj == 12 ){
          noKodJutawan = 3;
      }else if(noKiraKj == 13 ){
          noKodJutawan = 4;
      }else if(noKiraKj == 14 ){
          noKodJutawan = 5;
      }else if(noKiraKj == 15 ){
          noKodJutawan = 6;
      }else if(noKiraKj == 16 ){
          noKodJutawan = 7;
      }else if(noKiraKj == 17 ){
          noKodJutawan = 8;
      }else if(noKiraKj == 18 ){
          noKodJutawan = 9;
      }else{
          noKodJutawan = noKiraKj ;
      }
              
    });
    
  }

  void getElement(){

    if( noAsas == 1){
        _element = 'Logam'; 
        _warna = 'Hijau'; 
    }else if( noAsas ==2){
        _element = 'Unsur Air'; 
        _warna = 'Merah/Ungu/Oren'; 
		}else if( noAsas == 3){
        _element = 'Unsur Api';
        _warna = 'Putih/Emas/Perak'; 
		}else if( noAsas == 4){
        _element = 'Unsur Kayu'; 
        _warna = 'Coklat/Kuning/Beigi'; 
		}else if( noAsas == 5){
        _element = 'Unsur Tanah';
        _warna = 'Biru/Hitam'; 
		}else if( noAsas == 6){
        _element = 'Logam/Besi'; 
        _warna = 'Warna Hijau';
		}else if( noAsas == 7 ){
        _element = 'Unsur Air';
        _warna = 'Merah/Ungu/Oren'; 
		}else if( noAsas == 8 ){
        _element = 'Unsur Api'; 
        _warna = 'Putih/Emas/Perak'; 
		}else if( noAsas == 9 ){
        _element = 'Unsur Kayu';
        _warna = 'Coklat/Kuning/Beigi'; 
		}else{
       _element = ' ';
    }

  }

  void dapatkanPola(){

    pola1 = "${noHari.toString()}${noBulan.toString()}${noC.toString()}";
    pola2 = "${noTahun1.toString()}${noTahun2.toString()}${noF.toString()}";
    pola3 = "${noC.toString()}${noF.toString()}${noAsas.toString()}";   
    pola4 = "${noF.toString()}${noAsas.toString()}${noH.toString()}";
    pola5 = "${noC.toString()}${noAsas.toString()}${noI.toString()}";
    pola6 = "${noDf.toString()}${noEf.toString()}${noDef.toString()}";
    pola7 = "${noBc.toString()}${noAc.toString()}${noAbc.toString()}";
    pola8 = "${noH.toString()}${noI.toString()}${noKodJutawan.toString()}";

    senaraiTarikh = '${fHari.toString()}       ${fBulan.toString()}       ${tahun2.toString()}       ${fTahun.toString()}';
    senaraiPola = '${pola1.toString()},${pola2.toString()},${pola3.toString()},${pola4.toString()},${pola5.toString()},${pola6.toString()},${pola7.toString()},${pola8.toString()}';

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: new ListView(
          
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

                      Text("Sila Pilih Tarikh Lahir",
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

                // //new Text(fHari != null ? fHari.toString():  fBulan != null ? fBulan.toString():  tahun2 != null ? tahun2.toString(): "",),
                // new Text('${fHari.toString()}       ${fBulan.toString()}        ${tahun2.toString()}       ${fTahun.toString()}',style: new TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 20.0,
                //   )),

                new Text(senaraiTarikh != null ? senaraiTarikh.toString(): " ",
                style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent,
                        fontSize: 20.0,
                      )),
             

                
            ],
          ), 
          
              
          ),

          new Container(

     
     
     constraints: new BoxConstraints.expand(
          height: 250.0,
        ),
        padding: new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('assets/img/border.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: new Stack(
          children: <Widget>[
            new Positioned(
              left: 85.0,
              top: 19.0,

              child: new Text(noHari != null ? noHari.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),
            new Positioned(
              left: 120.0,
              top: 19.0,
              child: new Text(noBulan != null ? noBulan.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),
            new Positioned(
              right: 135.0,
              top: 19.0,
              child: new Text(noTahun1 != null ? noTahun1.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),
            new Positioned(
              right: 98.0,
              top: 19.0,
              child: new Text(noTahun2 != null ? noTahun2.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),

            //stage 2

            new Positioned(
              left: 120.0,
              top: 71.0,
              child: new Text(noC != null ? noC.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),
            new Positioned(
              right: 135.0,
              top: 71.0,
              child: new Text(noF != null ? noF.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),

            ///stage 3 no asas
            new Positioned(
              right: 161.0,
              top: 126.0,
              child: new Text(noAsas != null ? noAsas.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),
   

            ///stage 4 kiri
            new Positioned(
              left: 4.0,
              top: 92.0,
              child: new Text(noAbc != null ? noAbc.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),

            new Positioned(
              left: 41.0,
              top: 92.0,
              child: new Text(noAc != null ? noAc.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),

            new Positioned(
              left: 77.0,
              top: 92.0,
              child: new Text(noBc != null ? noBc.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),

            ///stage 5 kanan
            new Positioned(
              right: 4.0,
              top: 92.0,
              child: new Text(noDef != null ? noDef.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),

            new Positioned(
              right: 38.0,
              top: 92.0,
              child: new Text(noEf != null ? noEf.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),

            new Positioned(
              right: 75.0,
              top: 92.0,
              child: new Text(noDf != null ? noDf.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),

            //stage 6 kiri kanan

            new Positioned(
              left: 108.0,
              bottom: 72.0,
              child: new Text(noH != null ? noH.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),
            new Positioned(
              right: 106.0,
              bottom: 72.0,
              child: new Text(noI != null ? noI.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),


            // stage 7 no jutawan
            new Positioned(
              right: 163.0,
              bottom: 10.0,
              child: new Text(noKodJutawan != null ? noKodJutawan.toString(): "",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
              ),
            ),
   


          ],
        )
    ),
  
      
      // new Container(
      //       padding: const EdgeInsets.only(top: 20.0),
      //       child: new Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       //crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         new Text("No Asas Anda : ",
      //               style: new TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 //color: Colors.pinkAccent,
      //                 fontSize: 17.0,
      //               )),

      //         new Text(noAsas != null ? noAsas.toString(): "",
      //         style: new TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.pinkAccent,
      //                 fontSize: 17.0,
      //               )),
      //         // new Text("No Kewangan : ",
      //         //       style: new TextStyle(
      //         //         fontWeight: FontWeight.bold,
      //         //         //color: Colors.pinkAccent,
      //         //         fontSize: 17.0,
      //         //       )),
      //       ]
      //       ),
      // ),

      new Container(
          
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: new FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('assets/meta.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var new_data = json.decode(snapshot.data.toString());
                  //var  i = null ? 0 : 1;
                  var i = noAsas;

                  

                  return new Container(
                    padding: EdgeInsets.all(10.0),
                      child: new Card(
                        
                        child: new Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            new Text(""),
                            new ListTile(
                              leading: new Icon(Icons.library_books, color: Colors.pink,size: 30.0,),
                              title:new Text("Nombor Asas Anda : " + new_data[i]['id'],
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),
                              subtitle: new Text(new_data[i]['umum']),
                              ),
                            
                            // new ListTile(
                            //   //leading: new Icon(Icons.access_alarm),
                            //   title:new Text("Penerangan : " + new_data[i]['umum']),),
                            //new Divider(color: Colors.pink, indent: 5.0, height: 20.0,),
                            new ListTile(
                              leading: new Icon(Icons.format_color_fill, color: Colors.pink, size: 30.0,),
                              title:new Text("Warna Aura Anda : ", 
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),),
                              subtitle: new Text(new_data[i]['color']),),
                            //new Divider(color: Colors.pink, indent: 5.0, height: 20.0,),
                            new ListTile(
                              leading: new Icon(Icons.local_atm, color: Colors.pink, size: 30.0,),
                              title:new Text("No Kewangan : " + new_data[i]['nokew'],
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),
                              subtitle: new Text(new_data[i]['descnokew']),),

                            new ListTile(
                              leading: new Icon(Icons.nature_people, color: Colors.pink, size: 30.0,),
                              title:new Text("Elemen Anda : " + new_data[i]['elemen'],
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),),


                            new ListTile(
                              leading: new Icon(Icons.filter_8 , color: Colors.pink, size: 30.0,),
                              title:new Text("Senarai 8 Pola Anda : ",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),
                              subtitle: new Text(senaraiPola != null ? senaraiPola.toString(): " ", 
                              style: TextStyle(fontWeight: FontWeight.bold)),),

                            new ListTile(),
                              
                         
                          ],
                        ),
                      ),
                 
                  );
                }),
          
        ),

      // new Container(
      //       padding: const EdgeInsets.all(1.0),
      //       child: new Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
              

      //         new Text(dnoAsas != null ? dnoAsas.toString(): "",
      //         style: new TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.pinkAccent,
      //                 fontSize: 17.0,
      //               )),
      //         // new Text(noKodJutawan != null ? noKodJutawan.toString(): "",
      //         // style: new TextStyle(
      //         //         fontWeight: FontWeight.bold,
      //         //         color: Colors.pinkAccent,
      //         //         fontSize: 17.0,
      //         //       )),
      //       ]
      //       ),
      // ),

      
      // new Container(
      //       padding: const EdgeInsets.only(top: 20.0),
      //       child: new Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       //crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         new Text("Elemen Anda : ",
      //               style: new TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 //color: Colors.pinkAccent,
      //                 fontSize: 17.0,
      //               )),
      //         new Text("Warna Aura Anda : ",
      //               style: new TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 //color: Colors.pinkAccent,
      //                 fontSize: 17.0,
      //               )),
      //       ]
      //       ),
      // ),

      // new Container(
      //       //padding: const EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
      //       child: new Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         new Text(_element != null ? _element.toString(): "",
      //         style: new TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.pinkAccent,
      //                 fontSize: 17.0,
      //               )),
      //         // new Padding(
      //         //       padding: const EdgeInsets.only(left: 0.0, right: 0.0),),
      //         new Text(_warna != null ? _warna.toString(): "",
      //         style: new TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.pinkAccent,
      //                 fontSize: 17.0,
      //               )),

              
      //       ]
      //       ),
      // ),

          // new Center(
          //     child: new Container(
          //     padding: const EdgeInsets.all(20.0),
          //     child: new Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: <Widget>[

          //         new Padding(
          //           padding: const EdgeInsets.only(top: 20.0),
          //         ),


          //      new Text('Senarai 8 Pola Anda :',
          //      style: new TextStyle(
          //             fontWeight: FontWeight.bold,
          //             //color: Colors.pinkAccent,
          //             fontSize: 18.0,
          //           )),
          //     new Padding(padding: new EdgeInsets.all(5.0),),
          //      new Text(senaraiPola != null ? senaraiPola.toString(): " ",
          //      style: new TextStyle(
          //             fontWeight: FontWeight.bold,
          //             color: Colors.pinkAccent,
          //             fontSize: 18.0,
          //           )),


                  
          //     ],
              
          //   ), 
            
                
          //   ),
          // ),
          ],
        )
    );
  }
}