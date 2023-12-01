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
                  width: 500,
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
                Center(
                  child: Text(
                    "Calculus Introduction",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontSize: 21,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
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
                        "Limits",
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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "This is read, ‘‘The limit of f(x) as x approaches c is L.",
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child:  Text(
                        "To illustrate, let us consider",
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: TeXView(
                        renderingEngine: TeXViewRenderingEngine.mathjax(),
                        child: TeXViewDocument(
                          r"""
                          \lim_{x\to 2} \frac{x^2-4}{x-2}
                          """,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Here, f(x)=1+3x and the constant c, which x will approach, is 2. To evaluate the given limit, we will make use of a table to help us keep track of the effect that the approach of x toward 2 will have on f(x). Of course, on the number line, x may approach 2 in two ways: through values on its left and through values on its right. We first consider approaching 2 from its left or through values less than 2. Remember that the values to be chosen should be close to 2",
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Table(
                        border: TableBorder.all(),
                         columnWidths: const <int, TableColumnWidth>{
                           0: FractionColumnWidth(0.25),
                           1: FractionColumnWidth(0.25),
                         },
                        children: const [
                          TableRow(
                            children: [
                              Text("x"),
                              Text("f(x)"),
                            ],
                          ),
                          TableRow(
                              children: [
                                Text("1"),
                                Text("4"),
                              ],
                          ),
                          TableRow(
                              children: [
                                Text("1.4"),
                                Text("5.2"),
                              ],
                          ),
                          TableRow(
                              children: [
                                Text("1.7"),
                                Text("6.1"),
                              ],
                          ),
                          TableRow(
                              children: [
                                Text("1.9"),
                                Text("6.7"),
                              ],
                          ),
                          TableRow(
                              children: [
                                Text("1.95"),
                                Text("6.85"),
                              ],
                          ),
                          TableRow(
                            children: [
                              Text("1.997"),
                              Text("6.991"),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("1.9999"),
                              Text("6.9997"),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("1.9999999"),
                              Text("6.9999997"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Now we consider approaching 2 from its right or through values greater than but close to 2.",
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Table(
                        border: TableBorder.all(),
                        columnWidths: const <int, TableColumnWidth>{
                          0: FractionColumnWidth(0.25),
                          1: FractionColumnWidth(0.25),
                        },
                        children: const [
                          TableRow(
                            children: [
                              Text("x"),
                              Text("f(x)"),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("3"),
                              Text("10"),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("2.5"),
                              Text("8.5"),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("2.2"),
                              Text("7`"),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("2.1"),
                              Text("7.3"),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("2.03"),
                              Text("7.09"),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("2.009"),
                              Text("7.027"),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("2.0005"),
                              Text("7.0015"),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("2.0000001"),
                              Text("7.0000003"),
                            ],
                          ),
                        ],
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Observe that as the values of x get closer and closer to 2, the values of f(x) get closer and closer to 7. This behavior can be shown no matter what set of values, or what direction, is taken in approaching 2. In symbols,",
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: TeXView(
                        renderingEngine: TeXViewRenderingEngine.mathjax(),
                        child: TeXViewDocument(
                          r"""
                          \lim_{x\to 2} \frac{x^2-4}{x-2} = 7
                          """,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
