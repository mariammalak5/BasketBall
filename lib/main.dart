import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tbloc/screens/basketballScreen.dart';

import 'cubit/basketball_cubit.dart';

void main() {
  runApp((const HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BasketballCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Basketball(),
      ),
    );
  }
}
