import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/posts/models/advert_model.dart';
import 'package:flutter_infinite_list/posts/models/post.dart';
import 'package:flutter_infinite_list/posts/utils/colors.dart';
import 'package:nb_utils/nb_utils.dart';

class PostListItem extends StatelessWidget {
  PostListItem({super.key, required this.post});

  final Post post;
  final AdvertModel? newAdd = AdvertModel();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: MediaQuery.of(context).size.width * 0.37,
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: colorBox,
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: 200,
          height: 400,
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // main axis row için,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/4/43/Stalin_Full_Image.jpg')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(newAdd?.description ?? ''),
                  Text('500 TL / Günlük'),
                  Spacer(),
                  //20.height,
                  Container(
                    width: 200,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceAround, // main axis row için,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Icon(
                            Icons.location_pin,
                            color: colorPrimary,
                          ),
                          const Text('İzmir'),
                          const Spacer(),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: filter_color),
                              child: const Padding(
                                padding: EdgeInsets.all(5),
                                child: SizedBox(
                                    child: Text(
                                  'Köpek',
                                  style: TextStyle(
                                      fontFamily: 'Halvetica', fontSize: 12),
                                )),
                              ))
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
