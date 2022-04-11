import 'package:flutter/material.dart';

class AuthLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  child: Align(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/logoLogin.png'),
                      SizedBox(height: 1, width: 15),
                      Text(
                        'Food Lab',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'LexendDeca',
                          fontSize: 34,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
