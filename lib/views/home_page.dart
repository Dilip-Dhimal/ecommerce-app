import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(mealProvider);
    return Scaffold(
      appBar: AppBar(),
      body: state.when(),
    );
  }
}
