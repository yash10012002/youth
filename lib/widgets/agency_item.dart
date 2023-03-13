import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youth/models/agency.dart';
import 'package:youth/screens/agency_detail_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:video_player/video_player.dart';

class Agency_Item extends StatefulWidget {
  final String id;
  final String title;
  final String image;
  final String image2;
  final String url;

  const Agency_Item({
    required this.id,
    required this.title,
    required this.image,
    required this.image2,
    required this.url,
  });

  @override
  State<Agency_Item> createState() => _Agency_ItemState();
}

class _Agency_ItemState extends State<Agency_Item> {
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;
  // final List<Agency> list;
  late VideoPlayerController _videoPlayerController;
  bool _isPlaying = false;
  // Uri url = Uri.parse(
  //     'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4');

  @override
  void initState() {
    super.initState();
    _loadVideo();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  void _loadVideo() {
    final url = Provider.of<Agency>(context, listen: false).url;
    _videoPlayerController = VideoPlayerController.network(url)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  void _playPauseVideo() {
    setState(() {
      _isPlaying = !_isPlaying;
      if (_isPlaying) {
        _videoPlayerController.play();
      } else {
        _videoPlayerController.pause();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final agencyitem = Provider.of<Agency>(context);
    return InkWell(
      child: Container(
        // margin: EdgeInsets.all(10),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context, MaterialPageRoute(builder: (context) => AgencyDetailScreen(agencyitem))
                // );
                Navigator.of(context).pushNamed(AgencyDetailScreen.routeName,
                    arguments: agencyitem.id);
              },
              child: Container(
                height: 175,
                width: double.infinity,
                // margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Stack(
                    children: [
                      PageView(
                        controller: controller,
                        onPageChanged: (int page) {
                          setState(() {
                            currentPage = page;
                          });
                        },
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(agencyitem.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                          // Container(
                          //   decoration: const BoxDecoration(
                          //     image: DecorationImage(
                          //       image: AssetImage(
                          //           'assets/images/slider_image_3.jpg'),
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          // ),
                          //                       FutureBuilder(
                          //   future: videoController.initialize(),
                          //   builder: (context, snapshot) {
                          //     if (snapshot.connectionState == ConnectionState.done) {
                          //       return AspectRatio(
                          //         aspectRatio: videoController.value.aspectRatio,
                          //         child: VideoPlayer(videoController),
                          //       );
                          //     } else {
                          //       return Center(child: CircularProgressIndicator());
                          //     }
                          //   },
                          // ),
                          GestureDetector(
                            onTap: _playPauseVideo,
                            child: _videoPlayerController.value.isInitialized
                                ? AspectRatio(
                                    aspectRatio: _videoPlayerController
                                        .value.aspectRatio,
                                    child: Stack(
                                      children: [
                                        VideoPlayer(_videoPlayerController),
                                        if (!_isPlaying)
                                          Center(
                                            child: Icon(Icons.play_arrow,
                                                size: 80, color: Colors.white),
                                          ),
                                      ],
                                    ),
                                  )
                                : Center(child: CircularProgressIndicator()),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(agencyitem.image2),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 10.0,
                        right: 10.0,
                        child: DotsIndicator(
                          dotsCount: 3,
                          position: currentPage.toDouble(),
                          decorator: DotsDecorator(
                            color: Colors.grey.shade400,
                            activeColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      widget.title,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.amber.shade50,
                    child: Icon(
                      Icons.call,
                      color: Colors.amber,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
