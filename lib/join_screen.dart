import 'package:flutter/material.dart';

class JoinScreen extends StatelessWidget {
  final void Function() onCreateMeetingButtonPressed;
  final void Function() onJoinMeetingButtonPressed;
  final void Function(String) onMeetingIdChanged;

  const JoinScreen({
    Key? key,
    required this.onCreateMeetingButtonPressed,
    required this.onJoinMeetingButtonPressed,
    required this.onMeetingIdChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: onCreateMeetingButtonPressed,
            child: const Text("Create Meeting")),
        const SizedBox(height: 16),
        TextField(
            decoration: const InputDecoration(
              hintText: "Meeting ID",
              border: OutlineInputBorder(),
            ),
            onChanged: onMeetingIdChanged),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: onJoinMeetingButtonPressed,
          child: const Text("Join"),
        )
      ],
    );
  }
}
