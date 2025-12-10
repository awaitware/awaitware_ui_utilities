import 'package:flutter/material.dart';
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';

/// Example demonstrating the 'aw' prefix for better discoverability
class AwPrefixExample extends StatelessWidget {
  const AwPrefixExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AW Prefix Examples'),
        backgroundColor: Colors.blue.shade600,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: aw.column([
          // Header with aw prefix
          _buildHeader(),

          // Text examples
          _buildTextExamples(),

          // Button examples
          _buildButtonExamples(),

          // Card example
          _buildCardExample(),

          // Layout examples
          _buildLayoutExamples(),

          // Image example
          _buildImageExample(),

          // Spacing examples
          _buildSpacingExamples(),
        ], crossAxisAlignment: CrossAxisAlignment.stretch).p4(),
      ),
    );
  }

  Widget _buildHeader() {
    return aw
        .column([
          aw
              .text('Using the "aw" Prefix')
              .text3Xl()
              .fontBold()
              .textGray900()
              .textCenter(),

          aw
              .text('More discoverable, easier to use!')
              .textLg()
              .textGray600()
              .textCenter()
              .pt2(),

          aw
              .text('Type "aw." to see all available helpers')
              .textSm()
              .textBlue600()
              .textCenter()
              .pt1(),
        ])
        .p6()
        .bgBlue50()
        .roundedXl()
        .m4();
  }

  Widget _buildTextExamples() {
    return aw
        .column([
          aw.text('Text Examples').text2Xl().fontBold().textGray900(),

          aw.spaceV(16),

          aw
              .text('This is extra large text')
              .text4Xl()
              .fontBold()
              .textBlue600(),

          aw.text('This is large text').text2Xl().fontSemibold().textGreen600(),

          aw
              .text('This is normal text with underline')
              .textBase()
              .underline()
              .textGray700(),

          aw.text('This is small italic text').textSm().italic().textGray500(),
        ], crossAxisAlignment: CrossAxisAlignment.start)
        .p4()
        .bgWhite()
        .roundedXl()
        .shadowMd()
        .m4();
  }

  Widget _buildButtonExamples() {
    return aw
        .column([
          aw.text('Button Examples').text2Xl().fontBold().textGray900().pb4(),

          aw.wrap(
            [
              aw.button(
                'Primary',
                onPressed: () {},
                backgroundColor: Colors.blue.shade600,
                textColor: Colors.white,
              ),

              aw.button(
                'Success',
                onPressed: () {},
                backgroundColor: Colors.green.shade600,
                textColor: Colors.white,
              ),

              aw.button(
                'Danger',
                onPressed: () {},
                backgroundColor: Colors.red.shade600,
                textColor: Colors.white,
              ),
            ],
            spacing: 8,
            runSpacing: 8,
          ),
        ], crossAxisAlignment: CrossAxisAlignment.start)
        .p4()
        .bgGray50()
        .roundedXl()
        .m4();
  }

  Widget _buildCardExample() {
    return aw
        .card(
          padding: const EdgeInsets.all(24),
          borderRadius: 16,
          child: aw.column([
            aw.icon(Icons.stars, size: 48, color: Colors.amber.shade600),

            aw.spaceV(16),

            aw
                .text('Beautiful Card')
                .text2Xl()
                .fontBold()
                .textGray900()
                .textCenter(),

            aw.spaceV(8),

            aw
                .text('Created using aw.card() helper')
                .textBase()
                .textGray600()
                .textCenter(),

            aw.spaceV(16),

            aw.button(
              'Learn More',
              onPressed: () {},
              backgroundColor: Colors.blue.shade600,
              textColor: Colors.white,
            ),
          ], crossAxisAlignment: CrossAxisAlignment.center),
        )
        .m4();
  }

  Widget _buildLayoutExamples() {
    return aw
        .column([
          aw.text('Layout Examples').text2Xl().fontBold().textGray900().pb4(),

          // Row example
          aw.text('Row with spacing:').textLg().fontSemibold().textGray700(),
          aw.spaceV(8),
          aw.row([
            aw.container().w16().h16().bgBlue600().roundedLg(),
            aw.spaceH(8),
            aw.container().w16().h16().bgGreen600().roundedLg(),
            aw.spaceH(8),
            aw.container().w16().h16().bgRed600().roundedLg(),
          ]),

          aw.spaceV(24),

          // Stack example
          aw.text('Stack example:').textLg().fontSemibold().textGray700(),
          aw.spaceV(8),
          aw.stack([
            aw.container().w64().h32().bgPurple600().roundedXl(),
            aw.text('Stacked Text').textWhite().fontBold().center(),
          ]),

          aw.spaceV(24),

          // Wrap example
          aw.text('Wrap example:').textLg().fontSemibold().textGray700(),
          aw.spaceV(8),
          aw.wrap(
            [
              aw
                  .text('Tag 1')
                  .textXs()
                  .textBlue700()
                  .px3()
                  .py1()
                  .bgBlue100()
                  .roundedFull(),
              aw
                  .text('Tag 2')
                  .textXs()
                  .textGreen700()
                  .px3()
                  .py1()
                  .bgGreen100()
                  .roundedFull(),
              aw
                  .text('Tag 3')
                  .textXs()
                  .textOrange600()
                  .px3()
                  .py1()
                  .bgOrange100()
                  .roundedFull(),
              aw
                  .text('Tag 4')
                  .textXs()
                  .textPurple600()
                  .px3()
                  .py1()
                  .bgPurple100()
                  .roundedFull(),
            ],
            spacing: 8,
            runSpacing: 8,
          ),
        ], crossAxisAlignment: CrossAxisAlignment.start)
        .p4()
        .bgWhite()
        .roundedXl()
        .shadowMd()
        .m4();
  }

  Widget _buildImageExample() {
    return aw
        .column([
          aw.text('Image Helpers').text2Xl().fontBold().textGray900().pb4(),

          aw.text('Using aw.icon():').textLg().fontSemibold().textGray700(),
          aw.spaceV(8),

          aw.row([
            aw.icon(Icons.favorite, size: 40, color: Colors.red.shade600),
            aw.spaceH(16),
            aw.icon(Icons.star, size: 40, color: Colors.amber.shade600),
            aw.spaceH(16),
            aw.icon(Icons.thumb_up, size: 40, color: Colors.blue.shade600),
          ]),
        ], crossAxisAlignment: CrossAxisAlignment.start)
        .p4()
        .bgGray50()
        .roundedXl()
        .m4();
  }

  Widget _buildSpacingExamples() {
    return aw
        .column([
          aw.text('Spacing Helpers').text2Xl().fontBold().textGray900().pb4(),

          aw.text('Using aw.space helpers:').textBase().textGray700(),

          aw.space2(), // 8px vertical space
          aw.divider(thickness: 1, color: Colors.grey.shade300),
          aw.space2(),

          aw
              .text('aw.spaceV(16) creates 16px vertical space')
              .textSm()
              .textGray600(),
          aw.spaceV(16),

          aw
              .text('aw.spaceH(16) creates 16px horizontal space')
              .textSm()
              .textGray600(),

          aw.space4(), // 16px space

          aw.row([
            aw.text('Item 1').textSm(),
            aw.spaceH(16),
            aw.text('Item 2').textSm(),
            aw.spaceH(16),
            aw.text('Item 3').textSm(),
          ]),
        ], crossAxisAlignment: CrossAxisAlignment.start)
        .p4()
        .bgWhite()
        .roundedXl()
        .shadowMd()
        .m4();
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: AwPrefixExample(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
