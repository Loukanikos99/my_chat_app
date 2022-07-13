import 'package:chat_client_service/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_chat_app/chat/constants/common_widgets.dart';

class ListTileUserImageWidget extends StatelessWidget {
  const ListTileUserImageWidget({
    super.key,
    required this.userChat,
  });

  final User userChat;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: userChat.picture != null && userChat.picture != ''
          ? Image.network(
              userChat.picture!,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
              loadingBuilder: (
                BuildContext ctx,
                Widget child,
                ImageChunkEvent? loadingProgress,
              ) {
                if (loadingProgress == null) return child;
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 60,
                  height: 60,
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
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
    );
  }
}
