class  Onboard{
  final String message, image, title;
  Onboard({
    required this.message,
    required this.image,
    required this.title,

});
}

List<Onboard>onboardInfo=[
  Onboard(message: "You have recieved  \$200", image: "lib/images/profile/post1.jpg", title:"Welcome"),
  Onboard(message: "Are you ready", image: "lib/images/profile/post2.jpg", title:"Yeah"),
  Onboard(message: "Get started now", image: "lib/images/profile/post3.jpg", title:"Ready"),
];