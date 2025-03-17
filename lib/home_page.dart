import 'dart:html' as html;

import 'package:flutter/material.dart';

import 'info.dart';
import 'models/drug_model.dart';
import 'widgets/drug_card.dart';
import 'widgets/expanded_drug_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  Drug? selectedDrug;
  final ScrollController _scrollController = ScrollController();
  late AnimationController _bgAnimationController;
  late Animation<Color?> _bgColorAnimation;

  @override
  void initState() {
    super.initState();
    _bgAnimationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _bgColorAnimation = ColorTween(
      begin: Colors.black.withOpacity(0),
      end: Colors.black.withOpacity(0.5),
    ).animate(_bgAnimationController);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _bgAnimationController.dispose();
    super.dispose();
  }

  void _selectDrug(Drug drug) {
    setState(() {
      if (selectedDrug == drug) {
        // Collapse if already selected
        _bgAnimationController.reverse();
        selectedDrug = null;
      } else {
        // Expand the selected drug
        selectedDrug = drug;
        _bgAnimationController.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600;

    return Scaffold(
      body: Stack(
        children: [
          // Main content
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.shade50, Colors.blue.shade700],
              ),
            ),
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                // App Bar with site title and decorative elements
                SliverAppBar(
                  expandedHeight: 200.0,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    title: const Text(
                      'Pharmaceutical Information Center',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.blue.shade700,
                                Colors.blue.shade900,
                              ],
                            ),
                          ),
                        ),
                        // Decorative pill icons pattern
                        Positioned.fill(
                          child: Opacity(
                            opacity: 0.1,
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 10,
                                  ),
                              itemCount: 100,
                              itemBuilder: (context, index) {
                                return const Icon(
                                  Icons.medication,
                                  color: Colors.white,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Introduction text
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Hero(
                      tag: 'intro-card',
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Welcome to our Drug Information Resource',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Browse our comprehensive database of pharmaceutical information. Click on any drug card to view detailed information including dosage, indications, side effects, and more.',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // Grid of drug cards - Responsive grid for smaller screens
                SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 400.0,
                      mainAxisSpacing: 16.0,
                      crossAxisSpacing: 16.0,
                      // Better aspect ratio for small screens
                      childAspectRatio: isSmallScreen ? 0.8 : 1.0,
                    ),
                    delegate: SliverChildBuilderDelegate((
                      BuildContext context,
                      int index,
                    ) {
                      if (index >= drugs.length) return null;
                      final drug = drugs[index];

                      return DrugCard(
                        drug: drug,
                        isExpanded: selectedDrug == drug,
                        onTap: () => _selectDrug(drug),
                      );
                    }, childCount: drugs.length),
                  ),
                ),

                // Footer
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.blue.shade900,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '© 2025 Pharmaceutical Information Center. All information is for educational purposes only.',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 20),
                          Image.asset(
                            'assets/images/Logo.jpeg',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 20),
                          TextButton(
                            onPressed: () {
                              final url =
                                  Uri.base
                                      .resolve('assets/articles/Source.pdf')
                                      .toString();
                              html.AnchorElement(href: url)
                                ..setAttribute("download", "Sources.pdf")
                                ..click();
                            },
                            child: const Text(
                              'Download Sources',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Modal overlay for expanded card
          AnimatedBuilder(
            animation: _bgAnimationController,
            builder: (context, child) {
              return Visibility(
                visible: _bgAnimationController.value > 0,
                child: GestureDetector(
                  onTap: () {
                    // Close the modal when tapping the background
                    if (selectedDrug != null) {
                      setState(() {
                        _bgAnimationController.reverse();
                        selectedDrug = null;
                      });
                    }
                  },
                  child: Container(color: _bgColorAnimation.value),
                ),
              );
            },
          ),

          // Expanded drug card as a modal/bottom sheet
          if (selectedDrug != null)
            AnimatedBuilder(
              animation: _bgAnimationController,
              builder: (context, child) {
                return isSmallScreen
                    ? _buildBottomSheetExpandedCard(selectedDrug!)
                    : _buildModalExpandedCard(selectedDrug!);
              },
            ),
        ],
      ),
    );
  }

  // Bottom sheet presentation for mobile screens
  Widget _buildBottomSheetExpandedCard(Drug drug) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: AnimatedBuilder(
        animation: _bgAnimationController,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(
              0,
              (1 - _bgAnimationController.value) * size.height * 0.7,
            ),
            child: Container(
              height: size.height * 0.85,
              child: ExpandedDrugCard(
                drug: drug,
                onClose: () {
                  setState(() {
                    _bgAnimationController.reverse();
                    selectedDrug = null;
                  });
                },
                isBottomSheet: true,
              ),
            ),
          );
        },
      ),
    );
  }

  // Modal presentation for larger screens
  Widget _buildModalExpandedCard(Drug drug) {
    return Center(
      child: AnimatedBuilder(
        animation: _bgAnimationController,
        builder: (context, child) {
          return Transform.scale(
            scale: 0.7 + (0.3 * _bgAnimationController.value),
            child: Opacity(
              opacity: _bgAnimationController.value,
              child: ExpandedDrugCard(
                drug: drug,
                onClose: () {
                  setState(() {
                    _bgAnimationController.reverse();
                    selectedDrug = null;
                  });
                },
                isBottomSheet: false,
              ),
            ),
          );
        },
      ),
    );
  }
}
