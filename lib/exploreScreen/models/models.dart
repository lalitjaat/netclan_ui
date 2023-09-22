class userItem {
  final String name;
    final String description;
final String city = "Sandiago, Within 1 km";
  final String interests;
  final String imagePath;

  userItem({
    required this.interests,
    required this.name,
    required this.description,
    required this.imagePath,
  });
}

List<userItem> userList = [
  userItem(

    interests: "Friendship | Coffee | Hangout",
    name: 'Michael Murphy',
    description: 'Hi community! I am open to new connections.',
    imagePath: 'assets/user/image1.jpeg',
  ),
  userItem(
    interests: "Friendship | Coffee | Hangout",
    name: 'Keoran Pollard',
    description: 'Hi community! I am open to new connections.',
    imagePath: 'assets/user/image2.jpeg',
  ),
  userItem(
    interests: "Friendship | Coffee | Hangout",
    name: 'Saheen Afridi',
    description: 'Hi community! I am open to new connections.',
    imagePath: 'assets/user/image3.jpeg',
  ),
  userItem(
    interests: "Friendship | Coffee | Hangout",
    name: 'Mohd Siraj',
    description: 'Hi community! I am open to new connections.',
    imagePath: 'assets/user/image4.jpeg',
  ),
  userItem(
    interests: "Friendship | Coffee | Hangout",
    name: 'MS Dangi',
    description: 'Hi community! I am open to new connections.',
    imagePath: 'assets/user/image5.jpeg',
  ),
  userItem(
    interests: "Friendship | Coffee | Hangout",
    name: 'Niti Kohli',
    description: 'Hi community! I am open to new connections.',
    imagePath: 'assets/user/image6.jpeg',
  ),
];



class professionalItem {
  final String name;
  final String imagePath;
  final String city = " Silicon valley, within 3 km";
  final String interests;
  final String description;
  professionalItem({required this.name,required this.description,required this.interests, required this.imagePath});

}


List<professionalItem> professionalList = [
 professionalItem(
    interests: "Lawyer | 10 years Experiance",
    name: 'Adv Disha Kapoor',
    description: 'Hi community! I am open to new connections.',
    imagePath: 'assets/professionals/lawyer.jpeg',
  ),
  professionalItem(
    interests: "Services | Pipes | 24x7",
    name: 'Ravi Kumar',
    description: 'assets/professionals/plumber.jpeg',
    imagePath: 'assets/professionals/plumber.jpeg',
  ),
  professionalItem(
    interests: "Health care | Coffee | Hangout",
    name: 'Dr Elly',
    description: 'Hi community! I am open to new connections.',
    imagePath: 'assets/professionals/doctor.jpeg',
  ),
  professionalItem(
    interests: "Freelancer | Coffee | Hangout",
    name: 'Neha Kohli',
    description: 'Hi community! I am open to new connections.',
    imagePath: 'assets/professionals/student.webp',
  ),
];



class merchantItem {
  final String name;
  final String imagePath;
  final String city = " Silicon valley, within 3 km";

  final String description;
  merchantItem({required this.name,required this.description, required this.imagePath});

}


List<merchantItem> merchantList = [
 merchantItem(

    name: 'OMG Bar',
    description: 'Hi community! We have great deals for you.\nCheck us out!!',
    imagePath: 'assets/merchants/bar.jpeg',
  ),
  merchantItem(

    name: 'Looks Saloon',
    description: 'Hi community! We have great deals for you.\nCheck us out!!',
    imagePath: 'assets/merchants/barber.jpeg',
  ),
  merchantItem(

    name: 'DayLight Cafe',
    description: 'Hi community! We have great deals for you.\nCheck us out!!',
    imagePath: 'assets/merchants/cafe.jpeg',
  ),
  merchantItem(

    name: 'Apollo Health Care',
    description: 'Hi community! We have great deals for you.\nCheck us out!!',
    imagePath: 'assets/merchants/hospital.jpeg',
  ),
];


