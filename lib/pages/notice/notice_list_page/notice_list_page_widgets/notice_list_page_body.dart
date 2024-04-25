import 'package:department/core/constant/color_and_size.dart';
import 'package:flutter/material.dart';

class NoticeListPageBody extends StatelessWidget {
  const NoticeListPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> noticeList = [
      {
        "title": "[모집중] 랜섬웨어 대응 솔루션 무상지원사업 신청 안내",
        "content":
            "게시판 세부 내용의 일부가 보여지는 곳입니다. 대략적으로 1~2줄만 보이고 나머지는 말줄임을 사용해주세요게시판 세부 내용의 일부가 보여지는 곳입니다. 대략적으로 1~2줄만 보이고 나머지는 말줄임을 사용해주세요게시판 세부 내용의 일부가 보여지는 곳입니다. 대략적으로 1~2줄만 보이고 나머지는 말줄임을 사용해주세요",
        "date": "2024.03.07",
        "image": "",
      },
      {
        "title":
            "[모집중] 랜섬웨어 대응 솔루션 무상지원사업[모집중] 랜섬웨어 대응 솔루션 무상지원사업[모집중] 랜섬웨어 대응 솔루션 무상지원사업[모집중] 랜섬웨어 대응 솔루션 무상지원사업[모집중] 랜섬웨어 대응 솔루션 무상지원사업",
        "content":
            "게시판 세부 내용의 일부가 보여지는 곳입니다. 대략적으로 1~2줄만 보이고 나머지는 말줄임을 사용해주세요게시판 세부 내용의 일부가 보여지는 곳입니다. 대략적으로 1~2줄만 보이고 나머지는 말줄임을 사용해주세요게시판 세부 내용의 일부가 보여지는 곳입니다. 대략적으로 1~2줄만 보이고 나머지는 말줄임을 사용해주세요",
        "date": "2024.03.07",
        "image": "https://picsum.photos/200/300",
      },
      {
        "title": "[모집중] 랜섬웨어 대응 솔루션 무상지원사업 신청 안내",
        "content": "",
        "date": "2024.03.07",
        "image": "",
      },
      {
        "title": "[모집중] 랜섬웨어 대응 솔루션 무상지원사업 신청 안내",
        "content": "",
        "date": "2024.03.07",
        "image": "https://picsum.photos/200/300",
      },
      {
        "title": "[모집중] 랜섬웨어 대응 솔루션 무상지원사업 신청 안내",
        "content": "",
        "date": "2024.03.07",
        "image": "https://picsum.photos/200/300",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: noticeList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => NoticeDetailPage(),
              //   ),
              // );
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.13,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            noticeList[index]["date"],
                            style: TextStyle(
                              color: kC8Color,
                              fontSize: size13,
                            ),
                          ),
                          Text(
                            noticeList[index]["title"],
                            style: TextStyle(
                              color: k3DColor,
                              fontSize: size15,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            noticeList[index]["content"],
                            style: TextStyle(
                              color: k3DColor,
                              fontSize: size13,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (noticeList[index]["image"].isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        child: Image.network(
                          noticeList[index]["image"],
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.width * 0.2,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
