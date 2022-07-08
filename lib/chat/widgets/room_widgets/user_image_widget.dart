import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_chat_app/chat/room_bloc/room_bloc.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/room_widgets.dart';

class UserImageWidget extends StatelessWidget {
  const UserImageWidget({
    super.key,
    this.height = 70,
    this.width = 70,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final otherUser = context.read<RoomBloc>().otherUser;
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: otherUser?.picture != null && otherUser?.picture != ''
          ? Image.network(
              otherUser!.picture!,
              height: height,
              width: width,
              fit: BoxFit.cover,
              loadingBuilder: (
                BuildContext ctx,
                Widget child,
                ImageChunkEvent? loadingProgress,
              ) {
                if (loadingProgress == null) return child;
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: width,
                  height: height,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.teal,
                      value: loadingProgress.expectedTotalBytes != null &&
                              loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
              errorBuilder: (context, object, stackTrace) =>
                  errorContainerListTile(),
            )
          : SvgPicture.asset(
              'assets/usercircle.svg',
              height: height,
              width: width,
              fit: BoxFit.cover,
            ),
    );
  }
}
