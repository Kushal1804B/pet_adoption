class Pet {
  String name;
  String breed;
  String imageUrl;
  int age;
  String gender;
  double price;
  String description;
  bool adopted;
  String? adoptedTime;

  Pet({
    required this.description,
    required this.name,
    required this.breed,
    required this.age,
    required this.gender,
    required this.imageUrl,
    required this.price,
    required this.adopted,
    this.adoptedTime,
  });
}

List<Pet> mypets = [
  Pet(
    name: 'Kili',
    breed: 'Sun Conure',
    age: 4,
    gender: 'Male',
    imageUrl: 'assets/bird4.png',
    price: 5000,
    adopted: false,
    description:
        "The Sun Conure is a vibrant and colorful parrot known for its brilliant plumage and playful personality. These medium-sized parrots are native to South America and are cherished for their cheerful disposition and affectionate nature. Sun Conures are highly social birds that thrive on interaction with their human companions. ",
  ),
  Pet(
    name: 'Bunny',
    breed: 'Holland Lop',
    age: 2,
    gender: 'Female',
    imageUrl: 'assets/rabbit1.png',
    price: 1000,
    adopted: false,
    description:
        "The Holland Lop is an adorable and affectionate breed of rabbit known for its distinctive appearance and gentle temperament. With their lop ears and compact size, Holland Lops have an irresistibly cute charm that captivates pet lovers worldwide. These rabbits are renowned for their friendly and docile nature",
  ),
  Pet(
    name: 'Kitty',
    breed: 'Maine Coon',
    age: 4,
    gender: 'Male',
    imageUrl: 'assets/cat1.png',
    price: 10000,
    adopted: false,
    description:
        "Mittens is a majestic Maine Coon with striking tufts of fur and an elegant demeanor. Known for their intelligence and gentle disposition, Maine Coons like Mittens make wonderful companions for those seeking a loving and loyal feline friend. With her affectionate nature and playful spirit.",
  ),
  Pet(
    name: 'Buddy',
    breed: 'Labrador Retriever',
    age: 4,
    gender: 'Female',
    imageUrl: 'assets/dog4.png',
    price: 5000,
    adopted: false,
    description:
        "Buddy is a loyal and affectionate companion, known for his friendly nature and playful antics. He enjoys spending time outdoors, especially going for long walks and playing fetch. With his intelligence and eagerness to please, Buddy is a quick learner and responds well to training.",
  ),
  Pet(
    name: 'Coco',
    breed: 'Siamese',
    age: 2,
    gender: 'Female',
    imageUrl: 'assets/cat2.png',
    price: 5000,
    adopted: false,
    description:
        "Coco is a stunning Siamese Cat with striking blue eyes and a vocal personality. Siamese cats like Coco are known for their intelligence and social nature, often forming strong bonds with their human companions. With her elegant appearance and affectionate demeanor, Coco is sure to captivate everyone she meets.",
  ),
  Pet(
    name: 'Tommy',
    breed: 'Golden Retriever',
    age: 3,
    gender: 'Male',
    imageUrl: 'assets/dog1.png',
    price: 15000,
    adopted: false,
    description:
        "The Golden Retriever is a beloved and iconic breed known for its friendly demeanor, intelligence, and loyalty. These dogs are renowned for their beautiful golden coats, warm brown eyes, and charming smiles that instantly brighten the day.",
  ),
  Pet(
    name: 'Kiwi',
    breed: 'Cockatiel',
    age: 4,
    gender: 'Male',
    imageUrl: 'assets/bird2.png',
    price: 5000,
    adopted: false,
    description:
        "The Cockatiel, often referred to as the miniature cockatoo, is a charming and charismatic bird native to Australia. With their distinctive crests, expressive faces, and cheerful personalities, Cockatiels are beloved companions in the world of aviculture.",
  ),
  Pet(
    name: 'Humper',
    breed: 'Mini Rex',
    age: 4,
    gender: 'Male',
    imageUrl: 'assets/rabbit2.png',
    price: 5000,
    adopted: false,
    description:
        "The Mini Rex is a delightful breed of rabbit known for its plush fur and compact size. These adorable rabbits have a distinctive velvety coat that feels like soft velvet to the touch, making them popular pets among rabbit enthusiasts. ",
  ),
  Pet(
    name: 'Meow',
    breed: 'Persian',
    age: 1,
    gender: 'Male',
    imageUrl: 'assets/cat3.png',
    price: 1000,
    adopted: false,
    description:
        "Whiskers is a luxurious Persian Cat with a majestic appearance and calm demeanor. With his long, flowing fur and expressive eyes, he's sure to capture the hearts of cat lovers everywhere. Persians like Whiskers are known for their affectionate nature and gentle disposition.",
  ),
  Pet(
    name: 'Brownie',
    breed: 'Poodle',
    age: 4,
    gender: 'Male',
    imageUrl: 'assets/dog2.png',
    price: 5000,
    adopted: false,
    description:
        "The Poodle is a highly intelligent and elegant breed known for its distinctive curly coat and graceful demeanor. These dogs come in three sizes: Standard, Miniature, and Toy, offering options for various living situations and preferences. |",
  ),
  Pet(
    name: 'Rio',
    breed: 'Macaw',
    age: 2,
    gender: 'Female',
    imageUrl: 'assets/bird3.png',
    price: 1000,
    adopted: false,
    description:
        "The Macaw is one of the largest and most colorful species of parrots, known for its vibrant plumage and impressive size. These majestic birds are native to the rainforests of Central and South America and are cherished for their beauty, intelligence, and charismatic personalities. ",
  ),
  Pet(
    name: 'Pappu',
    breed: 'German Shepherd',
    age: 10,
    gender: 'Female',
    imageUrl: 'assets/dog3.png',
    price: 1000,
    adopted: false,
    description:
        "The German Shepherd is a distinguished and versatile breed known for its intelligence, loyalty, and strength. These dogs are renowned for their noble appearance, with a muscular build, erect ears, and alert expression. ",
  ),
  Pet(
    name: 'Tuary',
    breed: 'Bengal',
    age: 2,
    gender: 'Female',
    imageUrl: 'assets/cat4.png',
    price: 5000,
    adopted: false,
    description:
        "The Bengal cat is a striking and exotic breed known for its distinctive coat pattern and lively personality. These cats have a wild appearance, with their leopard-like spots and sleek, muscular build.|",
  ),
  Pet(
    name: 'Charlie',
    breed: 'African Grey',
    age: 2,
    gender: 'Female',
    imageUrl: 'assets/bird1.png',
    price: 1000,
    adopted: false,
    description:
        "Charlie is a highly intelligent and social African Grey Parrot. Known for their exceptional talking ability and charming personalities, African Greys like Charlie make wonderful companions for those willing to provide the attention and mental stimulation they require.",
  ),
];

