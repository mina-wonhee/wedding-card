
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {

  final weddingHoleMarker = LatLng(37.34,127.1066667);
  static const _initialCameraPosition = CameraPosition(target: LatLng(37.3400042, 127.104478), zoom: 16);

  late GoogleMapController _googleMapController;

  List<Marker> _markers = [];

  @override
  void initState() {
    super.initState();
    _markers.add(Marker(
        markerId: MarkerId("1"),
        draggable: false,
        position: LatLng(37.34,127.1066667)));
  }

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  '분당앤스퀘어',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '경기도 성남시 분당구 탄천상로 151번길 20 (구미동 159번지)',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '분당앤스퀘어 (구.베어캐슬) 4층 컨벤션홀',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  'Tel. 031-728-5300',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: GoogleMap(
                      markers: Set.from(_markers),
                      myLocationButtonEnabled: false,
                      zoomControlsEnabled: false,
                      initialCameraPosition: _initialCameraPosition,
                      onMapCreated: (controller) => _googleMapController = controller,
                      // gestureRecognizers: Set()
                      // ..add(Factory<EagerGestureRecognizer>(() => EagerGestureRecognizer()))
                      // ..add(Factory<PanGestureRecognizer>(() => PanGestureRecognizer()))
                      // ..add(Factory<ScaleGestureRecognizer>(() => ScaleGestureRecognizer()))
                      // ..add(Factory<TapGestureRecognizer>(() => TapGestureRecognizer()))
                      // ..add(Factory<VerticalDragGestureRecognizer>(
                      //         () => VerticalDragGestureRecognizer())),
                    )
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/hole_map.jpg',
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
                SizedBox(
                  height: 30,
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1, right: MediaQuery.of(context).size.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '지하철 이용시',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 40, 40, 40),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '분당선 오리역 하차 - 6번출구 에스컬레이터 이용 50M 거리내에 분당앤스퀘어가 있습니다.',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '버스 이용시',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 40, 40, 40),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '- 성남: 820, 9403, 9404',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 용인: 820, 810',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 강남역: 1005-1, 8101(간선급행)',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 여의도역 6번출구, 사당역 4번출구: 7007-1',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 4호선 산본역 1번출구 : 3500',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 건대입구역 2번출구 : 102',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 1호선 서울역 4번출구 : 5500-1, 8100, 9001 (서울역 환승센터)',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 1호선 종각역 8번출구 :  5500-1, 8100',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 2호선 을지로입구역 6번출구 : 5500-1, 8100',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 영등포 : 9408',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '자가용 이용시',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 40, 40, 40),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '주차장 : 분당앤스퀘어 건물 뒷편 홈플러스, CGV, 애플프라자 주차장입구 이용',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '지하3층, 지하4층 77번 기둥에서 우회전 사셔서 주차 후 웨딩홀 전용 엘리베이터 7,8호기를 이용하시면 편리합니다.',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '네비게이션 이용시 : \"분당앤스퀘어\" 를 입력하세요',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          )
        ],
      );
  }
}