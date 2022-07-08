import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/room_widgets.dart';

class UserImageWidget extends StatelessWidget {
  const UserImageWidget({
    Key? key,
    required this.chatProvider,
    this.height = 70,
    this.width = 70,
  }) : super(key: key);

  final ChatProvider chatProvider;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: chatProvider.otherUser?.picture != null &&
              chatProvider.otherUser?.picture != ''
          ? Image.network(
              chatProvider.otherUser!.picture!,
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
              'assets/icons/tabbar/UserCircle.svg',
              height: height,
              width: width,
              fit: BoxFit.cover,
            ),
    );
  }
}
