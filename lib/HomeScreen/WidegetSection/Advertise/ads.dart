import 'package:flutter/material.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/Advertise/my_card_ads.dart';
import 'package:geniusapp/Model/ads.dart';
import 'package:geniusapp/RemoteServices/remote_services.dart';
import 'package:geniusapp/Services/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AdvertiseScreen extends StatelessWidget {
  AdvertiseScreen({super.key, required this.adsList});
  final _controller = PageController();
  final List<Advertise> adsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: adsList.length,
            itemBuilder: (context, index) {
              return MyCard(
                title: adsList[index].title,
                subtitle: adsList[index].subtitle,
                  imgUrl:
                      '${RemoteServices.baseUrl}${adsList[index].adsPicture.url}'
                  );
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SmoothPageIndicator(
          controller: _controller,
          count: adsList.length,
          effect: const ExpandingDotsEffect(
            dotColor: Colors.black,
            activeDotColor: kMyGreyColor,
            dotHeight: 5,
            dotWidth: 5,
          ),
        ),
        const SizedBox(
          height: 6,
        )
      ],
    );
  }
}
