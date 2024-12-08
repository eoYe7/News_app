import 'package:flutter/material.dart';
import '../widgets/categroy_list_view.dart';
import '../widgets/newis_list_views_builder.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Cloud '),
                Text(
                  'Buzz',
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
          ),
          body:const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CategoryListView(),
               ),
                 SliverToBoxAdapter(
                  child: SizedBox(
                    height: 25,
                  ),
                ),
                   NewsListViewBuider(
                     category: 'general',
                   ),
              ],
            ),
          )),
    );
  }
}


