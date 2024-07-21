import 'package:flutter/material.dart';
import 'package:geniusapp/Model/teacher.dart';
import 'package:geniusapp/RemoteServices/remote_services.dart';

class TeacherListScreen extends StatelessWidget {
  final List<Teacher> teacherList;
  const TeacherListScreen({super.key, required this.teacherList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher List'),
      ),
      body: ListView.builder(
        itemCount: teacherList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber,
              child: ListTile(
                leading: SizedBox(
                  //height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)), // Image border
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      child: CircleAvatar(
                        child: Image.network(
                          '${RemoteServices.baseUrl}${teacherList[index].avatar.url}',
                          //fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                title: Text(
                    '${teacherList[index].firstName} ${teacherList[index].lastName.toUpperCase()} '),
                subtitle: Text(
                  teacherList[index].bio,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
