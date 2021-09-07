import 'package:flutter/material.dart';
import 'package:mina_wonhee_wedding/view/GoogleMapWidget.dart';

class MapWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Container(
            padding: EdgeInsets.only(left:10, right: 10),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    '분당앤스퀘어',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '경기도 성남시 분당구',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                  Text(
                    '탄천상로 151번길 20 (구미동 159번지)',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                  Text(
                    '분당앤스퀘어 (구.베어캐슬) 4층 컨벤션홀',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Tel. 031-728-5300',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GoogleMapWidget(),
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
          ),
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1, right: MediaQuery.of(context).size.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '지하철 이용시',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 40, 40, 40),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '분당선 오리역 하차 - 6번출구 에스컬레이터 이용 50M 거리내에 분당앤스퀘어가 있습니다.',
                  style: TextStyle(
                    fontSize: 20,
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
                    fontSize: 25,
                    color: Color.fromARGB(255, 40, 40, 40),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '- 성남: 820, 9403, 9404',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 용인: 820, 810',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 강남역: 1005-1, 8101(간선급행)',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 여의도역 6번출구, 사당역 4번출구: 7007-1',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 4호선 산본역 1번출구 : 3500',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 건대입구역 2번출구 : 102',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 1호선 서울역 4번출구 : 5500-1, 8100, 9001 (서울역 환승센터)',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 1호선 종각역 8번출구 :  5500-1, 8100',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 2호선 을지로입구역 6번출구 : 5500-1, 8100',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '- 영등포 : 9408',
                  style: TextStyle(
                    fontSize: 20,
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
                    fontSize: 25,
                    color: Color.fromARGB(255, 40, 40, 40),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '주차장 : 분당앤스퀘어 건물 뒷편 홈플러스, CGV, 애플프라자 주차장입구 이용',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '지하3층, 지하4층 77번 기둥에서 우회전 사셔서 주차 후 웨딩홀 전용 엘리베이터 7,8호기를 이용하시면 편리합니다.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                Text(
                  '네비게이션 이용시 : \"분당앤스퀘어\" 를 입력하세요',
                  style: TextStyle(
                    fontSize: 20,
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