import 'package:flutter/material.dart';
import '../widgets/categroy_list_view.dart';
import '../widgets/newis_list_views_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
    child: CustomScrollView(
    slivers: [
    const SliverToBoxAdapter(
    child: CategoryListView(),
    ),
    const SliverToBoxAdapter(
    child: SizedBox(
    height: 25,
    ),
    ),
    NewsListViewBuider(
    category: category,
    ),
    ],
    ),

    ),
    );
  }
}

