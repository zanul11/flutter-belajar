import 'package:flutter/material.dart';


class UseCamera extends StatefulWidget {
  @override
  _UseCameraState createState() => _UseCameraState();
}



class _UseCameraState extends State<UseCamera> {

  _openGallery(){

  }

  _openCamera(){

  }


  Future<void> _showDialogSelect (BuildContext context) {
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Make a Choice"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("Open Gallery"),
                onTap: (){
                  _openGallery();
                },
              ),
              Padding(padding: EdgeInsets.all(8.0),),
              GestureDetector(
                child: Text("Open Camera"),
                onTap: (){
                  _openCamera();
                },
              )
            ],
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Use Camera"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("No Image Selected"),
              RaisedButton(
                onPressed: (){
                  _showDialogSelect(context);
                },
                child: Text("SELECT"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