// List<Pet> bunnies = [
//   Pet(
//     name: 'Bunny',
//     breed: 'Holland Lop',
//     age: 2,
//     gender: 'Female',
//     imageUrl: 'assets/rabbit1.png',
//     price: 1000,
//     adopted: true,
//     description: "",
//   ),
//   Pet(
//     name: 'Humper',
//     breed: 'Mini Rex',
//     age: 4,
//     gender: 'Male',
//     imageUrl: 'assets/rabbit2.png',
//     price: 5000,
//     adopted: false,
//     description: "",
//   ),
// ];

// List<Pet> cats = [
//   Pet(
//     name: 'Kitty',
//     breed: 'Maine Coon',
//     age: 4,
//     gender: 'Male',
//     imageUrl: 'assets/cat1.png',
//     price: 10000,
//     adopted: false,
//     description: "Mittens is a majestic Maine Coon with striking tufts of fur and an elegant demeanor. Known for their intelligence and gentle disposition, Maine Coons like Mittens make wonderful companions for those seeking a loving and loyal feline friend. With her affectionate nature and playful spirit, Mittens is sure to bring joy and warmth to any home.",
//   ),
//   Pet(
//     name: 'Luna',
//     breed: 'Siamese',
//     age: 2,
//     gender: 'Female',
//     imageUrl: 'assets/cat2.png',
//     price: 5000,
//     adopted: false,
//     description: "Coco is a stunning Siamese Cat with striking blue eyes and a vocal personality. Siamese cats like Coco are known for their intelligence and social nature, often forming strong bonds with their human companions. With her elegant appearance and affectionate demeanor, Coco is sure to captivate everyone she meets.",
//   ),
//   Pet(
//     name: 'Meow',
//     breed: 'Persian',
//     age: 1,
//     gender: 'Male',
//     imageUrl: 'assets/cat3.png',
//     price: 1000,
//     adopted: false,
//     description: "",
//   ),
//   Pet(
//     name: 'Coco',
//     breed: 'Bengal',
//     age: 2,
//     gender: 'Female',
//     imageUrl: 'assets/cat4.png',
//     price: 5000,
//     adopted: false,
//     description: "",
//   ),
// ];

