import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/services.dart'; // we need this for the vibrations
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gozel_islam/Constants.dart';
import '../../../state_management.dart';
import 'Buttons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class ZikrPage1 extends StatefulWidget {

final String isim;
final int siraSayi;
final int zikirSayisi;


  const ZikrPage1({super.key, required this.isim, required this.siraSayi, required this.zikirSayisi});

  @override
  State<ZikrPage1> createState() => _ZikrPage1State();
}

class _ZikrPage1State extends State<ZikrPage1> {
  Controller c = Get.put(Controller());
  var _turns = 0;
  var bugun = 0;
  var umumi = 0;
  @override
  void initState() {
    bugun = box.read("0${widget.siraSayi}${c.difference2}")??0;
    umumi = box.read("00${widget.siraSayi}")??0;
    switch(widget.siraSayi){
      case 1: _counter = box.read("1")?? 0; _daylyCounter = box.read("01${c.difference3}")?? 0; _allCounter = box.read("001") ?? 0;
      break;
      case 2: _counter = box.read("2")?? 0; _daylyCounter = box.read("02${c.difference3}")?? 0; _allCounter = box.read("002")?? 0;
      break;
      case 3: _counter = box.read("3")?? 0;_daylyCounter = box.read("03${c.difference3}")?? 0; _allCounter = box.read("003")?? 0;
    break;
    case 4: _counter = box.read("4")?? 0;_daylyCounter = box.read("04${c.difference3}")?? 0; _allCounter = box.read("004")?? 0;
    break;
    case 5: _counter = box.read("5")?? 0;_daylyCounter = box.read("05${c.difference3}")?? 0; _allCounter = box.read("005")?? 0;
    break;
    case 6: _counter = box.read("6")?? 0;_daylyCounter = box.read("06${c.difference3}")?? 0; _allCounter = box.read("006")?? 0;
    break;
    case 7: _counter = box.read("7")?? 0;_daylyCounter = box.read("07${c.difference3}")?? 0; _allCounter = box.read("007")?? 0;
    break;
    case 8: _counter = box.read("8")?? 0;_daylyCounter = box.read("08${c.difference3}")?? 0; _allCounter = box.read("008")?? 0;
    break;
    case 9: _counter = box.read("9")?? 0;_daylyCounter = box.read("09${c.difference3}")?? 0; _allCounter = box.read("009")?? 0;
    break;
    case 10: _counter = box.read("10")?? 0;_daylyCounter = box.read("010${c.difference3}")?? 0; _allCounter = box.read("0010")?? 0;
    break;
    case 11: _counter = box.read("11")?? 0;_daylyCounter = box.read("011${c.difference3}")?? 0; _allCounter = box.read("0011")?? 0;
    break;
    case 12: _counter = box.read("12")?? 0;_daylyCounter = box.read("012${c.difference3}")?? 0; _allCounter = box.read("0012")?? 0;
    break;
    case 13: _counter = box.read("13")?? 0;_daylyCounter = box.read("013${c.difference3}")?? 0; _allCounter = box.read("0013")?? 0;
    break;
    case 14: _counter = box.read("14")?? 0;_daylyCounter = box.read("014${c.difference3}")?? 0; _allCounter = box.read("0014")?? 0;
    break;
    case 15: box.write("15", _counter);box.write("015${c.difference3}", _daylyCounter); box.write("0015", _allCounter);
    break;
    }



    _iconButtonVibr = box.read("icon") ?? false;
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    switch(widget.siraSayi){
      case 1: box.write("1", _counter); box.write("01${c.difference3}", _daylyCounter); box.write("001", _allCounter);
      break;
      case 2: box.write("2", _counter); box.write("02${c.difference3}", _daylyCounter); box.write("002", _allCounter);
      break;
      case 3: box.write("3", _counter); box.write("03${c.difference3}", _daylyCounter); box.write("003", _allCounter);
      break;
      case 4: box.write("4", _counter); box.write("04${c.difference3}", _daylyCounter); box.write("004", _allCounter);
      break;
      case 5: box.write("5", _counter); box.write("05${c.difference3}", _daylyCounter); box.write("005", _allCounter);
      break;
      case 6: box.write("6", _counter); box.write("06${c.difference3}", _daylyCounter); box.write("006", _allCounter);
      break;
      case 7: box.write("7", _counter);box.write("07${c.difference3}", _daylyCounter); box.write("007", _allCounter);
      break;
      case 8: box.write("8", _counter);box.write("08${c.difference3}", _daylyCounter); box.write("008", _allCounter);
      break;
      case 9: box.write("9", _counter);box.write("09${c.difference3}", _daylyCounter); box.write("009", _allCounter);
      break;
      case 10: box.write("10", _counter);box.write("010${c.difference3}", _daylyCounter); box.write("0010", _allCounter);
      break;
      case 11: box.write("11", _counter);box.write("011${c.difference3}", _daylyCounter); box.write("0011", _allCounter);
      break;
      case 12: box.write("12", _counter);box.write("012${c.difference3}", _daylyCounter); box.write("0012", _allCounter);
      break;
      case 13: box.write("13", _counter);box.write("013${c.difference3}", _daylyCounter); box.write("0013", _allCounter);
      break;
      case 14: box.write("14", _counter);box.write("014${c.difference3}", _daylyCounter); box.write("0014", _allCounter);
      break;
      case 15: box.write("15", _counter);box.write("015${c.difference3}", _daylyCounter); box.write("0015", _allCounter);
      break;
      case 16: box.write("16", _counter);box.write("016${c.difference3}", _daylyCounter); box.write("0016", _allCounter);
      break;
      case 17: box.write("17", _counter);box.write("017${c.difference3}", _daylyCounter); box.write("0017", _allCounter);
    break;
    case 18: box.write("18", _counter);box.write("018${c.difference3}", _daylyCounter); box.write("0018", _allCounter);
    break;
    case 19: box.write("19", _counter);box.write("019${c.difference3}", _daylyCounter); box.write("0019", _allCounter);
    break;
    case 20: box.write("20", _counter);box.write("020${c.difference3}", _daylyCounter); box.write("0020", _allCounter);
    break;
    case 21: box.write("21", _counter);box.write("021${c.difference3}", _daylyCounter); box.write("0021", _allCounter);
    break;
    case 22: box.write("22", _counter);box.write("022${c.difference3}", _daylyCounter); box.write("0022", _allCounter);
    break;
    }
    // TODO: implement dispose
    super.dispose();
  }
  var box = GetStorage();


