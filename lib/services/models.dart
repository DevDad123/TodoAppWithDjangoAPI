class Tree {
  final int id;
  final String title;
  final String description;
  final bool completed;

  Tree({required this.id, required this.title,required this.description, required this.completed});

  factory Tree.fromJson(Map<String, dynamic> json) {
    return Tree(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      completed: json['completed'],
    );
  }
}
