import 'dart:convert';
import 'queries.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'size_config.dart';
import 'home_page.dart';


class SignUpPage extends StatefulWidget {
  static String tag = 'form';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}


class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyCardWidget(),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Room Service'),
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFF3F3FE),
    );
  }
}
class MyCardWidget extends StatefulWidget {
  // This is the stateless widget that the main application instantiates.
  @override
  _MycardWidgetState createState() => _MycardWidgetState();
}

class _MycardWidgetState extends State<MyCardWidget>{
  bool? checkboxvalue = false;
  DateTime pickeddate = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          padding:  EdgeInsets.fromLTRB(4, 4, 4, 0),
          child: Card(
            shape: RoundedRectangleBorder(
              //  borderRadius: BorderRadius.circular(15.0),
            ),
            color: Color(0xFFFFFFFF),
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 22, 0, 22),
                  title: Text(
                      'Service Request Form',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 35.0)
                  ),
                ),
                Divider(
                    color: Colors.black
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: (SizeConfig.screenWidth - 30),
                    height: SizeConfig.screenHeight * 0.10,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment(0, 0),
                          child: Text(
                              'Name:',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 23.0,
                                  color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.9, 0),
                          child: Text(
                              ' Dhanvi Medha Beechu',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 23.0,
                                  color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                      ],

                    ),

                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: (SizeConfig.screenWidth - 30),
                    height: SizeConfig.screenHeight * 0.10,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment(-0.9, 0),
                          child: Text(
                              'Room Number: ',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 23.0,
                                  color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.9, 0),
                          child: Text(
                              'R205',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 23.0,
                                  color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                      ],

                    ),

                  ),
                ),

                // This is the date time picker part of the form
                InkWell(
                  onTap: () {
                    showDatePicker(
                      context: context,
                      firstDate: DateTime(1940),
                      lastDate: DateTime(2030),
                      initialDate: pickeddate,
                    ).then((date){
                      setState(() {
                        if(date != null)
                        pickeddate = date;
                      });
                    });
                  },
                    child: Container(
                    width: (SizeConfig.screenWidth - 30),
                    height: SizeConfig.screenHeight * 0.10,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment(-0.8, 0),
                          child: Text(
                              "Date: ${pickeddate.year}:${pickeddate
                                  .month}:${pickeddate.day} ",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 23.0,
                                  color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.8, 0),
                          child: Icon(
                            Icons.calendar_today,
                          ),
                        ),
                      ],

                    ),

                  ),
                ),
                InkWell(
                  onTap: () {
                    showTimePicker(
                      context: context,
                      initialTime: time,
                    ).then((temptime){
                      setState(() {
                        if(temptime != null)
                          time = temptime;
                      });
                    });
                  },
                  child: Container(
                    width: (SizeConfig.screenWidth - 30),
                    height: SizeConfig.screenHeight * 0.10,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment(-0.8, 0),
                          child: Text(
                              "Time: ${time.hour}:${time.minute}",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 23.0,
                                  color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.8, 0),
                          child: Icon(
                            Icons.lock_clock,
                          ),
                        ),
                      ],

                    ),

                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: (SizeConfig.screenWidth - 30),
                    height: SizeConfig.screenHeight * 0.10,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment(-0.8, 0),
                          child: Text(
                              'Clean without supervision: ',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 23.0,
                                  color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                        Align(
                          //   alignment: Alignment(-0.9,0),
                          child: Checkbox(
                            value: checkboxvalue,
                            activeColor: Colors.green,
                            onChanged: (bool ?newvalue) {
                              setState(() {
                                checkboxvalue = newvalue;
                              });

                            },
                          ),
                        ),
                      ],

                    ),

                  ),
                ),
                InkWell(
                  child: Container(
                    width: (SizeConfig.screenWidth - 30),
                    height: SizeConfig.screenHeight * 0.10,
                    child: Align(
                      alignment: Alignment(0, 0.5),
                      child: ElevatedButton(
                        onPressed: () => showAlertDialog(context),
                        child: const Text(
                            'Send Request', style: TextStyle(fontSize: 20)),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF18BD5B)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );

  }
  /*Future<http.Response> createAlbum(String title) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );

    if (response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      //
     // debugPrint();
      //return Album.fromJson(jsonDecode(response.body));
    }
    else throw  Exception();

  }  */
  void showAlertDialog(BuildContext context) => showDialog(
      context: context, barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return  AlertDialog(
          title: new Text('Success!'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: [
                new Text('Your Service Request has been created!'),
              ],
            ),
          ),
          actions: [
             ElevatedButton(
              child: Text('Ok'),
              onPressed: () {
                query q = query(pickeddate.year,pickeddate.month,pickeddate.day,pickeddate.hour,pickeddate.minute);
                http.post(
                  Uri.parse('https://jsonplaceholder.typicode.com/albums'),
                  headers: <String, String>{
                    'Content-Type': 'application/json; charset=UTF-8',
                  },
                  body: jsonEncode(q.toJson()),
                );
               // http://9537-103-197-113-75.ngrok.io
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(HomePage.tag);
        },
        ),
          ],
        );
      },

    );
}
