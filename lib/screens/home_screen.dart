import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';
import '../widgets/loading_widget.dart';
import '../widgets/user_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final filteredUsers = userProvider.users.where((user) => user.name.toLowerCase().contains(searchQuery.toLowerCase())).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search users...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              ),
              onChanged: (value) => setState(() => searchQuery = value),
            ),
          ),
        ),
      ),
      body: userProvider.isLoading
          ? const LoadingWidget()
          : userProvider.error.isNotEmpty
          ? Center(child: Text(userProvider.error))
          : RefreshIndicator(
        onRefresh: userProvider.fetchUsers,
        child: ListView.builder(
          itemCount: filteredUsers.length,
          itemBuilder: (context, index) => UserListItem(user: filteredUsers[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: userProvider.fetchUsers,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
