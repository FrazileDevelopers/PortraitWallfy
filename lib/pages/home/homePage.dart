import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portraitwallfy/animations/grid.dart';
import 'package:portraitwallfy/constants/colors.dart';
import 'package:portraitwallfy/constants/frazile.dart';
import 'package:portraitwallfy/pages/home/wallBloc.dart';
import 'package:portraitwallfy/pages/image/FullImage.dart';
import 'package:portraitwallfy/services/responses.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WallBloc wallBloc = WallBloc();
  bool isLoading = false;

  @override
  void initState() {
    wallBloc.fetchImages(page: Frazile.page);
    super.initState();
  }

  @override
  void dispose() {
    wallBloc.dispose();
    super.dispose();
  }

  _loadmore() async {
    Frazile.page = Frazile.page + 1;
    await wallBloc.fetchImages(page: Frazile.page);
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    // final ColorArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: StreamBuilder(
              stream: wallBloc.wallpapers,
              builder: (context, AsyncSnapshot<List<Result>> snapshot) {
                if (snapshot.hasData)
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      Positioned(
                        top: -(MediaQuery.of(context).size.height * .40),
                        left: -1.0,
                        right: -1.0,
                        child: Container(
                          height: MediaQuery.of(context).size.height * .977125,
                          width: (MediaQuery.of(context).size.width - 22) *
                              .98941176,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: FzColors().getListColors(
                                ["#FF512F", "#DD2476"], // Bloody Mary
                              ),
                              tileMode: TileMode.clamp,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .05,
                        // left: 0.0,
                        right: MediaQuery.of(context).size.width * .09,
                        // bottom: 0.0,
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: FzColors().getListColors(
                                ["#FFFF00", "#FF6600"], // Yellow Orange
                              ),
                              tileMode: TileMode.clamp,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .05,
                        left: MediaQuery.of(context).size.width * .09,
                        // right: MediaQuery.of(context).size.width * .09,
                        // bottom: 0.0,
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: FzColors().getListColors(
                                ["#2193B0", "#6DD5ED"], // Sexy Blue
                              ),
                              tileMode: TileMode.clamp,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .13,
                        left: -(MediaQuery.of(context).size.width * .02),
                        // right: MediaQuery.of(context).size.width * .09,
                        // bottom: 0.0,
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: FzColors().getListColors(
                                ["#CC2B5E", "#753A88"], // Purple Love
                              ),
                              tileMode: TileMode.clamp,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .13,
                        // left: -(MediaQuery.of(context).size.width * .02),
                        right: -(MediaQuery.of(context).size.width * .02),
                        // bottom: 0.0,
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: FzColors().getListColors(
                                ["#FF5F6D", "#FFC371"],
                              ),
                              tileMode: TileMode.clamp,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .481,
                        left: -(MediaQuery.of(context).size.width * .07),
                        // right: MediaQuery.of(context).size.width * .30,
                        // bottom: 0.0,
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: FzColors().getListColors(
                                ["#92D000", "#E1EB01"], // Green Sexy
                              ),
                              tileMode: TileMode.clamp,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .481,
                        // left: 0.0,
                        right: MediaQuery.of(context).size.width * .43,
                        // bottom: 0.0,
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: FzColors().getListColors(
                                ["#F6356F", "#FF5F50"], // Red Sexy
                              ),
                              tileMode: TileMode.clamp,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .481,
                        // left: -(MediaQuery.of(context).size.width * .07),
                        right: -(MediaQuery.of(context).size.width * .07),
                        // bottom: 0.0,
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: FzColors().getListColors(
                                ["#CC0099", "#6600FF"], // Pink Blue
                              ),
                              tileMode: TileMode.clamp,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .85,
                        // left: 0.0,
                        right: MediaQuery.of(context).size.width * .43,
                        // bottom: 0.0,
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: FzColors().getListColors(
                                ["#46A3B7", "#86F1DE"], // Blue Sexy
                              ),
                              tileMode: TileMode.clamp,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .85,
                        left: -(MediaQuery.of(context).size.width * .07),
                        // right: MediaQuery.of(context).size.width * .30,
                        // bottom: 0.0,
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: FzColors().getListColors(
                                ["#52A7EA", "#712E98"], // Violet Sexy
                              ),
                              tileMode: TileMode.clamp,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .85,
                        // left: -(MediaQuery.of(context).size.width * .07),
                        right: -(MediaQuery.of(context).size.width * .07),
                        // bottom: 0.0,
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: FzColors().getListColors(
                                ["#0099CC", "#99FF66"], // Blue Green
                              ),
                              tileMode: TileMode.clamp,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .05,
                        left: MediaQuery.of(context).size.width * .05,
                        child: Text(
                          Frazile.appName.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            letterSpacing: 1.0,
                            wordSpacing: 2.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .11,
                        left: 10.0,
                        right: 10.0,
                        bottom: 0.0,
                        child: GridAnimate(
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child:
                                // GridView.count(
                                //   crossAxisSpacing: 10.0,
                                //   mainAxisSpacing: 10.0,
                                //   childAspectRatio: .64,
                                //   crossAxisCount: 2,
                                //   physics: BouncingScrollPhysics(),
                                //   scrollDirection: Axis.vertical,
                                //   children: List.generate(
                                //     snapshot.data.length,
                                //     (i) => InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //         child: ClipRRect(
                                //           borderRadius: BorderRadius.circular(
                                //             10.0,
                                //           ),
                                //           child: CachedNetworkImage(
                                //             imageUrl: snapshot.data[i].urls.regular,
                                //             alignment: Alignment.center,
                                //             fit: BoxFit.cover,
                                //           ),
                                //         ),
                                //         decoration: BoxDecoration(
                                //           color: Colors.pink,
                                //           borderRadius: BorderRadius.circular(
                                //             10.0,
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                NotificationListener<ScrollNotification>(
                              onNotification: (ScrollNotification scrolling) {
                                if (!isLoading &&
                                    scrolling.metrics.pixels ==
                                        scrolling.metrics.maxScrollExtent) {
                                  _loadmore();
                                  setState(() {
                                    isLoading = true;
                                  });
                                }
                                return isLoading;
                              },
                              child: StaggeredGridView.countBuilder(
                                // padding: const EdgeInsets.all(8.0),
                                crossAxisCount: 4,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                physics: AlwaysScrollableScrollPhysics(),
                                itemCount: snapshot.data.length,
                                itemBuilder: (c, i) => InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (c) => FullImage(
                                        snapshot.data[i].urls.full,
                                        snapshot.data[i].urls.regular,
                                      ),
                                    ),
                                  ),
                                  child: Hero(
                                    tag: snapshot.data[i].id,
                                    child: Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          10.0,
                                        ),
                                        child: CachedNetworkImage(
                                          fadeInCurve: Curves.easeInCubic,
                                          fadeInDuration:
                                              Duration(milliseconds: 900),
                                          imageUrl:
                                              snapshot.data[i].urls.regular,
                                          alignment: Alignment.center,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.pink,
                                        borderRadius: BorderRadius.circular(
                                          10.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                staggeredTileBuilder: (i) =>
                                    StaggeredTile.count(2, i.isEven ? 2 : 3),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width * .1,
                        right: MediaQuery.of(context).size.width * .1,
                        bottom: MediaQuery.of(context).size.height * .02,
                        child: isLoading
                            ? SpinKitChasingDots(
                                size: 80.0,
                                itemBuilder: (context, index) => DecoratedBox(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: FzColors().getListColors(
                                        [
                                          "#9400D3",
                                          "#4B0082",
                                          "#0000FF",
                                          "#00FF00",
                                          "#FFFF00",
                                          "#FF7F00",
                                          "#FF0000"
                                        ],
                                      ),
                                      tileMode: TileMode.clamp,
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: [
                                        0.0,
                                        0.14285714285714285,
                                        0.2857142857142857,
                                        0.42857142857142855,
                                        0.5714285714285714,
                                        0.7142857142857143,
                                        0.8571428571428571
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                      ),
                    ],
                  );
                if (snapshot.connectionState != ConnectionState.done)
                  return Center(
                    child: Frazile().gradientLoader(),
                  );

                return Scaffold(
                  body: Container(
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
