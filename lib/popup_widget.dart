import 'package:flutter/material.dart';


class PopupWidget extends StatefulWidget {
  static String routeName = "/popup";
  @override
  _PopupWidgetState createState() => _PopupWidgetState();
}

class _PopupWidgetState extends State<PopupWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator PopupWidget - FRAME

    return Container(
      width: 283,
      height: 233,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
            width: 283,
            height: 233,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Color(0xfffffef5),
            ),
            child: Stack(
              children:[
                Container(
                  width: 289,
                  height: 239,
                  child: Stack(
                    children:[Container(
                      width: 289,
                      height: 239,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Color(0xff1c4570), width: 6, ),
                      ),
                    ),],
                  ),
                ),
                Positioned(
                  left: 196.51,
                  top: 9.41,
                  child: Container(
                    width: 6.03,
                    height: 3.62,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffe0e0c6),
                    ),
                  ),
                ),
                Positioned(
                  left: 45.61,
                  top: 21.71,
                  child: Container(
                    width: 199.97,
                    height: 180.18,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:[
                        Container(
                          width: 15.20,
                          height: 9.41,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 3.62,
                          height: 2.17,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 7.02,
                          height: 4.34,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 7.02,
                          height: 4.34,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 9.36,
                          height: 5.79,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 7.02,
                          height: 4.34,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 7.02,
                          height: 4.34,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 7.02,
                          height: 4.34,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 15.20,
                          height: 9.41,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 9.36,
                          height: 5.79,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 9.36,
                          height: 5.79,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 7.02,
                          height: 4.34,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 7.02,
                          height: 4.34,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 7.02,
                          height: 4.34,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                        SizedBox(height: 6.98),
                        Container(
                          width: 15.20,
                          height: 9.41,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe0e0c6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 53,
                  top: 47,
                  child: SizedBox(
                    width: 177,
                    child: Text(
                      "Are you sure you want to delete all the records?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff1c4570),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 71,
                  top: 154,
                  child: Text(
                    "Yes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff1c4570),
                      fontSize: 17,
                      fontFamily: "Rowdies",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Positioned(
                  left: 188,
                  top: 154,
                  child: Text(
                    "No",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff1c4570),
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
