import 'package:flutter/material.dart';

import 'package:solveaura/ui/pages/pre_test/models/topics.dart';
import 'package:solveaura/ui/pages/pre_test/views/flashcard_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color bgColor = Color(0xFF4993FA);
    const Color bgColor3 = Color(0xFF5170FD);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pretest'),
        backgroundColor: bgColor3,
      ),
      backgroundColor: bgColor3,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 0, left: 15, right: 15),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                decoration: BoxDecoration(
                  color: bgColor3,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.24),
                      blurRadius: 20.0,
                      offset: const Offset(0.0, 10.0),
                      spreadRadius: -10,
                      blurStyle: BlurStyle.outer,
                    )
                  ],
                ),
                child: Image.asset("assets/dash.png"),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Pre-test ",
                        style:
                        Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 21,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      for (var i = 0; i < "Questions!!!".length; i++) ...[
                        TextSpan(
                          text: "Questions!!!"[i],
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                            fontSize: 21 + i.toDouble(),
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.85,
                ),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: mathTopicsList.length,
                itemBuilder: (context, index) {
                  final topicsData = mathTopicsList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewCard(
                            typeOfTopic: topicsData.topicQuestions,
                            topicName: topicsData.topicName,
                          ),
                        ),
                      );
                      print(topicsData.topicName);
                    },
                    child: Card(
                      color: bgColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              topicsData.topicIcon,
                              color: Colors.white,
                              size: 55,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              topicsData.topicName,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
