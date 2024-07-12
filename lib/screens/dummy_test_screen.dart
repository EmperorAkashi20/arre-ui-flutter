import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../styles/styles.dart';
import '../widgets/arre_back_button.dart';

class DummyTestScreen extends ConsumerStatefulWidget with ArreScreen {
  const DummyTestScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DummyTestScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => 'dummy';
}

class _DummyTestScreenState extends ConsumerState<DummyTestScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text("Text Styles"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.green,
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - sys12Bold',
                    style: ATextStyles.sys12Bold(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.red, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - sys12Regular',
                    style: ATextStyles.sys12Regular(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.green, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - sys14Bold',
                    style: ATextStyles.sys14Bold(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.blue, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - sys14Regular',
                    style: ATextStyles.sys14Regular(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.red, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - sys16Regular',
                    style: ATextStyles.sys16Regular(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.green, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - sys18Regular',
                    style: ATextStyles.sys18Regular(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.blue, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - sys20Bold',
                    style: ATextStyles.sys20Bold(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.red, // Background color of the container
                  child: Text(
                    'sample text goes here - sys20Regular',
                    style: ATextStyles.sys20Regular(AColors.greyLight),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.green, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - user12Bold',
                    style: ATextStyles.user12Bold(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.red, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - user12Regular',
                    style: ATextStyles.user12Regular(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.green, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - user14Bold',
                    style: ATextStyles.user14Bold(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.blue, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - user14Regular',
                    style: ATextStyles.user14Regular(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.red, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - user16Regular',
                    style: ATextStyles.user16Regular(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.green, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - user18Regular',
                    style: ATextStyles.user18Regular(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.blue, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - user20Bold',
                    style: ATextStyles.user20Bold(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.red, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - user20Regular',
                    style: ATextStyles.user20Regular(AColors.greyLight),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.green, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - num12Bold',
                    style: ATextStyles.num12Bold(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.red, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - num12Regular',
                    style: ATextStyles.num12Regular(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.green, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - num14Bold',
                    style: ATextStyles.num14Bold(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.blue, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - num14Regular',
                    style: ATextStyles.num14Regular(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.red, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - num16Regular',
                    style: ATextStyles.num16Regular(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.green, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - num18Regular',
                    style: ATextStyles.num18Regular(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.blue, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - num20Bold',
                    style: ATextStyles.num20Bold(AColors.greyLight),
                  ),
                ),
                Container(
                  color: Colors.red, // Background color of the container
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'sample text goes here - num20Regular',
                    style: ATextStyles.num20Regular(AColors.greyLight),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
