import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePageView();
  }
}

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location Master"),
      ),
      body: listview(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showModal(context);
        },
        child: const Icon(
          Icons.list,
          size: 30,
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  _showModal(BuildContext context) {}

  ListView listview() {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return ListTile(
          onTap: () {},
          // isThreeLine: true,
          leading: Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: const Icon(
              Icons.temple_buddhist,
              size: 36,
              color: Colors.black54,
            ),
          ),
          title: const Text("Anekal"),
          subtitle: const Text("Description"),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        );
      },
      separatorBuilder: (_, i) => const Divider(
        height: 1,
        color: Colors.grey,
        indent: 16,
        endIndent: 16,
      ),
      itemCount: 20,
    );
  }
}
