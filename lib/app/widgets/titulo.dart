import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  final String label;
  final Color? leftDotColor;
  final Color? rightDotColor;
  final Color? barColor;

  Titulo(this.label, {this.leftDotColor, this.rightDotColor, this.barColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 60,
            child: Row(
              children: [
                SizedBox(width: 15),
                Text(
                  label,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 13),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 2,
                color: barColor ?? Colors.grey,
              ),
              Row(
                children: [
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: leftDotColor ?? Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: rightDotColor ?? Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
