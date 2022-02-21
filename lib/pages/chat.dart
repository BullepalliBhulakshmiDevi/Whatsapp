import 'package:flutter/material.dart';

class SingleChatWidget extends StatelessWidget {
  final String? chatMessage;
  final String? chatTitle;
  final Color? seenStatusColor;
  final String? imageUrl;

  const SingleChatWidget({
    Key? key,
    this.chatMessage,
    this.chatTitle,
    this.seenStatusColor,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imageUrl!),
        ),
        Expanded(
          child: ListTile(
            title: Text('$chatTitle',
                style: const TextStyle(fontWeight: FontWeight.w600)),
            subtitle: Row(children: [
              Icon(
                seenStatusColor == Colors.blue ? Icons.done_all : Icons.done,
                size: 15,
                color: seenStatusColor,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Text(
                    '$chatMessage',
                    style: const TextStyle(overflow: TextOverflow.ellipsis),
                  ),
                ),
              ),
            ]),
            trailing: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Yesterday',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
class ChatsTab extends StatelessWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            SingleChatWidget(
                chatTitle: "Bhumi",
                chatMessage: 'Hello,what are you doing?',
                seenStatusColor: Colors.blue,
                imageUrl: 'lib/assets/e1.jpg'),
            SingleChatWidget(
                chatTitle: "Mahima",
                chatMessage: 'Heyy!! whats up?',
                seenStatusColor: Colors.grey,
                imageUrl: 'lib/assets/e2.jpg'),
            SingleChatWidget(
                chatTitle: "Santoshi",
                chatMessage: 'Can we meet now?',
                seenStatusColor: Colors.grey,
                imageUrl:
                'lib/assets/e3.jpg'),
            SingleChatWidget(
                chatTitle: "Supriya",
                chatMessage: 'Shall I Call you?',
                seenStatusColor: Colors.blue,
                imageUrl:
                'lib/assets/e4.jpg'),
            SingleChatWidget(
                chatTitle: "Madhu",
                chatMessage: 'Can I get your notes?',
                seenStatusColor: Colors.grey,
                imageUrl:
                'lib/assets/e5.jpg'),
            SingleChatWidget(
                chatTitle: "Tulasi",
                chatMessage: 'Good Morning',
                seenStatusColor: Colors.blue,
                imageUrl:
                'lib/assets/e6.jpg'),
            SingleChatWidget(
                chatTitle: "Harshika",
                chatMessage: 'What is the meeting id?',
                seenStatusColor: Colors.blue,
                imageUrl:
                'lib/assets/e7.jpg'),
            SingleChatWidget(
                chatTitle: "Harika",
                chatMessage: 'Ok,Thank you',
                seenStatusColor: Colors.blue,
                imageUrl:
                'lib/assets/e8.jpg'),
          ],
        ),
      ),
    );
  }
}
