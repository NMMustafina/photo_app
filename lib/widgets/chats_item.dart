import 'package:flutter/material.dart';

class ChatsItem extends StatelessWidget {
  final String pathAvatar;
  final String textUsername;
  final String textMessage;
  final Url;

  const ChatsItem(
      {Key? key,
      required this.pathAvatar,
      required this.textUsername,
      required this.textMessage,
      required this.Url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Url,
            ),
          );
        },
        child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 18, 16, 18),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                  child: Container(
                    width: 64,
                    height: 64,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      pathAvatar,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                        child: Text(
                          textUsername,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        textMessage,
                        softWrap: true,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
            color: Color(0x4C000000),
          ),
        ],
            ),
      );
  }
}