  int _daylyCounter = 0;
  int _allCounter = 0;
  int _counter = 0;

  void _incrementCounter() {


    HapticFeedback.vibrate();
    if(_counter +1 < widget.zikirSayisi){
    setState(() {
      switch(widget.siraSayi){
        case 1: box.write("1", _counter); box.write("01${c.difference3}", _daylyCounter); box.write("001", _allCounter);
        break;
        case 2: box.write("2", _counter); box.write("02${c.difference3}", _daylyCounter); box.write("002", _allCounter);
        break;
        case 3: box.write("3", _counter); box.write("03${c.difference3}", _daylyCounter); box.write("003", _allCounter);
        break;
        case 4: box.write("4", _counter); box.write("04${c.difference3}", _daylyCounter); box.write("004", _allCounter);
        break;
        case 5: box.write("5", _counter); box.write("05${c.difference3}", _daylyCounter); box.write("005", _allCounter);
        break;
        case 6: box.write("6", _counter); box.write("06${c.difference3}", _daylyCounter); box.write("006", _allCounter);
        break;
        case 7: box.write("7", _counter);box.write("07${c.difference3}", _daylyCounter); box.write("007", _allCounter);
        break;
        case 8: box.write("8", _counter);box.write("08${c.difference3}", _daylyCounter); box.write("008", _allCounter);
        break;
        case 9: box.write("9", _counter);box.write("09${c.difference3}", _daylyCounter); box.write("009", _allCounter);
        break;
        case 10: box.write("10", _counter);box.write("010${c.difference3}", _daylyCounter); box.write("0010", _allCounter);
        break;
        case 11: box.write("11", _counter);box.write("011${c.difference3}", _daylyCounter); box.write("0011", _allCounter);
        break;
        case 12: box.write("12", _counter);box.write("012${c.difference3}", _daylyCounter); box.write("0012", _allCounter);
        break;
        case 13: box.write("13", _counter);box.write("013${c.difference3}", _daylyCounter); box.write("0013", _allCounter);
        break;
        case 14: box.write("14", _counter);box.write("014${c.difference3}", _daylyCounter); box.write("0014", _allCounter);
        break;
        case 15: box.write("15", _counter);box.write("015${c.difference3}", _daylyCounter); box.write("0015", _allCounter);
        break;
        case 16: box.write("16", _counter);box.write("016${c.difference3}", _daylyCounter); box.write("0016", _allCounter);
        break;
        case 17: box.write("17", _counter);box.write("017${c.difference3}", _daylyCounter); box.write("0017", _allCounter);
        break;
        case 18: box.write("18", _counter);box.write("018${c.difference3}", _daylyCounter); box.write("0018", _allCounter);
        break;
        case 19: box.write("19", _counter);box.write("019${c.difference3}", _daylyCounter); box.write("0019", _allCounter);
        break;
        case 20: box.write("20", _counter);box.write("020${c.difference3}", _daylyCounter); box.write("0020", _allCounter);
        break;
        case 21: box.write("21", _counter);box.write("021${c.difference3}", _daylyCounter); box.write("0021", _allCounter);
        break;
        case 22: box.write("22", _counter);box.write("022${c.difference3}", _daylyCounter); box.write("0022", _allCounter);
        break;
      }
      umumi = box.read("00${widget.siraSayi}")??0;
      bugun = box.read("00${widget.siraSayi}")??0;
      _counter++;
    });} else{
      setState((){
        switch(widget.siraSayi){
          case 1: box.write("1", _counter); box.write("01${c.difference3}", _daylyCounter); box.write("001", _allCounter);
          break;
          case 2: box.write("2", _counter); box.write("02${c.difference3}", _daylyCounter); box.write("002", _allCounter);
          break;
          case 3: box.write("3", _counter); box.write("03${c.difference3}", _daylyCounter); box.write("003", _allCounter);
          break;
          case 4: box.write("4", _counter); box.write("04${c.difference3}", _daylyCounter); box.write("004", _allCounter);
          break;
          case 5: box.write("5", _counter); box.write("05${c.difference3}", _daylyCounter); box.write("005", _allCounter);
          break;
          case 6: box.write("6", _counter); box.write("06${c.difference3}", _daylyCounter); box.write("006", _allCounter);
          break;
          case 7: box.write("7", _counter);box.write("07${c.difference3}", _daylyCounter); box.write("007", _allCounter);
          break;
          case 8: box.write("8", _counter);box.write("08${c.difference3}", _daylyCounter); box.write("008", _allCounter);
          break;
          case 9: box.write("9", _counter);box.write("09${c.difference3}", _daylyCounter); box.write("009", _allCounter);
          break;
          case 10: box.write("10", _counter);box.write("010${c.difference3}", _daylyCounter); box.write("0010", _allCounter);
          break;
          case 11: box.write("11", _counter);box.write("011${c.difference3}", _daylyCounter); box.write("0011", _allCounter);
          break;
          case 12: box.write("12", _counter);box.write("012${c.difference3}", _daylyCounter); box.write("0012", _allCounter);
          break;
          case 13: box.write("13", _counter);box.write("013${c.difference3}", _daylyCounter); box.write("0013", _allCounter);
          break;
          case 14: box.write("14", _counter);box.write("014${c.difference3}", _daylyCounter); box.write("0014", _allCounter);
          break;
          case 15: box.write("15", _counter);box.write("015${c.difference3}", _daylyCounter); box.write("0015", _allCounter);
          break;
          case 16: box.write("16", _counter);box.write("016${c.difference3}", _daylyCounter); box.write("0016", _allCounter);
          break;
          case 17: box.write("17", _counter);box.write("017${c.difference3}", _daylyCounter); box.write("0017", _allCounter);
          break;
          case 18: box.write("18", _counter);box.write("018${c.difference3}", _daylyCounter); box.write("0018", _allCounter);
          break;
          case 19: box.write("19", _counter);box.write("019${c.difference3}", _daylyCounter); box.write("0019", _allCounter);
          break;
          case 20: box.write("20", _counter);box.write("020${c.difference3}", _daylyCounter); box.write("0020", _allCounter);
          break;
          case 21: box.write("21", _counter);box.write("021${c.difference3}", _daylyCounter); box.write("0021", _allCounter);
          break;
          case 22: box.write("22", _counter);box.write("022${c.difference3}", _daylyCounter); box.write("0022", _allCounter);
          break;
        }
        umumi = box.read("00${widget.siraSayi}")??0;
        bugun = box.read("00${widget.siraSayi}")??0;
        _counter = 0;
        _allCounter++;
        _daylyCounter++;
      });
    }
  }




