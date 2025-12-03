import 'package:flutter/material.dart';
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';
import 'comprehensive_examples.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awaitware UI Utilities Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const DemoHomePage(),
    );
  }
}

class DemoHomePage extends StatelessWidget {
  const DemoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awaitware UI Utilities Demo'),
        backgroundColor: Colors.blue.shade600,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.library_books),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ComprehensiveExamples(),
                ),
              );
            },
            tooltip: 'View All Examples',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Section
            _buildHeader(),

            // Feature Cards
            _buildFeatureSection(),

            // Button Examples
            _buildButtonSection(),

            // Stats Cards
            _buildStatsSection(),

            // Product Card Example
            _buildProductCard(),

            // Footer
            _buildFooter(),
          ],
        ).p4(),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        const Text('Welcome to Awaitware UI Utilities')
            .text4Xl()
            .fontBold()
            .textGray900()
            .textCenter(),
        const Text('Powerful Flutter UI toolkit with 500+ utilities')
            .textLg()
            .textGray600()
            .textCenter()
            .pt2(),
        const Text('Build UIs 60-70% faster!')
            .textBase()
            .fontMedium()
            .textBlue600()
            .textCenter()
            .pt1(),
      ],
    ).p6().bgBlue50().roundedXl().m4();
  }

  Widget _buildFeatureSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Key Features').text2Xl().fontBold().textGray900().pb4(),
        [
          _buildFeatureCard(
            icon: Icons.palette,
            title: '500+ Utilities',
            description: 'Comprehensive extension methods',
            color: Colors.blue,
          ),
          _buildFeatureCard(
            icon: Icons.link,
            title: 'Chainable API',
            description: 'Clean, readable code',
            color: Colors.green,
          ),
          _buildFeatureCard(
            icon: Icons.speed,
            title: 'Performance',
            description: 'Lightweight & optimized',
            color: Colors.orange,
          ),
          _buildFeatureCard(
            icon: Icons.check_circle,
            title: 'Type Safe',
            description: 'Full Dart type safety',
            color: Colors.purple,
          ),
        ].wrapSpaced(spacing: 12, runSpacing: 12),
      ],
    ).p4();
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String description,
    required MaterialColor color,
  }) {
    return Column(
      children: [
        Icon(icon, size: 40).p4().bgWhite().roundedFull().shadowMd(),
        Text(title).textLg().fontSemibold().textGray900().pt4(),
        Text(description).textSm().textGray600().textCenter().pt1(),
      ],
    )
        .p6()
        .bgWhite()
        .roundedXl()
        .shadowMd()
        .border()
        .w48()
        .intrinsicHeight();
  }

  Widget _buildButtonSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Button Examples').text2Xl().fontBold().textGray900().pb4(),
        [
          const Text('Primary')
              .textSm()
              .fontSemibold()
              .textWhite()
              .px6()
              .py3()
              .bgBlue600()
              .roundedLg()
              .shadowSm(),
          const Text('Success')
              .textSm()
              .fontSemibold()
              .textWhite()
              .px6()
              .py3()
              .bgGreen600()
              .roundedLg()
              .shadowSm(),
          const Text('Warning')
              .textSm()
              .fontSemibold()
              .textWhite()
              .px6()
              .py3()
              .bgOrange600()
              .roundedLg()
              .shadowSm(),
          const Text('Danger')
              .textSm()
              .fontSemibold()
              .textWhite()
              .px6()
              .py3()
              .bgRed600()
              .roundedLg()
              .shadowSm(),
          const Text('Outline')
              .textSm()
              .fontSemibold()
              .textGray700()
              .px6()
              .py3()
              .border2()
              .borderGray300()
              .roundedLg(),
        ].gap(8).wrapSpaced(spacing: 8, runSpacing: 8),
      ],
    ).p4().bgGray50().roundedXl().m4();
  }

  Widget _buildStatsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Statistics Dashboard')
            .text2Xl()
            .fontBold()
            .textGray900()
            .pb4(),
        [
          _buildStatCard('1,234', 'Active Users', Icons.people, Colors.blue),
          _buildStatCard(
              '\$5.6K', 'Revenue', Icons.attach_money, Colors.green),
          _buildStatCard('89', 'Orders', Icons.shopping_cart, Colors.orange),
          _buildStatCard(
              '+12%', 'Growth', Icons.trending_up, Colors.purple),
        ].wrapSpaced(spacing: 12, runSpacing: 12),
      ],
    ).p4();
  }

  Widget _buildStatCard(
      String value, String label, IconData icon, MaterialColor color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 32, color: color.shade600),
        Text(value).text3Xl().fontBold().textGray900().pt2(),
        Text(label).textSm().textGray600().pt1(),
      ],
    ).p6().bgWhite().roundedXl().shadowMd().w40().aspectSquare();
  }

  Widget _buildProductCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Product Card Example')
            .text2Xl()
            .fontBold()
            .textGray900()
            .pb4(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              color: Colors.grey.shade200,
              child: const Icon(Icons.image, size: 64).center(),
            ).roundedT(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Premium Headphones')
                    .textXl()
                    .fontSemibold()
                    .textGray900(),
                const Text('High-quality wireless audio')
                    .textSm()
                    .textGray600()
                    .pt1(),
                const Text('\$299.99')
                    .text3Xl()
                    .fontBold()
                    .textGreen600()
                    .pt4(),
                [
                  const Text('In Stock')
                      .textXs()
                      .fontMedium()
                      .textGreen700()
                      .px2()
                      .py1()
                      .bgGreen100()
                      .roundedFull(),
                  const Text('Free Shipping')
                      .textXs()
                      .fontMedium()
                      .textBlue700()
                      .px2()
                      .py1()
                      .bgBlue100()
                      .roundedFull(),
                ].gap(8).row().pt2(),
                const Text('Add to Cart')
                    .textSm()
                    .fontSemibold()
                    .textWhite()
                    .textCenter()
                    .py3()
                    .bgBlue600()
                    .roundedLg()
                    .wFull()
                    .pt4(),
              ],
            ).p6(),
          ],
        ).bgWhite().roundedXl().shadowLg().border().borderGray300(),
      ],
    ).p4();
  }

  Widget _buildFooter() {
    return Builder(
      builder: (context) => Column(
        children: [
          const Text('Made with ❤️ using Awaitware UI Utilities')
              .textSm()
              .textGray600()
              .textCenter(),
          const Text('Try it in your Flutter apps!')
              .textXs()
              .textGray500()
              .textCenter()
              .pt1(),
          aw.spaceV(16),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ComprehensiveExamples(),
                ),
              );
            },
            child: const Text('View Comprehensive Examples →')
                .textSm()
                .fontSemibold()
                .textBlue600()
                .textCenter()
                .px4()
                .py2()
                .border2()
                .borderBlue600()
                .roundedLg(),
          ),
        ],
      ).p6().bgGray100().roundedXl().m4(),
    );
  }
}
