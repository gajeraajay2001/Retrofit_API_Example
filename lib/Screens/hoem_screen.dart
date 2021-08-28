import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Models/data_model.dart';
import 'package:untitled1/Service/api_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Retrofit Api"),
        centerTitle: true,
      ),
      body: _builder(context),
    );
  }
}

FutureBuilder<ResponseData> _builder(BuildContext context) {
  final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
  return FutureBuilder(
      future: client.getUsers(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return _buildListView(context, snapshot.data);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      });
}

Widget _buildListView(BuildContext context, ResponseData posts) {
  return ListView.builder(
      itemCount: posts.data.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Icon(
              Icons.account_box,
              color: Colors.green,
              size: 50,
            ),
            title: Text(
              posts.data[index]['name'],
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(posts.data[index]['email']),
          ),
        );
      });
}
