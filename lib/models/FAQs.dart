class FAQs {
  bool isExpanded;
  final String Question;
  final String Answer;

  FAQs({
    this.isExpanded = false,
    required this.Question,
    required this.Answer,
  });
}

var faqs = [
  FAQs(
    Question: 'What is Connecting You?',
    Answer:
        'Connecting You is an interactive app for young people in Co. Monaghan allows users to find information on a wide variety of topics relevant to situations that they may be facing at any particular time.',
  ),
  FAQs(
    Question: 'How old i have to be to use the Connecting You app?',
    Answer: 'The Connecting you app is for young people aged 10yrs and over.',
  ),
  FAQs(
    Question: 'Do i have to pay to usethe app?',
    Answer: 'No, the app is free for all users!',
  ),
  FAQs(
    Question: 'Do you collect information about me?',
    Answer:
        'The app does not collect any personal information about you i.e.name,address,phone etc. The only info we will collect is your age range, contry ypu live in, how you feel today and the topic you  are looking for informationon.',
  ),
  FAQs(
    Question: 'Who has access to data contained within the app?',
    Answer:
        'Only senior Youth Work Irelaand Cavan Monaghan youth workers can  access the information contained within the app. This info. is then collected andd collated so it can guide future youth work initiatives.',
  ),
];
