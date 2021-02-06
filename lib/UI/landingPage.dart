import 'package:flutter/material.dart';

import 'package:sustainable_cities/UI/loadingBar.dart';

class LandingPage extends StatefulWidget {
  static const String routeName = '/landingpage';
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool _loadingVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final gridViewElement = InkWell(
      highlightColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orange,
        ),
        child: Center(
          child: Text(
            "EARTHQUAKE RISK",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      onTap: () async {
        await _changeLoadingVisible();
        await Navigator.popAndPushNamed(context, "/earthquakerisk");
      },
    );

    final gridViewElement2 = InkWell(
      highlightColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            "EARTHQUAKE TEST",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      onTap: () async {
        await _changeLoadingVisible();
        await Navigator.popAndPushNamed(context, "/earthquaketest");
      },
    );

    final gridViewElement3 = InkWell(
      highlightColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
        ),
        child: Center(
          child: Text(
            "EARTHQUAKE INFORMATION",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      onTap: () async {
        await _changeLoadingVisible();
        await Navigator.popAndPushNamed(context, "/informationpage");
      },
    );

    final gridViewElement4 = InkWell(
      highlightColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
        ),
        child: Center(
          child: Text(
            "ABOUT",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      onTap: () async {},
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("UYGULAMA ISMI"),
        centerTitle: true,
        backgroundColor: Colors.black,
        toolbarHeight: 100,
      ),
      body: Loading(
        inAsyncCall: _loadingVisible,
        child: Column(
          children: <Widget>[
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(4.0),
                shrinkWrap: true,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                crossAxisCount: 2,
                children: <Widget>[
                  gridViewElement,
                  gridViewElement2,
                  gridViewElement3,
                  gridViewElement4
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _changeLoadingVisible() async {
    setState(() {
      _loadingVisible = !_loadingVisible;
    });
  }
}