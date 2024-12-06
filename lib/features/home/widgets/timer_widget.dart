import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late Duration duration;

  @override
  void initState() {
    super.initState();
    duration = const Duration(hours: 2, minutes: 8, seconds: 59);
    _startCountdown();
  }

  void _startCountdown() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted && duration.inSeconds > 0) {
        setState(() {
          duration = duration - const Duration(seconds: 1);
        });
        _startCountdown();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final hours = duration.inHours.toString().padLeft(2, '0');
    final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');

    return Row(
      children: [
        _buildTimeBox(hours),
        const SizedBox(width: 2),
        const Text(":"),
        const SizedBox(width: 2),
        _buildTimeBox(minutes),
        const SizedBox(width: 2),
        const Text(":"),
        const SizedBox(width: 2),
        _buildTimeBox(seconds),
      ],
    );
  }

  Widget _buildTimeBox(String value) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        value,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
