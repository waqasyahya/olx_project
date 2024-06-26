class Item {
  final String title;
  final String description;
  final String imageUrl;

  Item({required this.title, required this.description, required this.imageUrl});
}

List<Item> items = [
  Item(title: 'Title 1', description: 'This is the description for item 1.', imageUrl: 'assets/images/download.png'),
  Item(title: 'Title 2', description: 'This is the description for item 2.', imageUrl: 'assets/images/download.png'),
  Item(title: 'Title 3', description: 'This is the description for item 3.', imageUrl: 'assets/images/download.png'),
  Item(title: 'Title 4', description: 'This is the description for item 4.', imageUrl: 'assets/images/download.png'),
  Item(title: 'Title 5', description: 'This is the description for item 5.', imageUrl: 'assets/images/download.png'),
];

class CarItem {
  final String title;
  final String description;
  final String imageUrl;

  CarItem({required this.title, required this.description, required this.imageUrl});
}

List<CarItem> carItems = [
  CarItem(title: 'waqas', description: 'This is the description for item 1.', imageUrl: 'assets/images/download (1).png'),
  CarItem(title: 'Title 2', description: 'This is the description for item 2.', imageUrl: 'assets/images/download.png'),
  CarItem(title: 'Title 3', description: 'This is the description for item 3.', imageUrl: 'assets/images/download.png'),
  CarItem(title: 'Title 4', description: 'This is the description for item 4.', imageUrl: 'assets/images/download.png'),
  CarItem(title: 'Title 5', description: 'This is the description for item 5.', imageUrl: 'assets/images/download.png'),
];

class JobItem {
  final String title;
  final String description;
  final String imageUrl;

  JobItem({required this.title, required this.description, required this.imageUrl});
}

List<JobItem> jobItems = [
  JobItem(title: 'waqas', description: 'This is the description for item 1.', imageUrl: 'assets/images/download (1).png'),
  JobItem(title: 'Title 2', description: 'This is the description for item 2.', imageUrl: 'assets/images/download.png'),
  JobItem(title: 'Title 3', description: 'This is the description for item 3.', imageUrl: 'assets/images/download.png'),
  JobItem(title: 'Title 4', description: 'This is the description for item 4.', imageUrl: 'assets/images/download.png'),
  JobItem(title: 'Title 5', description: 'This is the description for item 5.', imageUrl: 'assets/images/download.png'),
];

class ChatItem {
  String text;
  String imageUrl;
  bool isImage;

  ChatItem({required this.text, required this.imageUrl, required this.isImage});
}

List<ChatItem> allData = [
  ChatItem(text: 'No Message Yet?', imageUrl: 'assets/images/message.png', isImage: true),


];

List<ChatItem> buyingData = [
  ChatItem(text: 'No Message Yet?', imageUrl: 'assets/images/message.png', isImage: true),

];

List<ChatItem> sellingData = [
  ChatItem(text: 'No Message Yet?', imageUrl: 'assets/images/message.png', isImage: true),

];