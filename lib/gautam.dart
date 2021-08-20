import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:showupdate/InsidePage.dart';
import 'package:url_launcher/url_launcher.dart';
const _url = 'https://play.google.com/store/apps/details?id=com.kloudlearn.assistant&hl=en_IN&gl=US';
const _url2 = 'https://apps.apple.com/kw/app/kloudlearn/id1572038551';
class check extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.white
            ),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();

                    },
                    child: Icon(
                        Icons.close,
                    color: Colors.black,
                    ),
                  )
              ),
            ],
backgroundColor: Colors.red,
          ),
          backgroundColor: Colors.white,
          body: Column(

            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration
                      (
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/kloudlearn1.png'),
                      ),
                    ),

                  ),

                ],
              ),
              SizedBox(
                height: 50,
                width: 24,
              ),
              Column(
                children: [
              Row(
                children: <Widget>[
                  SizedBox(width: 25,)
                ],
              ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Your App is not up-to-date',
                      style: TextStyle(
                          fontSize: 50,
                        fontWeight: FontWeight.w300,
                      ),),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Column(
                children: <Widget>[

                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(0),
                        child:ButtonTheme(

                          height: 50,
                          minWidth: 200,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RaisedButton(
                              color: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              onPressed: () async {
                                _launchURL();
                              },
                              child: Text("Update",
                               style: TextStyle(
                                 fontSize: 30,
                                 fontWeight: FontWeight.w400,
                               ),
                               ),
                            ),
                          ),
                        ),
                        /*ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(CircleBorder()),
                            padding: MaterialStateProperty.all(EdgeInsets.all(40)),
                            backgroundColor: MaterialStateProperty.all(Colors.blue), // <-- Button color
                          ),
                          onPressed: ()async {
                          _launchURL();
                          },
                          child: Text(
                            'Update',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ),*/
                      ),
                    ],

                  ),

                ],
              )
            ],

          )
      ),
    );
  }
}
void _launchURL() async {
  if(await canLaunch(_url)){

    await launch(_url);
  }
  else (canLaunch(_url2)){launch(_url2);};

}

