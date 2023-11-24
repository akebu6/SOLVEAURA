import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

class Learn extends StatefulWidget {
  static const routeName = '/learn';
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  final questionOneAnswerController = TextEditingController();

  @override
  void dispose() {
    questionOneAnswerController.dispose();
    super.dispose();
  }

  int radVal = 0;

  late TeXViewRenderingEngine renderingEngine;

  @override
  Widget build(BuildContext context) {
    renderingEngine = radVal == 0
        ? const TeXViewRenderingEngine.katex()
        : const TeXViewRenderingEngine.mathjax();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Math'),
        backgroundColor: Colors.orange.shade900,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage("assets/learn_1.png"),
                      fit: BoxFit.scaleDown,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 20.0,
                        offset: const Offset(-10.0, 10.0),
                        spreadRadius: -10,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  child: Center(
                    child: Text(
                      "Calculus Introduction",
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(10),
                        child: Text(
                          "Calculus is a branch of mathematics that deals with derivatives and integrals of functions, by methods originally based on the summation of infinitesimal differences. The two main types are differential calculus and integral calculus.",
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Limits and Continuity",
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          """Limits are the backbone of calculus, and calculus is called the Mathematics of Change. The study of limits is necessary in studying change in great detail. The evaluation of a particular limit is what underlies the formulation of the derivative and the integral of a function .
                          """,
                          // """
                          //   The concept of limit is used to describe the behavior of a function as its argument.
                          // """
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Example",
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              "Consider a function f of a single variable x.  Consider a constant c which the variable x will approach (c may or may not be in the domain of f). The limit, to be denoted by L, is the unique real value that f(x) will approach as x approaches c. In symbols, we write this process as",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: TeXView(
                          renderingEngine: TeXViewRenderingEngine.katex(),
                          child: TeXViewDocument(
                            r"""
                            \lim_{x\to c} f(x) = L
                            """,
                          ),
                        ),
                       ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
