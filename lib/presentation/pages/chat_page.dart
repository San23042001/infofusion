import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../widgets/answer_section.dart';
import '../widgets/side_bar.dart';
import '../widgets/sources_section.dart';

class ChatPage extends StatelessWidget {
  final String question;
  const ChatPage({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          kIsWeb ? const SideBar() : const SizedBox(),
          kIsWeb ? const SizedBox(width: 100) : const SizedBox(),
          const SizedBox(
            width: 100,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question,
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    //sources
                    const SourcesSection(),
                    const SizedBox(
                      height: 24,
                    ),
                    //answer section
                    const AnswerSection()
                  ],
                ),
              ),
            ),
          ),
          kIsWeb
              ? const Placeholder(
                  strokeWidth: 0,
                  color: AppColors.background,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
