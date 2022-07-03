import 'package:blog_app_new/services/crud.dart';
import 'package:blog_app_new/views/add_blog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CrudMethods crudMethods = new CrudMethods();

  QuerySnapshot blogSnapshot;

  @override
  void initState() {
    crudMethods.getData().then((result) {
      blogSnapshot = result;
      setState(() {});
    });
    super.initState();
  }

  Widget blogsList() {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 24),
        itemCount: blogSnapshot.docs.length,
        itemBuilder: (context, index) {
          return BlogTile(
            author: blogSnapshot.docs[index].get('author'),
            title: blogSnapshot.docs[index].get('title'),
            desc: blogSnapshot.docs[index].get('desc'),
            imgUrl: blogSnapshot.docs[index].get('imgUrl'),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 21.0,
              backgroundImage: AssetImage('images/profilepic1.jpg'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Go",
                  style: TextStyle(
                      fontFamily: "Righteous",
                      fontSize: 25,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
                Text(
                  "Blog",
                  style: TextStyle(
                      fontFamily: "Righteous",
                      fontSize: 25,
                      color: Colors.cyan.shade700,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
              ],
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ),
      body: Container(
        child: blogSnapshot != null
            ? blogsList()
            : Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan.shade400,
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddBlog()));
        },
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imgUrl, title, desc, author;
  BlogTile(
      {@required this.author,
      @required this.desc,
      @required this.imgUrl,
      @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin: EdgeInsets.only(bottom: 24, right: 7, left: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(7),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Image.network(
                imgUrl,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(7),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Poppins',
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 2),
          Container(
            padding: EdgeInsets.all(7),
            child: Text(
              '$desc - By $author',
              style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),
            ),
          )
        ],
      ),
    );
  }
}
