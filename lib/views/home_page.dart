import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../provider/meal_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(mealProvider);
    return Scaffold(
      appBar: AppBar(),
      body: state.when(
        data: (data){
          return GridView.builder(
            itemCount: data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ), itemBuilder: (context, index){
              final cata = data[index];
              return InkWell(
                onTap: (){
                  Get.to(() => ItemPage(lab));
                },
              );
          }
            );
        }, error: (Object error, StackTrace stackTrace) {  }, loading: () {  }
      ),
    );
  }
}
