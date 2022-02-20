import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quranapp/main.dart';
import 'package:quranapp/resume.dart';
import 'package:quranapp/text/para_text.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class ParaListPage extends StatefulWidget {
  final resumeNum;

  const ParaListPage({Key key, this.resumeNum}) : super(key: key);
  
  @override
  _ParaListPageState createState() => _ParaListPageState();
}

class _ParaListPageState extends State<ParaListPage> {
  final List arabicparaName = [
    "	آلم",
    "سيقول السفهاء",
    "	تلك الرسل",
    "لن تنالوا",
    "	والمحصنات",
    "	لا يحب الله",
    "وإذا سمعوا",
    "ولو أننا",
    "قال الملأ",
    "واعلموا",
    "يعتذرون",
    "ومامن دابة",
    "	وما أبرئ ",
    "ربما",
    "	سبحٰن الذیٓ",
    "	قال ألم",
    "	اقترب للناس",
    "	قد أفلح",
    "وقال الذين ",
    "	امن خلق ",
    "اتل مآ اوحی",
    "	ومن يقنت",
    "ومالی",
    "	فمن أظلم",
    "	إليه يرد",
    "حـم",
    "قال فما خطبكم",
    "	قد سمع اللہ",
    "	تبٰرک الذی",
    "	عمّ"
  ];

  final List paraName = [
    "Alif La'am Meem",
    "Sayaqoolu",
    "Tilkal Rusull",
    "Lan Tana Loo",
    "Wal Mohsanat",
    "La Yuhibbullah",
    "Wa Iza Samiu",
    "Wa Lau Annana",
    "Qalal Malao",
    "Wa A'lamu",
    "Yatazeroon",
    "Wa Mamin Da'abat",
    "Wa Ma Ubrioo",
    "Rubama",
    "Subhanallazi",
    "Qal Alam",
    "Aqtarabo",
    "Qadd Aflaha",
    "Wa Qalallazina",
    "A'man Khalaq",
    "Utlu Ma Oohi",
    "Wa Manyaqnut",
    "Wa Mali",
    "Faman Azlam",
    "Elahe Yuruddo",
    "Ha'a Meem",
    "Qala Fama Khatbukum",
    "Qadd Sami Allah",
    "Tabarakallazi",
    "Amma Yatasa'aloon"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // color: Colors.orange,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text(
                      "Quran App",
                      style: TextStyle(
                          color: Color(0xff713AC1),
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 17.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: Text(
                          "Assalamualaikum",
                          style: TextStyle(
                              color: Color(0xffB5B3C7),
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  InkWell(
                    onTap: () {
                      // print("REsume Num = ${widget.resumeNum}");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ParaNumber(pageNum: widget.resumeNum)));
                    },
                    child: Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20.0),
                              right: Radius.circular(20.0))),
                      color: Color(0xff8C59D0),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                        child: Text(
                          "Resume",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 300.0,
                      width: 400.0,
                      // color: Colors.red,
                      child: Card(
                        elevation: 20.0,
                        // shadowColor: Color(0xffB14154),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        // color: Colors.red,

                        child: Stack(
                          children: [
                            Container(
                              height: 300.0,
                              width: 400.0,
                              decoration: BoxDecoration(
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.circular(25.0),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'images/slider_quran.jpg'))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
                  height: 65.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(color: Colors.green),
                      image: DecorationImage(
                          image: AssetImage('images/bismillah.png'),
                          fit: BoxFit.contain))),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: paraName.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: Color(0xff713AC1),
                      ))),
                      child: ListTile(
                        tileColor: Colors.white,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ParaText(paraIndex: index + 1),
                              ));
                        },
                        leading: CircleAvatar(
                          backgroundColor: Color(0xff863ED5),
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text(
                          paraName[index],
                          style: TextStyle(fontSize: 22.0),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Text(
                            arabicparaName[index],
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Color(0xff713AC1)),
                          ),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
