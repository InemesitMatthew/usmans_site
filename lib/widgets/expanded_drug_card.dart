import 'dart:html' as html;

import 'package:flutter/material.dart';

import '../models/drug_model.dart';
import 'info_chip.dart';
import 'info_section.dart';

class ExpandedDrugCard extends StatelessWidget {
  final Drug drug;
  final VoidCallback onClose;
  final bool isBottomSheet;

  const ExpandedDrugCard({
    Key? key,
    required this.drug,
    required this.onClose,
    this.isBottomSheet = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: isBottomSheet ? size.width : size.width * 0.9,
      constraints: BoxConstraints(
        maxWidth: 900,
        maxHeight: isBottomSheet ? size.height * 0.85 : size.height * 0.9,
      ),
      margin: EdgeInsets.symmetric(
        vertical: isBottomSheet ? 0 : 32,
        horizontal: isBottomSheet ? 0 : 32,
      ),
      child: Card(
        elevation: 12,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: const Radius.circular(16),
            bottom: isBottomSheet ? Radius.zero : const Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Bottom sheet indicator line
            if (isBottomSheet)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),

            // Header with drug name and close button
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade700,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(16),
                  topRight: const Radius.circular(16),
                  bottomLeft:
                      isBottomSheet ? Radius.zero : const Radius.circular(0),
                  bottomRight:
                      isBottomSheet ? Radius.zero : const Radius.circular(0),
                ),
              ),
              child: Row(
                children: [
                  // Added animation for icon
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: const Duration(milliseconds: 500),
                    builder: (context, double value, child) {
                      return Transform.scale(
                        scale: value,
                        child: const Icon(
                          Icons.medication,
                          color: Colors.white,
                          size: 32,
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      drug.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: onClose,
                  ),
                ],
              ),
            ),

            // Scrollable content area
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                physics: const BouncingScrollPhysics(),
                child: AnimatedCardContent(drug: drug),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Animated content for the expanded card
class AnimatedCardContent extends StatelessWidget {
  final Drug drug;

  const AnimatedCardContent({Key? key, required this.drug}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Classification and RX Type with staggered animation
        Row(
          children: [
            Expanded(
              child: AnimatedEntryWidget(
                delay: 100,
                child: InfoChip(
                  label: 'Classification',
                  value: drug.classification,
                  icon: Icons.category,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: AnimatedEntryWidget(
                delay: 200,
                child: InfoChip(
                  label: 'Availability',
                  value: drug.prescriptionType,
                  icon: Icons.receipt_long,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Content sections with staggered animations
        AnimatedEntryWidget(
          delay: 300,
          child: InfoSection(
            title: 'Brand Names',
            content: drug.brandNames.join(', '),
            icon: Icons.local_offer,
          ),
        ),

        AnimatedEntryWidget(
          delay: 400,
          child: InfoSection(
            title: 'Indication',
            content: drug.indication,
            icon: Icons.healing,
          ),
        ),

        AnimatedEntryWidget(
          delay: 500,
          child: InfoSection(
            title: 'Mechanism of Action',
            content: drug.drugActions,
            icon: Icons.psychology,
          ),
        ),

        AnimatedEntryWidget(
          delay: 600,
          child: InfoSection(
            title: 'Dosage & Administration',
            content: drug.frequency,
            icon: Icons.schedule,
          ),
        ),

        AnimatedEntryWidget(
          delay: 700,
          child: InfoSection(
            title: 'Side Effects',
            content: drug.sideEffects,
            icon: Icons.report_problem,
            highlighted: true,
          ),
        ),

        AnimatedEntryWidget(
          delay: 800,
          child: InfoSection(
            title: 'Drug Interactions',
            content: drug.interactions,
            icon: Icons.shuffle,
            highlighted: true,
          ),
        ),

        AnimatedEntryWidget(
          delay: 900,
          child: InfoSection(
            title: 'Contraindications',
            content: drug.contraindications,
            icon: Icons.not_interested,
            highlighted: true,
          ),
        ),

        AnimatedEntryWidget(
          delay: 1000,
          child: InfoSection(
            title: 'Precautions & Cautions',
            content: drug.caution,
            icon: Icons.warning,
            highlighted: true,
          ),
        ),

        AnimatedEntryWidget(
          delay: 1100,
          child: InfoSection(
            title: 'Additional Information',
            content: drug.additionalInformation,
            icon: Icons.info,
          ),
        ),

        // Article download section
        const SizedBox(height: 24),
        AnimatedEntryWidget(
          delay: 1200,
          child: Center(
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [
                // ElevatedButton.icon(
                //   onPressed: () {
                //     final url = Uri.base.resolve(drug.articlePath).toString();
                //     js.context.callMethod("open", [url]);
                //   },
                //   icon: const Icon(Icons.article),
                //   label: const Text('View Complete Article'),
                //   style: ElevatedButton.styleFrom(
                //     padding: const EdgeInsets.symmetric(
                //       horizontal: 24,
                //       vertical: 12,
                //     ),
                //   ),
                // ),
                ElevatedButton.icon(
                  onPressed: () {
                    final url = Uri.base.resolve(drug.articlePath).toString();
                    html.AnchorElement(href: url)
                      ..setAttribute("download", "${drug.name}.pdf")
                      ..click();
                  },
                  icon: const Icon(Icons.download),
                  label: const Text('Download Article'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
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

// Widget that animates its child when it enters
class AnimatedEntryWidget extends StatelessWidget {
  final Widget child;
  final int delay;

  const AnimatedEntryWidget({Key? key, required this.child, this.delay = 0})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 500),
      // delay: Duration(milliseconds: delay),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: Padding(padding: const EdgeInsets.only(bottom: 16), child: child),
    );
  }
}
