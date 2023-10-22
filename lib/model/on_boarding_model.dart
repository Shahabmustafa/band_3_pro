

class OnBoardingModel{
  String? imageURL;
  String? title;
  String? Description;

  OnBoardingModel({this.title,this.imageURL,this.Description});
}

List<OnBoardingModel> contents = [
  OnBoardingModel(
    title: "Unleash Your Talent",
    Description: "Connect with venues and event organizers effortlessly. Our matchmaking aligns your preferences with perfect gigs. Join for free and hit the next big stage!",
    imageURL: "assets/images/onBoarding/img.png",
  ),
  OnBoardingModel(
    title: "Get Matched,\nGet Booked with Band2Pro",
    Description: "Tired of searching for gigs? Band2Pro links musicians with professionals, finding the best opportunities for you. Start rocking the venues today!",
    imageURL: "assets/images/onBoarding/img_1.png",
  ),
  OnBoardingModel(
    title: "Band2Pro:\nYour Music, Your Stage",
    Description:   "Band2Pro bridges bands and venues with intelligent matchmaking. Set your preferences, and watch opportunities roll in. You’re not just in the crowd; you’re the headline act!",
    imageURL: "assets/images/onBoarding/img_2.png",
  ),
];
