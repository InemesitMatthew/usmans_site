import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;
  final bool highlighted;

  const InfoSection({
    Key? key,
    required this.title,
    required this.content,
    required this.icon,
    this.highlighted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: highlighted ? Colors.amber.shade50 : Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: highlighted ? Colors.amber.shade200 : Colors.grey.shade300,
        ),
        boxShadow: [
          BoxShadow(
            color: (highlighted ? Colors.amber.shade200 : Colors.grey.shade300)
                .withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 20,
                color:
                    highlighted ? Colors.amber.shade800 : Colors.blue.shade700,
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color:
                      highlighted
                          ? Colors.amber.shade800
                          : Colors.blue.shade700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
          ),
        ],
      ),
    );
  }
}
