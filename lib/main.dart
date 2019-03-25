import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_admob/firebase_admob.dart';
import './asas.dart' as asas;
import './jodoh.dart' as jodoh;
//import './produk.dart' as produk;
//import './ejen.dart' as ejen;
import './list.dart' as list;
//import './senarai.dart' as senarai;
import './reseller.dart' as reseller;

void main(){
  runApp(new MaterialApp(
    title: "Metafizik",
    home: new Home(),
    theme: new ThemeData(
         primarySwatch: Colors.green,
       ),
  ));
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  static final MobileAdTargetingInfo targetInfo = new MobileAdTargetingInfo(
    testDevices: <String>[],
    keywords: <String>['online business degree', 'online mba programs', 'business','online business courses'],
    birthday: new DateTime.now(),
    childDirected: true,
  );

  TabController controller;

  FirebaseMessaging firebaseMessaging = new FirebaseMessaging();

  String textValue = "";

  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  BannerAd createBannerAd() {
    return new BannerAd(
        adUnitId: "ca-app-pub-1877517412301043/8873858487",
        size: AdSize.banner,
        targetingInfo: targetInfo,
        listener: (MobileAdEvent event) {
          print("Banner event : $event");
        });
  }

  InterstitialAd createInterstitialAd() {
    return new InterstitialAd(
        adUnitId: "ca-app-pub-1877517412301043/7858082295",
        targetingInfo: targetInfo,
        listener: (MobileAdEvent event) {
          print("Interstitial event : $event");
        });
  }

  @override
  void initState(){

    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-1877517412301043~8863493467");
    _bannerAd = createBannerAd()
      ..load()
      ..show();

    controller = new TabController(vsync: this, length: 4);
    super.initState();

    firebaseMessaging.configure(
      onLaunch: (Map<String, dynamic> msg) {
        print(" onLaunch called ${(msg)}");
      },
      onResume: (Map<String, dynamic> msg) {
        print(" onResume called ${(msg)}");
      },
      onMessage: (Map<String, dynamic> msg) {
        //showNotification(msg);
        print(" onMessage called ${(msg)}");
      },
    );
    firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, alert: true, badge: true));
    firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings setting) {
      print('IOS Setting Registed');
    });
    firebaseMessaging.getToken().then((token) {
      update(token);
    });
  }

 

  update(String token) {
    //print(token);
    //DatabaseReference databaseReference = new FirebaseDatabase().reference();
    //databaseReference.child('fcm-token/${token}').set({"token": token});
    textValue = token;
    setState(() {});
  }

 

  @override
    void dispose() {
      _bannerAd?.dispose();
    _interstitialAd.dispose();
      controller.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
       appBar: new AppBar(
         //backgroundColor: Colors.deepPurple,
         
         title: new Text("Xenrich Apps"),
         bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.apps), text: "Kiraan",),
            new Tab(icon: new Icon(Icons.group), text: "Keserasian",),
            new Tab(icon: new Icon(Icons.add_shopping_cart), text: "Produk",),   
            new Tab(icon: new Icon(Icons.group_add), text: "Reseller",),

          ],
         ),
         
       ),

       body: new TabBarView(
         controller: controller,
         children: <Widget>[
           new asas.asasPage(),
           new jodoh.jodohPage(),
           //new produk.produkPage(),
           //new ejen.ejenPage(),
           new list.HomeScreen(),
          //  createInterstitialAd()
          //  ..load()
          //  ..show();
           new reseller.resellerPage(),
          //new senarai.senaraiPage(),


         ],
       ),
    );
  }
}