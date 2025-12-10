import 'package:flutter/material.dart';
import 'package:play_list/models/list_model.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key, required this.lists});
   final List<ListModel> lists;

  @override
  Widget build(BuildContext context) {
    return    
           ListView.builder(
           scrollDirection: Axis.vertical,
           itemCount: lists.length,
           itemBuilder: (context, index)=>ListTile(
             leading: SizedBox(
               width: 40,
               height: 40,
               child: Image(image: AssetImage(lists[index].image)),
             ),
             title: Text(lists[index].audioname),
             subtitle: Text(lists[index].name),
             trailing: IconButton(
               onPressed: (){
                 Icon(Icons.play_arrow);
               },
                icon: Icon(Icons.favorite)),
           )
           );
  }
}