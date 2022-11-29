import 'package:flutter_pratice/API%20Integration/model/posts.dart';
import 'package:http/http.dart' as http;

class PostHelper {
  Future<List<Posts>>? getPosts() {
    http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  }
}
