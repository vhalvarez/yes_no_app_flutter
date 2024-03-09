import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_messge_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://imagenes.elpais.com/resizer/sk0ZF93ts8UOTb3exVVFNIrkGDA=/1960x1470/cloudfront-eu-central-1.images.arcpublishing.com/prisa/H2FJ6NCONVPDNI6W7O5FTK6EM4.jpg'),
          ),
        ),
        title: const Text("Amor <3"),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return const MyMessageBubble();
                    }))
          ],
        ),
      ),
    );
  }
}
