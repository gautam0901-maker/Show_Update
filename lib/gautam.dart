import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:showupdate/whatsnew.dart';
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
          backgroundColor: Colors.indigo,
          body:  Column(
                    children: <Widget>[
                      SizedBox(height: 50,),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration
                            (
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/kl2.png'),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: [
                            Row(
                              children: <Widget>[
                                SizedBox(height: 220,)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text('Update Available',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w500,
                                        ),),
                                    ),
                             Padding(
                               padding: const EdgeInsets.only(top: 20),
                               child: Row(
                                 children: <Widget>[
                                   Center(child: Text('A New version of the App is available',
                                   overflow: TextOverflow.ellipsis,
                                     maxLines: 2,
                                     style: TextStyle(
                                     fontSize: 20,
                                       color: Colors.white
                                   ),
                                   ),

                                    )
                                 ],
                               ),
                             ),
                                    Row(
                                      children: <Widget>[
                                        Center(child: Text('Please Click update to install it',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white
                                          ),
                                        ),

                                        )
                                      ],
                                    ),

                             SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.all(30),
                                      child: Row(
                                        children: <Widget>[
                                          ButtonTheme(

                                            height: 40,
                                            minWidth: 40,
                                            child: RaisedButton(
                                              color: Colors.grey,
                                              shape: RoundedRectangleBorder(),
                                              onPressed: () async {
                                                Navigator.push(
                                                  context,
                                                  CupertinoPageRoute(builder: (context) => whatsnew()),
                                                );
                                              },
                                              child: Text("What's New ?",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15),
                                            child: ButtonTheme(

                                              height: 45,
                                              minWidth: 20,
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: RaisedButton(
                                                  color: Colors.blue,
                                                  shape: RoundedRectangleBorder(),
                                                  onPressed: () async{
                                                    _launchURL();
                                                  },
                                                  child: Text("Update",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],

                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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

