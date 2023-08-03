class OnBoard {
  final String image, title, description;

  OnBoard(
      {required this.image, required this.title, required this.description});
}

final List<OnBoard> onBoardData = [
  OnBoard(
      image: "assets/images/onboardord.png",
      title: "Find the item you've \nbeen looking for",
      description:
          "Here you'll see rich varieties of goods, carefully classified for seamless browsing experience."),
  OnBoard(
      image: "assets/images/onboard2.png",
      title: "Discover Exclusive Deals",
      description:
          "Explore exclusive deals and discounts on your favorite products."),
  OnBoard(
      image: "assets/images/onboard3.png",
      title: "Easy and Secure Payments",
      description:
          "Experience easy and secure payment options for a smooth checkout process."),
];
