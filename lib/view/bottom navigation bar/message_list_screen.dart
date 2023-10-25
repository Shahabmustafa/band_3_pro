import 'package:band_two_pro/utils/color_rescource.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessageListPage extends StatefulWidget {
  const MessageListPage({Key? key}) : super(key: key);

  @override
  State<MessageListPage> createState() => _MessageListPageState();
}

class _MessageListPageState extends State<MessageListPage> {
  List<String> imageUrl = [
    "https://i.pinimg.com/474x/56/08/e4/5608e49edf8be6fece75ac518523f150.jpg",
    "https://i.pinimg.com/474x/28/9c/13/289c13bd4395db48331758179ebf8ef7.jpg",
    "https://i.pinimg.com/474x/53/73/86/537386abac75390708597abefab87b7b.jpg",
    "https://i.pinimg.com/474x/6e/81/79/6e8179b7eb3665e9a34ea8e4c51f1828.jpg",
    "https://i.pinimg.com/474x/28/9c/13/289c13bd4395db48331758179ebf8ef7.jpg",
    "https://i.pinimg.com/474x/56/08/e4/5608e49edf8be6fece75ac518523f150.jpg",
    "https://i.pinimg.com/474x/6c/37/fe/6c37fee9a4270bc62644187d4237a240.jpg",
    "https://i.pinimg.com/474x/e4/b0/77/e4b077b7be9ce8ec5f725d45b10ede1a.jpg",
    "https://i.pinimg.com/474x/56/08/e4/5608e49edf8be6fece75ac518523f150.jpg",
    "https://i.pinimg.com/474x/56/08/e4/5608e49edf8be6fece75ac518523f150.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height * 1,
          width: size.width * 1,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.yellow,
                Colors.yellow,
                Colors.white,
                Colors.white,
              ],
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Matches",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageUrl.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8,),
                        child: CachedNetworkImage(
                          imageUrl: imageUrl[index],
                          imageBuilder: (context, imageProvider) {
                            return Container(
                              width: 70, // Adjust the size as needed
                              height: 70, // Adjust the size as needed
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                          placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        ),
                      );
                    },
                  )
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Chats",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Expanded(
                flex: 6,
                  child: ListView.builder(
                    itemCount: imageUrl.length,
                    itemBuilder: (context,index){
                      final item = imageUrl[index]; // Replace with your data source
                      return Slidable(
                        startActionPane: ActionPane(
                          motion: const BehindMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {},
                              backgroundColor: Colors.blue,
                              icon: Icons.share,
                              label: 'Share',
                            ),
                            SlidableAction(
                              onPressed: (context) {},
                              backgroundColor: Colors.green,
                              icon: Icons.call,
                              label: 'Call',
                            ),
                          ],
                        ),
                        endActionPane: ActionPane(
                          motion: const BehindMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {},
                              backgroundColor: Colors.red,
                              icon: Icons.delete,
                              label: 'unmatch',
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: CachedNetworkImage(
                            imageUrl: imageUrl[index],
                            imageBuilder: (context, imageProvider) {
                              return Container(
                                width: 50, // Adjust the size as needed
                                height: 50, // Adjust the size as needed
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                            placeholder: (context, url) => CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Icon(Icons.error),
                          ),
                          title: Text("Alex & We 5"),
                          subtitle: Text("helllo everyone how are you"),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: ColorResource.primaryColor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(child: Text("3",style: TextStyle(color: Colors.white),)),
                              ),
                              Text("20:00"),
                            ],
                          ),
                        ),
                      );
                    },
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
