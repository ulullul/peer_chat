import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:peer_chat/app/data/entities/user.entity.dart';

class UserAvatar extends StatelessWidget {
  final User user;
  const UserAvatar({
    Key? key,
    required this.user,
    this.fontSize,
    this.radius = 16,
  }) : super(key: key);

  final double? fontSize, radius;

  String getInitials(User user) {
    final splitted = user.fullName.split(' ');
    return splitted[0][0] + splitted[1][0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        child: CircleAvatar(
          backgroundColor: const Color(0xfff5a2d9),
          radius: radius,
          child: Text(
            getInitials(user),
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize ?? 12,
              fontWeight: FontWeight.w800,
              height: 1.333,
            ),
          ),
        ),
      ),
    );
  }
}
