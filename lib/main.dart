import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: ekranGenisligi,
                child: Image.asset("resimler/yemekresim.jpeg")
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi/8,
                    child: TextButton(
                        child: Yazi("Beğen",ekranGenisligi/25),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: (){
                          print("Beğenildi");
                      },

                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi/8,
                    child: TextButton(
                      child: Yazi("Yorum Yap",ekranGenisligi/25),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.deepOrangeAccent,
                      ),
                      onPressed: (){
                        print("Yorum yapıldı");
                      },

                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi/100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Köfte",
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: ekranGenisligi/20,
                  ),
                  ),
                  Row(
                    children: [
                      Yazi("Izgara Üzerinde Pişirme Uygun", ekranGenisligi/25),
                      Spacer(),
                      Yazi("8 Ağustos", ekranGenisligi/25),

                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi/100),
              child: Yazi("Köfte harcını hazırlamak için, soğanları rendeleyin ve maydanozları ince ince kıyın. İsterseniz, bir diş sarımsak da ekleyebilirsiniz."
              "Soğan, maydanoz, kıyma, yumurta, zeytinyağı ve tuzu bir kaba alıp iyice yoğurun. Bu sırada istediğiniz baharatları da ekleyerek yoğurmaya devam edin."
              "Hazırladığınız harcın üzerini streç filmle kapatarak yarım saat buzdolabında dinlendirin."
              "Ardından harçtan ceviz büyüklüğünde parçalar koparıp yuvarlayın. 1 cm olacak şekilde üzerine bastırarak yassılaştırın.", ekranGenisligi/25),
            ),
          ],
        ),
      ),

    );
  }
}

class Yazi extends StatelessWidget {
  String icerik;
  double yaziBoyut;


  Yazi(this.icerik, this.yaziBoyut);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: yaziBoyut),);
  }
}

