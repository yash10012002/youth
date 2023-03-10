class Urgent {
  final String id;
  final String title;
  final String description;
  final String image;
  final Uri email;
  final Uri phone;
  final Uri website;

  Urgent({
    required this.id,
    required this.title,
    required this.description,
    required this.email,
    required this.image,
    required this.phone,
    required this.website,
  });
}

var urgent = [
  Urgent(
    id: 'A1',
    title: "Aware",
    description:
        "Aware provides a range of services including a telephone and email support services.",
    email: Uri.parse("supportmail@aware.ie"),
    image:
        "https://cdn.pixabay.com/photo/2017/11/10/21/00/revelation-2937691_960_720.jpg",
    phone: Uri.parse("0123456789"),
    website: Uri.parse("http://aware.ie"),
  ),
  Urgent(
    id: 'A2',
    title: "Samaritans",
    description:
        "Samaritans are available day or night, for anyone who's struggling to cope, who needs someone to isten without judgement or pressure.",
    email: Uri.parse("jo@samaritans.ie"),
    image:
        "https://upload.wikimedia.org/wikipedia/en/d/de/Samaritan2022Poster.jpg",
    phone: Uri.parse("0456321987"),
    website: Uri.parse("http://samaritans.org/ireland"),
  ),
  Urgent(
    id: 'A3',
    title: "SOSAD Ireland",
    description:
        "SOSAD offer support and services for people who are struggling with suicidal ideation, self harming ,depression.",
    email: Uri.parse("carrickmacross@sosadireland.ie"),
    image:
        "https://upload.wikimedia.org/wikipedia/en/d/de/Samaritan2022Poster.jpg",
    phone: Uri.parse("0123456789"),
    website: Uri.parse("http://sosadireland.ie"),
  ),
  Urgent(
    id: 'A4',
    title: "Pieta House",
    description:
        "Samaritans are available day or night, for anyone who's struggling to cope, who needs someone to isten without judgement or pressure.",
    email: Uri.parse("mary@pieta.ie"),
    image:
        "https://upload.wikimedia.org/wikipedia/en/d/de/Samaritan2022Poster.jpg",
    phone: Uri.parse("0123456789"),
    website: Uri.parse("http://pieta.ie"),
  ),
  Urgent(
    id: 'A5',
    title: "Childline",
    description:
        "Samaritans are available day or night, for anyone who's struggling to cope, who needs someone to isten without judgement or pressure.",
    email: Uri.parse("info@childline.ie"),
    image:
        "https://upload.wikimedia.org/wikipedia/en/d/de/Samaritan2022Poster.jpg",
    phone: Uri.parse("0123456789"),
    website: Uri.parse("http://childline.ie"),
  ),
];
