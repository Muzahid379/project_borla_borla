
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_borla/role/components/commonBackButton/common_back_button.dart';
import 'package:project_borla/role/components/text/common_text.dart';
import 'package:project_borla/theme/app_color.dart';

import '../../components/gradient_scafold.dart';
import 'innerController/chat_controller.dart';

class ChattingScreen extends StatelessWidget {
  ChattingScreen({super.key});

  final ChatController controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: SafeArea(
        child: Column(
          children: [
            /// Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonBackButton(),
                  CommonText(
                    text: "McKenna Thomas",
                    fontSize: 18,
                    color: AppColors.textDark,
                    fontWeight: FontWeight.w600,
                  ),
                  InkWell(
                    onTap: () {
                      controller.makePhoneCall("01785214412");
                    },
                      child: _circleAction(Icons.phone)),
                ],
              ),
            ),

            /// Messages
            Expanded(
              child: Obx(
                    () => ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: controller.messages.length,
                  itemBuilder: (context, index) {
                    final msg = controller.messages[index];
                    final bool isMe = msg['isMe'];

                    return Align(
                      alignment:
                      isMe ? Alignment.centerRight : Alignment.centerLeft,
                      child: _MessageBubble(message: msg),
                    );
                  },
                ),
              ),
            ),

            /// Input Bar
            _ChatInputBar(controller: controller),
          ],
        ),
      ),
    );
  }

  Widget _circleAction(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Icon(icon, color: AppColors.primaryColor, size: 20),
    );
  }
}

class _MessageBubble extends StatelessWidget {
  final Map<String, dynamic> message;

  const _MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    final bool isMe = message['isMe'];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          message['images'] != null
              ? GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemCount: message['images'].length,
            itemBuilder: (_, i) => ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                message['images'][i],
                fit: BoxFit.cover,
              ),
            ),
          )
              :
          Container(
            constraints:
            BoxConstraints(maxWidth: Get.width * 0.75),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: isMe ? AppColors.primaryColor : Colors.white,
              borderRadius: BorderRadius.only(
                topRight: isMe ? Radius.circular(0) : Radius.circular(20), topLeft: isMe ? Radius.circular(20) : Radius.circular(0),
                bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 6,
                ),
              ],
            ),
            child: CommonText(
              textAlign: isMe ? TextAlign.right : TextAlign.left,
              text: message['text'],
              color: isMe ? Colors.white : Colors.black87,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          CommonText(
            text: message['time'],
            fontSize: 12,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
class _ChatInputBar extends StatelessWidget {
  final ChatController controller;

  const _ChatInputBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.add_circle_outline, color: Colors.grey),
            onPressed: () => controller.pickImage(ImageSource.gallery),
          ),
          Expanded(
            child: TextField(
              controller: controller.messageController,
              decoration: InputDecoration(
                hintText: 'Send a message',
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
              onSubmitted: (_) => controller.sendMessage(),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined, color: Colors.grey),
            onPressed: () => controller.pickImage(ImageSource.camera),
          ),
          IconButton(
            icon: const Icon(Icons.send, color: AppColors.primaryColor),
            onPressed: controller.sendMessage,
          ),
        ],
      ),
    );
  }
}