// List<Pet> dogs = [
//   Pet(
//     name: 'Buddy',
//     breed: 'Golden Retriever',
//     age: 3,
//     gender: 'Male',
//     imageUrl: 'assets/dog1.png',
//     price: 15000,
//     adopted: false,
//     description: "",
//   ),
//   Pet(
//     name: 'Brownie',
//     breed: 'Poodle',
//     age: 4,
//     gender: 'Male',
//     imageUrl: 'assets/dog2.png',
//     price: 5000,
//     adopted: false,
//     description: "",
//   ),
//   Pet(
//     name: 'Pappu',
//     breed: 'German Shepherd',
//     age: 10,
//     gender: 'Female',
//     imageUrl: 'assets/dog3.png',
//     price: 1000,
//     adopted: false,
//     description: "",
//   ),
//   Pet(
//     name: 'Tommy',
//     breed: 'Labrador Retriever',
//     age: 4,
//     gender: 'Female',
//     imageUrl: 'assets/dog4.png',
//     price: 5000,
//     adopted: false,
//     description: "Buddy is a loyal and affectionate companion, known for his friendly nature and playful antics. He enjoys spending time outdoors, especially going for long walks and playing fetch. With his intelligence and eagerness to please, Buddy is a quick learner and responds well to training. He gets along well with children and other pets, making him an ideal addition to any family. Despite his large size, Buddy has a gentle demeanor and is always eager to shower his loved ones with love and affection.",
//   ),
// ];

// List<Pet> birds = [
//   Pet(
//     name: 'Charlie',
//     breed: 'African Grey',
//     age: 2,
//     gender: 'Female',
//     imageUrl: 'assets/bird1.png',
//     price: 1000,
//     adopted: false,
//     description: "Charlie is a highly intelligent and social African Grey Parrot. Known for their exceptional talking ability and charming personalities, African Greys like Charlie make wonderful companions for those willing to provide the attention and mental stimulation they require.",
//   ),
//   Pet(
//     name: 'Kiwi',
//     breed: 'Cockatiel',
//     age: 4,
//     gender: 'Male',
//     imageUrl: 'assets/bird2.png',
//     price: 5000,
//     adopted: false,
//     description: "",
//   ),
//   Pet(
//     name: 'Rio',
//     breed: 'Macaw',
//     age: 2,
//     gender: 'Female',
//     imageUrl: 'assets/bird3.png',
//     price: 1000,
//     adopted: false,
//     description: "",
//   ),
//   Pet(
//     name: 'Sunny',
//     breed: 'Sun Conure',
//     age: 4,
//     gender: 'Male',
//     imageUrl: 'assets/bird4.png',
//     price: 5000,
//     adopted: false,
//     description: "",
//   ),
// ];