  void _restart() {

    HapticFeedback.heavyImpact();
    setState((){
      _counter = 0;

    });

  }

  String _zikr = "";
  bool _iconButtonVibr = true;

Future<bool>geri()async{
  return false;
}

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;


    return Scaffold(
       backgroundColor: appBarColor,

      extendBodyBehindAppBar: true,

      appBar: AppBar(
                       // leading: IconButton(onPressed: () {      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { return PageViewPage(); }));
        // }, icon: Icon(Icons.chevron_left),),
        actions: [
          AnimatedRotation(
            turns: _turns.toDouble(),
            duration: Duration(milliseconds: 100),
            child: IconButton(


              onPressed: (){
                Get.defaultDialog(
                    onConfirm: (){
                      var timer =  Timer.periodic(Duration(milliseconds: 100), (timer) {
                        setState(() {
                          _turns++;
                          if(_turns == 4 || _turns >4){
                            _turns = 0;
                            timer.cancel();
                          }
                        });
                      });
                      _restart();
                      Navigator.of(context).pop();
                    },
                    middleText: "Sıfırlansın",
                    confirmTextColor: Colors.white,
                    title: "System",
                    textConfirm: "Bəli",
                    textCancel: "Xeyr"

                );
              }
              //_restart
              ,
              icon:  Icon(
                Icons.restart_alt, color: Colors.white,

              ),
            ),
          ),


        ],

        centerTitle: true,
        title: Text("Təsbih", textAlign: TextAlign.center , style: GoogleFonts.arimaMadurai(color: Colors.white, fontWeight: FontWeight.bold, )),

        backgroundColor: appBarColor,
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(widget.isim, maxLines:2,
                    textAlign: TextAlign.center, style: GoogleFonts.arimaMadurai(color: Colors.white, fontSize: 25 )),
                ),

                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: _incrementCounter,
                    child: Center(
                        child: FittedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CircularPercentIndicator(
                                  // backgroundColor: Constants.primaryColor,
                                  progressColor: Colors.green,
                                  percent: _counter/widget.zikirSayisi,
                                    radius: 85,
                                  center:FittedBox(
                                    child: AnimatedFlipCounter(
                                      textStyle: GoogleFonts.aldrich(fontSize: 50, color: Colors.white),
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.decelerate,
                                      value: _counter, /* pass in a number like 2014 */
                                    ),
                                  ) ,

                                ),


                              ],
                            ),
                          ),
                        )
                    ),
                  ),
                ),




                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [



                        Align(
                            alignment: Alignment.center,
                            child: ZikrButton(metod: _incrementCounter, buttonName: "kliklə",))

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: appBarColor.shade100
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Bügün", style: TextStyle(
                                color: appBarColor
                              ),),
                              SizedBox(width: 10,),
                              AnimatedFlipCounter(
                                textStyle: Theme.of(context).textTheme.headline6?.copyWith(color: appBarColor, ),
                                duration: Duration(milliseconds: 300),
                                curve: Curves.decelerate,
                                value: bugun, /* pass in a number like 2014 */
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Text("Ümumi", style: TextStyle(
                                  color: appBarColor
                              ),),
                              SizedBox(width: 10,),
                              AnimatedFlipCounter(
                                textStyle: Theme.of(context).textTheme.headline6?.copyWith(color: appBarColor, ),
                                duration: Duration(milliseconds: 300),
                                curve: Curves.decelerate,
                                value: umumi, /* pass in a number like 2014 */
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ))
        ],
      ),
    );
  }
}
