import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:raptrack/scoped_models/main.dart';

class hauptmenu extends StatelessWidget{

  Widget _buildSideDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Auswählen'),
          ),
          ListTile(
            leading: Icon(Icons.announcement),
            title: Text('Eins'),
            onTap: () {
             // Navigator.pushReplacementNamed(context, '/');
            },
          ),
         
          Divider(),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Zwei'),
            onTap: () {
              //Navigator.pushReplacementNamed(context, '/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.assignment),
            title: Text('Drei'),
            onTap: () {
             // Navigator.pushReplacementNamed(context, '/');
            },
          ),
           Divider(),
              ListTile(
            leading: Icon(Icons.payment),
            title: Text('Vier'),
            onTap: () {
             // Navigator.pushReplacementNamed(context, '/finanzen');
            },
          ),
         
        ],
      ),
    );
  }
    DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
      //müssen Bild noch holen
      image: AssetImage('assets/testBild.jpg'),
    );
  }
   Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
      return  Scaffold(
              drawer: _buildSideDrawer(context),
              appBar: AppBar(
                title: Text('Hauptmenü'),
              ),
              body: Container(decoration: BoxDecoration(
              image: _buildBackgroundImage(), 
              
            ),child:  Center(
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                  children: <Widget>[
                    Text(
                        'Willommen bei RapTrack',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold)),
               
                  ],
                ))),
              ),),
              
              
            );
          
    });
  }

}