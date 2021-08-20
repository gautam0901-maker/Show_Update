import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_version/new_version.dart';
import 'package:showupdate/gautam.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Showupdate'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void initState(){
    super.initState();
   _checkforupdate();
  }
  void _checkforupdate() async {
   final newversion = NewVersion(
     androidId:"com.kloudlearn.assistant",
     iOSId: '1572038551',
   );
 final  status  = await newversion.getVersionStatus();
 if(status.storeVersion != status.localVersion){
   print('have to update');
   Navigator.push(
       context,
       CupertinoPageRoute(builder: (context) => check()));
   //newversion.showUpdateDialog(context: context, versionStatus:status );
/*showModalBottomSheet(context: context, builder: (context){

  return Scaffold(
    appBar: AppBar(
      title: Text('Back'),

    ),
    backgroundColor: Colors.white,
    body: Column(
      children: <Widget>[
        SizedBox(
          height: 23,
        ),
        Center(
          child: Text('Your App is not uptodate',
           style: TextStyle(
             fontSize: 50
           ),),
        ),
         Column(
           children: <Widget>[
             SizedBox(height: 24,),
             Row(
               children: <Widget>[
                 Center(
                     child: ElevatedButton(
                       onPressed: ()async {
                        await LaunchApp.openApp(
                          androidPackageName: 'com.kloudlearn.assistant',
                          appStoreLink: 'https://play.google.com/store/apps/details?id=com.kloudlearn.assistant&hl=en_IN&gl=US',
                        );

                       },
                       child: Text(
                         'Update',
                         style: TextStyle(
                             fontSize: 24,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                         ),
                       ),
                     )
                 ),
               ],

             ),

           ],
         )
      ],

    )
  );
});*/

 }
 else {
   print('up to date');
 }



print('device' + status.localVersion);
print('store' + status.storeVersion);


  }
  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
