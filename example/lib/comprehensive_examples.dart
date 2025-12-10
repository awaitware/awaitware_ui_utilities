import 'package:flutter/material.dart';
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';

/// Comprehensive examples demonstrating all Awaitware UI Utilities features
class ComprehensiveExamples extends StatelessWidget {
  const ComprehensiveExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comprehensive Examples'),
        backgroundColor: Colors.blue.shade600,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          _buildSpacingExample(),
          _buildColorExample(),
          _buildTypographyExample(),
          _buildSizingExample(),
          _buildDecorationExample(),
          _buildLayoutExample(),
          _buildFlexExample(),
          _buildTransformExample(),
          _buildAwHelperExample(),
        ],
      ).p4(),
    );
  }

  // ==================== SPACING EXAMPLES ====================
  Widget _buildSpacingExample() {
    return _exampleSection(
      title: '1. Spacing Extensions',
      description: 'Padding and margin utilities',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Padding Examples:').fontBold().pb2(),

          // Padding all sides
          Container(
            color: Colors.blue.shade100,
            child: const Text('p4 (16px all sides)').bgWhite(),
          ).p4().border(),

          aw.spaceV(8),

          // Padding horizontal
          Container(
            color: Colors.green.shade100,
            child: const Text('px6 (24px horizontal)').bgWhite(),
          ).px6().py2().border(),

          aw.spaceV(8),

          // Margin examples
          const Text('Margin Examples:').fontBold().pt4().pb2(),

          Container(
            color: Colors.orange.shade100,
            child: const Text('m4 (16px margin)').p2(),
          ).m4().border().bgWhite(),

          aw.spaceV(8),

          Container(
            color: Colors.purple.shade100,
            child: const Text('mx auto (centered)').p2(),
          ).mxAuto().wFull().border().bgWhite(),
        ],
      ),
    );
  }

  // ==================== COLOR EXAMPLES ====================
  Widget _buildColorExample() {
    return _exampleSection(
      title: '2. Color Extensions',
      description: 'Background and text colors',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Background Colors:').fontBold().pb2(),

          [
            const Text(
              'Blue 600',
            ).textWhite().px4().py2().bgBlue600().rounded(),
            const Text(
              'Green 600',
            ).textWhite().px4().py2().bgGreen600().rounded(),
            const Text('Red 600').textWhite().px4().py2().bgRed600().rounded(),
            const Text(
              'Purple 600',
            ).textWhite().px4().py2().bgPurple600().rounded(),
          ].gap(8).wrapSpaced(spacing: 8, runSpacing: 8),

          aw.spaceV(16),

          const Text('Text Colors:').fontBold().pb2(),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Blue 600 Text').textBlue600().fontBold(),
              const Text('Green 600 Text').textGreen600().fontBold(),
              const Text('Red 600 Text').textRed600().fontBold(),
              const Text('Gray 500 Text').textGray500(),
            ],
          ),
        ],
      ),
    );
  }

  // ==================== TYPOGRAPHY EXAMPLES ====================
  Widget _buildTypographyExample() {
    return _exampleSection(
      title: '3. Typography Extensions',
      description: 'Font sizes, weights, and styles',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Font Sizes:').fontBold().pb2(),
          const Text('Extra Small (12px)').textXs(),
          const Text('Small (14px)').textSm(),
          const Text('Base (16px)').textBase(),
          const Text('Large (18px)').textLg(),
          const Text('Extra Large (20px)').textXl(),
          const Text('2XL (24px)').text2Xl(),
          const Text('3XL (30px)').text3Xl(),
          const Text('4XL (36px)').text4Xl(),

          aw.spaceV(16),

          const Text('Font Weights:').fontBold().pb2(),
          const Text('Light').fontLight(),
          const Text('Normal').fontNormal(),
          const Text('Medium').fontMedium(),
          const Text('Semibold').fontSemibold(),
          const Text('Bold').fontBold(),

          aw.spaceV(16),

          const Text('Text Decoration:').fontBold().pb2(),
          const Text('Underlined Text').underline(),
          const Text('Line Through').lineThrough(),
          const Text('Italic Text').italic(),

          aw.spaceV(16),

          const Text('Text Alignment:').fontBold().pb2(),
          Container(
            color: Colors.grey.shade100,
            child: Column(
              children: [
                const Text('Left Aligned').textLeft().wFull(),
                const Text('Center Aligned').textCenter().wFull(),
                const Text('Right Aligned').textRight().wFull(),
              ],
            ).p2(),
          ),
        ],
      ),
    );
  }

  // ==================== SIZING EXAMPLES ====================
  Widget _buildSizingExample() {
    return _exampleSection(
      title: '4. Sizing Extensions',
      description: 'Width, height, and size constraints',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Width Examples:').fontBold().pb2(),

          Container(color: Colors.blue.shade200).h8().w32().border(),
          const Text('w32 (128px)').textXs().pt1(),

          aw.spaceV(8),

          Container(color: Colors.green.shade200).h8().w48().border(),
          const Text('w48 (192px)').textXs().pt1(),

          aw.spaceV(8),

          Container(color: Colors.orange.shade200).h8().wFull().border(),
          const Text('wFull (100%)').textXs().pt1(),

          aw.spaceV(16),

          const Text('Square Sizes:').fontBold().pb2(),

          [
            Container(color: Colors.red.shade200).w16().h16().border(),
            Container(color: Colors.blue.shade200).w24().h24().border(),
            Container(color: Colors.green.shade200).w32().h32().border(),
            Container(color: Colors.purple.shade200).w48().h48().border(),
          ].gap(8).row(),

          const Text('w16 h16, w24 h24, w32 h32, w48 h48').textXs().pt1(),

          aw.spaceV(16),

          const Text('Aspect Ratios:').fontBold().pb2(),

          Container(
            color: Colors.purple.shade200,
            child: const Text('16:9').textWhite().center(),
          ).wFull().aspectVideo().border(),

          aw.spaceV(8),

          Container(
            color: Colors.teal.shade200,
            child: const Text('1:1').textWhite().center(),
          ).w64().aspectSquare().border(),
        ],
      ),
    );
  }

  // ==================== DECORATION EXAMPLES ====================
  Widget _buildDecorationExample() {
    return _exampleSection(
      title: '5. Decoration Extensions',
      description: 'Borders, shadows, and effects',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Border Radius:').fontBold().pb2(),

          [
            Container(
              color: Colors.blue.shade200,
              child: const Text('rounded').p2(),
            ).rounded(),
            Container(
              color: Colors.green.shade200,
              child: const Text('roundedLg').p2(),
            ).roundedLg(),
            Container(
              color: Colors.orange.shade200,
              child: const Text('roundedXl').p2(),
            ).roundedXl(),
            Container(
              color: Colors.purple.shade200,
              child: const Text('roundedFull').p2(),
            ).roundedFull(),
          ].gap(8).wrapSpaced(spacing: 8, runSpacing: 8),

          aw.spaceV(16),

          const Text('Borders:').fontBold().pb2(),

          [
            const Text('border()').p4().border().rounded(),
            const Text('border2()').p4().border2().rounded(),
            const Text('border4()').p4().border4().rounded(),
          ].gap(8).row(),

          aw.spaceV(16),

          const Text('Box Shadows:').fontBold().pb2(),

          [
            const Text('shadowSm').p4().bgWhite().shadowSm().rounded(),
            const Text('shadow').p4().bgWhite().shadow().rounded(),
            const Text('shadowMd').p4().bgWhite().shadowMd().rounded(),
            const Text('shadowLg').p4().bgWhite().shadowLg().rounded(),
            const Text('shadowXl').p4().bgWhite().shadowXl().rounded(),
          ].gap(12).wrapSpaced(spacing: 12, runSpacing: 12),

          aw.spaceV(16),

          const Text('Opacity:').fontBold().pb2(),

          [
            Container(
              color: Colors.blue.shade600,
              child: const Text('100%').textWhite().p2(),
            ).opacity100(),
            Container(
              color: Colors.blue.shade600,
              child: const Text('75%').textWhite().p2(),
            ).opacity75(),
            Container(
              color: Colors.blue.shade600,
              child: const Text('50%').textWhite().p2(),
            ).opacity50(),
            Container(
              color: Colors.blue.shade600,
              child: const Text('25%').textWhite().p2(),
            ).opacity25(),
          ].gap(8).row(),
        ],
      ),
    );
  }

  // ==================== LAYOUT EXAMPLES ====================
  Widget _buildLayoutExample() {
    return _exampleSection(
      title: '6. Layout Extensions',
      description: 'Alignment, expansion, and positioning',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Center:').fontBold().pb2(),

          Container(
            height: 80,
            color: Colors.blue.shade50,
            child: const Text('Centered Text').bgBlue200().p2().center(),
          ).border(),

          aw.spaceV(16),

          const Text('Expanded:').fontBold().pb2(),

          Row(
            children: [
              Container(
                color: Colors.blue.shade200,
                child: const Text('Normal').p2(),
              ),
              Container(
                color: Colors.green.shade200,
                child: const Text('Expanded').p2(),
              ).expanded(),
              Container(
                color: Colors.orange.shade200,
                child: const Text('Normal').p2(),
              ),
            ],
          ).h12().border(),

          aw.spaceV(16),

          const Text('Scrollable:').fontBold().pb2(),

          SizedBox(
            height: 100,
            child: ListView(
              children: List.generate(
                10,
                (index) =>
                    Text('Scrollable Item ${index + 1}').p2().bgGray100().m1(),
              ),
            ),
          ).border(),
        ],
      ),
    );
  }

  // ==================== FLEX EXAMPLES ====================
  Widget _buildFlexExample() {
    return _exampleSection(
      title: '7. Flex Extensions',
      description: 'Row, Column, Stack, and Gap utilities',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Row with Gap:').fontBold().pb2(),

          [
            const Text('Item 1').bgBlue200().p2(),
            const Text('Item 2').bgGreen200().p2(),
            const Text('Item 3').bgOrange200().p2(),
          ].gap(12).row().border().p2(),

          aw.spaceV(16),

          const Text('Column with Vertical Gap:').fontBold().pb2(),

          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              children: [
                const Text('Item 1').bgBlue200().p2().wFull(),
                const Text('Item 2').bgGreen200().p2().wFull(),
                const Text('Item 3').bgOrange200().p2().wFull(),
              ].gapV(8),
            ),
          ),

          aw.spaceV(16),

          const Text('Space Between:').fontBold().pb2(),

          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: [
              const Text('Start').bgBlue200().p2(),
              const Text('End').bgGreen200().p2(),
            ].row().spaceBetween(),
          ),

          aw.spaceV(16),

          const Text('Wrap with Spacing:').fontBold().pb2(),

          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(
                8,
                (index) => Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors
                      .primaries[index % Colors.primaries.length]
                      .shade200,
                  child: Text('Chip ${index + 1}'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ==================== TRANSFORM EXAMPLES ====================
  Widget _buildTransformExample() {
    return _exampleSection(
      title: '8. Transform Extensions',
      description: 'Rotation, scaling, and flipping',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Rotation:').fontBold().pb2(),

          [
            const Text('0°').bgBlue200().p4(),
            const Text('45°').bgGreen200().p4().rotate45(),
            const Text('90°').bgOrange200().p4().rotate90(),
            const Text('180°').bgPurple200().p4().rotate180(),
          ].gap(16).row(),

          aw.spaceV(16),

          const Text('Scaling:').fontBold().pb2(),

          [
            const Text('75%').bgBlue200().p2().scale75(),
            const Text('100%').bgGreen200().p2().scale100(),
            const Text('125%').bgOrange200().p2().scale125(),
            const Text('150%').bgPurple200().p2().scale150(),
          ].gap(16).row(),

          aw.spaceV(16),

          const Text('Flipping:').fontBold().pb2(),

          [
            const Text('Normal').bgBlue200().p4(),
            const Text('Flip H').bgGreen200().p4().flipH(),
            const Text('Flip V').bgOrange200().p4().flipV(),
          ].gap(16).row(),
        ],
      ),
    );
  }

  // ==================== AW HELPER EXAMPLES ====================
  Widget _buildAwHelperExample() {
    return _exampleSection(
      title: '9. aw Helper Class',
      description: 'Convenient widget creators',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Widget Creators:').fontBold().pb2(),

          aw.text('Created with aw.text()').textBlue600().pb2(),

          aw
              .container(child: const Text('aw.container()').textWhite())
              .p4()
              .bgGreen600()
              .roundedLg()
              .pb2(),

          aw
              .box(child: const Text('aw.box()').textWhite())
              .p4()
              .bgOrange600()
              .roundedLg()
              .pb2(),

          aw.spaceV(16),

          const Text('Spacing Helpers:').fontBold().pb2(),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Before spacing'),
              aw.spaceV(16),
              const Text('aw.spaceV(16)'),
              aw.space4(),
              const Text('aw.space4()'),
            ],
          ).bgGray100().p4().rounded(),

          aw.spaceV(16),

          const Text('Layout Helpers:').fontBold().pb2(),

          aw
              .row([
                const Text('Row 1').bgBlue200().p2(),
                const Text('Row 2').bgGreen200().p2(),
                const Text('Row 3').bgOrange200().p2(),
              ])
              .spaceBetween()
              .border()
              .p2(),

          aw.spaceV(8),

          aw
              .column([
                const Text('Column 1').bgBlue200().p2().wFull(),
                const Text('Column 2').bgGreen200().p2().wFull(),
              ])
              .border()
              .p2(),

          aw.spaceV(16),

          const Text('Pre-styled Card:').fontBold().pb2(),

          aw.card(
            child: Column(
              children: [
                aw.text('Card Title').textLg().fontBold(),
                aw
                    .text('This is a pre-styled card using aw.card()')
                    .textSm()
                    .textGray600()
                    .pt2(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ==================== HELPER METHOD ====================
  Widget _exampleSection({
    required String title,
    required String description,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title).text2Xl().fontBold().textGray900(),
        Text(description).textSm().textGray600().pt1().pb4(),
        child,
        aw.divider(thickness: 2, height: 48),
      ],
    );
  }
}
