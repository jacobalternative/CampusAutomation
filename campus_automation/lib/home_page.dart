import 'package:campus_automation/form2.dart';
import 'package:campus_automation/login_page.dart';
import 'package:flutter/material.dart';
import 'active_requests.dart';
import 'building.dart';
import 'size_config.dart';
import 'form.dart';
class HomePage extends StatelessWidget {
  static String tag = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF83D0E4),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: Container(
                      //Upper widget bar
                      width: SizeConfig.screenWidth,
                      height: SizeConfig.screenHeight * 0.33,
                      decoration: const BoxDecoration(
                        color: Color(0xFF83D0E4),
                        image: DecorationImage(
                          image: AssetImage('assets/logo2.jpeg'),
                          fit: BoxFit.fitHeight,
                          // borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Align(
                        alignment: const Alignment(0.97, -0.6),
                        child: MaterialButton(
                          onPressed: () => newdialog(context),

                          //Dialogbox(context);

                          color: Colors.blue,
                          textColor: Colors.white,
                          /*child: const Icon(
                          Icons.home,
                          size: 24,
                        ),*/
                         padding: const EdgeInsets.all(2),
                          shape: const CircleBorder(),
                            child: CircleAvatar(
                              radius: 22.0,
                              backgroundImage: AssetImage('assets/alucard.jpg'),
                            ),

                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: Container(
                      // Lower Widget Bar.
                      width: SizeConfig.screenWidth,
                      height: SizeConfig.screenHeight * 0.72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        // This is the column of the pair of boxes in the lower widget bar.

                        children: [
                          // This group of children will consist of pair of widget rows.
                          Row(
                            children: [
                              InkWell(
                                onTap: () => servicedialog(context),
                                //Navigator.of(context).pushNamed(SignUpPage.tag);

                                child: Container(
                                  margin: const EdgeInsets.fromLTRB(
                                      8, 20, 4, 4),
                                  // Box one
                                  width: SizeConfig.screenWidth * 0.46,
                                  height: SizeConfig.screenHeight * 0.28,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage('assets/Service.png'),
                                      fit: BoxFit.fitWidth,
                                    ),
                                    //color: const Color(0xFF424757),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () => servicedialog2(context),

                            //    onTap: () {
                             //   Navigator.of(context).pushNamed(laundry.tag);
                             //   },
                                child: Container(
                                  // Box two
                                  margin: const EdgeInsets.fromLTRB(
                                      4, 20, 4, 4),
                                  width: SizeConfig.screenWidth * 0.46,
                                  height: SizeConfig.screenHeight * 0.28,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage('assets/laundry.png'),
                                      fit: BoxFit.contain,
                                    ),
                                    //color: const Color(0xFF424757),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed(Building.tag);
                                },
                                child: Container(
                                  margin: const EdgeInsets.fromLTRB(
                                      8, 16, 4, 8),
                                  // Box one
                                  width: SizeConfig.screenWidth * 0.46,
                                  height: SizeConfig.screenHeight * 0.28,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/bigcanteen.jpg'),
                                      fit: BoxFit.fitHeight,
                                    ),
                                    //color: const Color(0xFF424757),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () =>opendialog(context),
                                  //Navigator.of(context).pushNamed(Building.tag);

                                child: Container(
                                  // Box two
                                  margin: const EdgeInsets.fromLTRB(
                                      4, 16, 4, 8),
                                  width: SizeConfig.screenWidth * 0.46,
                                  height: SizeConfig.screenHeight * 0.28,//0.28
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage('assets/newFeedback.jpeg'),
                                      fit: BoxFit.contain,
                                    ),

                                    //color: const Color(0xFF424757),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //),
                        ],
                      ),
                    ),
                  ),


                ], // children of the lower widget box
              ),
            ],
          ),
        )
    );
  }

  void servicedialog(BuildContext context) =>
      showDialog(
          context: context,
          builder: (context) =>
              SimpleDialog(
                title: const Text('Room Service',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),

                ),
                children: <Widget>[
                  SimpleDialogOption(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Text('Previous Requests',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(Active_Requests.tag);
                    },
                  ),
                  SimpleDialogOption(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Text(
                      'Create a request',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignUpPage.tag);
                    },
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.pink,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Back',
                        style: TextStyle(fontSize: 20, color: Colors.lightBlueAccent),

                      )

                  ),
                ],
              )
      );
  void servicedialog2(BuildContext context) =>
      showDialog(
          context: context,
          builder: (context) =>
              SimpleDialog(
                title: const Text(
                  'Laundry',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  SimpleDialogOption(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Text('Previous Requests',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                  SimpleDialogOption(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Text(
                      'Create a request',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(laundry.tag);
                    },
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.pink,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Back',
                        style: TextStyle(fontSize: 20, color: Colors.lightBlueAccent),

                      )

                  ),
                ],
              )
      );
  Future opendialog(BuildContext context) =>showDialog(
      context: context,
      builder: (context) =>AlertDialog(
        title: Text('Feedback or Suggestions'),
        content: TextField(
          decoration: InputDecoration(

          ),

        ),
        actions: [
          TextButton(
              onPressed: (){
          Navigator.of(context).pop();
              },
              child: Text('Send'))
        ],
      )
      );
  void newdialog(BuildContext context) =>
      showDialog(
          context: context,

          builder: (context) =>
              SimpleDialog(
                title: const Text("Profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                children: <Widget>[
                  const SimpleDialogOption(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),

                    child: Text('Name: Dhanvi Medha',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    //onPressed: (){},
                    //style: TextStyle(fontStyle: 24),),

                  ),
                  const SimpleDialogOption(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),

                    child: Text('Roll Number: IMT2020529',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    //style: TextStyle(fontStyle: 24),),

                  ),
                  const SimpleDialogOption(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),

                    child: Text('Room Number: R205',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    //style: TextStyle(fontStyle: 24),),


                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.pink,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Close',
                                style: TextStyle(fontSize: 20))

                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.pink,
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed(LoginPage.tag);
                            }, child: const Text('Log out',style: TextStyle(fontSize: 20)))
                      ])
                ],

              )


      );
}
