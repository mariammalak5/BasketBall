import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tbloc/component/button.dart';
import 'package:tbloc/cubit/basketball_cubit.dart';
import 'package:tbloc/cubit/basketball_state.dart';

class Basketball extends StatelessWidget {
  const Basketball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BasketballCubit, IncrementState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text("Points counter"),
            centerTitle: false,
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("Team A", style: TextStyle(fontSize: 20)),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "${BlocProvider.of<BasketballCubit>(context).teamAPoint}",
                            style: const TextStyle(
                                fontSize: 150),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          buttonWidget(
                              name: "Add 1 Point",
                              onPressed: () {
                                BlocProvider.of<BasketballCubit>(context)
                                    .incrementPoint(team: "A", points: 1);
                              }),
                          const SizedBox(
                            height: 20,
                          ),
                          buttonWidget(
                              name: "Add 2 Point",
                              onPressed: () {
                                BlocProvider.of<BasketballCubit>(context)
                                    .incrementPoint(team: "A", points: 2);
                              }),
                          const SizedBox(
                            height: 20,
                          ),
                          buttonWidget(
                              name: "Add 3 Point",
                              onPressed: () {
                                BlocProvider.of<BasketballCubit>(context)
                                    .incrementPoint(team: "A", points: 3);
                              }),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 400,
                      child:
                          VerticalDivider(thickness: 1, color: Colors.black12),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("Team B", style: TextStyle(fontSize: 20)),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "${BlocProvider.of<BasketballCubit>(context).teamBPoint}",
                            style: const TextStyle(
                                fontSize: 150, ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          buttonWidget(
                              name: "Add 1 Point",
                              onPressed: () {
                                BlocProvider.of<BasketballCubit>(context)
                                    .incrementPoint(team: "B", points: 1);
                              }),
                          const SizedBox(
                            height: 20,
                          ),
                          buttonWidget(
                              name: "Add 2 Point",
                              onPressed: () {
                                BlocProvider.of<BasketballCubit>(context)
                                    .incrementPoint(team: "B", points: 2);
                              }),
                          const SizedBox(
                            height: 20,
                          ),
                          buttonWidget(
                              name: "Add 3 Point",
                              onPressed: () {
                                BlocProvider.of<BasketballCubit>(context)
                                    .incrementPoint(team: "B", points: 3);
                              }),
                        ],
                      ),
                    )
                  ],
                ),
                buttonWidget(
                    name: "rest",
                    onPressed: () {
                      BlocProvider.of<BasketballCubit>(context).rest();
                    })
              ]),
        );
      },
    );
  }
}
