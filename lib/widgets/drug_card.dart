import 'package:flutter/material.dart';

import '../models/drug_model.dart';

class DrugCard extends StatelessWidget {
  final Drug drug;
  final bool isExpanded;
  final VoidCallback onTap;

  const DrugCard({
    Key? key,
    required this.drug,
    required this.isExpanded,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isExpanded ? 0.3 : 1.0,
      duration: const Duration(milliseconds: 300),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.blue.shade200, width: 1),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            // Simplified layout to prevent overflow issues
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Drug name and icon
                Row(
                  children: [
                    Icon(
                      Icons.medication,
                      size: 28,
                      color: Colors.blue.shade700,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        drug.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
                const Divider(height: 16),

                // Classification
                Text(
                  'Class: ${drug.classification}',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(height: 8),

                // Brand names
                const Text(
                  'Brand Names:',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  drug.brandNames.take(2).join(', ') +
                      (drug.brandNames.length > 2 ? '...' : ''),
                  style: const TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(height: 8),

                // Indication summary (truncated)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Indication:',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Expanded(
                        child: Text(
                          drug.indication,
                          style: const TextStyle(fontSize: 12),
                          overflow: TextOverflow.fade,
                          maxLines: 4,
                        ),
                      ),
                    ],
                  ),
                ),

                // Tap to expand hint with animation
                Align(
                  alignment: Alignment.bottomRight,
                  child: TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: const Duration(seconds: 1),
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: Transform.translate(
                          offset: Offset(0, 5 - (5 * value)),
                          child: Text(
                            'Tap for details',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue.shade700,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
