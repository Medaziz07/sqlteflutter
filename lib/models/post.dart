class Post {
  int? id;
  String? title;
  String? description;
  String? image;
  String? image64bit;
  String? avatar;
  String? name;
  bool? isLike;
  bool? isFile;
  Post(
      {this.id,
      this.title,
      this.description,
      this.image,
      this.image64bit,
      this.avatar,
      this.isLike = false,
      this.name,
      this.isFile = false});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'isLike': isLike,
      'avatar': avatar,
      'name': name,
      'image64bit': image64bit,
    };
  }
   Map<String, dynamic> toMap2() {
    return {
      'title': title,
      'description': description,
      'image64bit': image64bit,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) => Post(
      id: map["id"],
      title: map["title"],
      description: map["description"],
      image64bit: map["image64bit"]);

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      description: json['description'],
      isLike: json['isLiked'],
      avatar: json['avatarImage'],
      name: json['name'],
      image64bit: json['image64bit'],
    );
  }
}
