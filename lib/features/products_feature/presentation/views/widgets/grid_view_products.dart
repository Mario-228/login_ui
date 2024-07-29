import 'package:flutter/material.dart';
import 'package:login_ui/features/products_feature/presentation/views/widgets/product_item.dart';

class GridViewProducts extends StatelessWidget {
  const GridViewProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const List<String> imageUrls = [
      "https://img.freepik.com/free-vector/electric-lamp-bulb_1284-50252.jpg?t=st=1722211676~exp=1722215276~hmac=80e2ed49a63417da3c5973e7e2381a0b7c9efe5d1f7b94ec791d3edb14271d48&w=996",
      "https://img.freepik.com/free-photo/blue-blue-steam-iron_140725-7495.jpg?t=st=1722211719~exp=1722215319~hmac=dd09ae50c3bca5b21169407d29f243c206b41b9f905e7d215b9bf2bf96f2459a&w=740",
      "https://img.freepik.com/free-vector/white-electric-extension-cord-euro-standard-with-turn-off-switch-inserted-plugs-realistic-vector-illustration_1284-82129.jpg?t=st=1722211788~exp=1722215388~hmac=14b3503174297aaf7e4f7b75b58df63c2779b88f4c4f24b15b23c25b2e93f7a7&w=1380",
      "https://img.freepik.com/free-photo/brown-retro-electronic-blender-device_23-2151002832.jpg?t=st=1722211828~exp=1722215428~hmac=be00dc26d0d8a071de5f95c3b20ecfdaa1f78f1605e8a4ebe68c40c7c229f979&w=996",
      "https://img.freepik.com/premium-photo/step-into-realm-smart-security-with-dynam-generative-ai_1198295-27699.jpg?w=996",
      "https://img.freepik.com/premium-photo/automatic-milk-foam-maker_222822-65.jpg?w=996",
      "https://img.freepik.com/free-photo/close-up-circuit-reparing-tool_23-2148419201.jpg?t=st=1722211980~exp=1722215580~hmac=33823dfeb9125c5bc02acd8f4279828fc05040264f85fd1f04a969653746e206&w=996",
      "https://img.freepik.com/premium-photo/led-emergency-lamp_829427-8.jpg?w=360",
      "https://img.freepik.com/free-photo/rendering-smart-home-device_23-2151039329.jpg?t=st=1722212019~exp=1722215619~hmac=9c7799e348dfdcc5bda3fbae182007293bcebcbe5a4bf31b0290329185343974&w=996",
      "https://img.freepik.com/free-vector/dynamite-bomb-realistic-composition-with-isolated-view-self-made-bomb-with-digital-clock-countdown-timer-vector-illustration_1284-76453.jpg?t=st=1722212046~exp=1722215646~hmac=f186e900e9ead4c0936fc878a112cdcd0c3887616840bb9137bb28edc5cdd731&w=1060",
      "https://img.freepik.com/premium-photo/automatic-circuit-breaker-white-background-control-protect-electrical-power-system_39768-11470.jpg?w=996",
      "https://img.freepik.com/premium-photo/earphones_931309-3662.jpg?w=996",
    ];
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => ProductItem(
        imageUrl: imageUrls[index],
      ),
      itemCount: imageUrls.length,
    );
  }
}
