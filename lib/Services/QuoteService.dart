import 'dart:math';

class QuoteService{
  static List<String> quotes = ["All the methods declared with static keyword are termed as class method. They can’t access non-static variables and can’t invoke non-static methods of the class. It must be noted that unlike instance method class method can directly be called by using class name.","Let me solve this question with a practical example in the form of a simple dice rolling app that calls 1 of 6 dice face images randomly to the screen when tapped.","যখন উপাসনা শেষ হবে, তোমরা জমিনে ছড়িয়ে পড়বে এবং আল্লাহর দান অনুসন্ধানে ব্যাপৃত থাকবে যখন উপাসনা শেষ হবে, তোমরা জমিনে ছড়িয়ে পড়বে এবং আল্লাহর দান অনুসন্ধানে ব্যাপৃত থাকবে যখন উপাসনা শেষ হবে, তোমরা জমিনে ছড়িয়ে পড়বে এবং আল্লাহর দান অনুসন্ধানে ব্যাপৃত থাকবে যখন উপাসনা শেষ হবে, তোমরা জমিনে ছড়িয়ে পড়বে এবং আল্লাহর দান অনুসন্ধানে ব্যাপৃত থাকবে","hi যখন উপাসনা শেষ হবে, তোমরা জমিনে ছড়িয়ে পড়বে এবং আল্লাহর দান অনুসন্ধানে ব্যাপৃত থাকবে যখন উপাসনা শেষ হবে, তোমরা জমিনে ছড়িয়ে পড়বে এবং আল্লাহর দান অনুসন্ধানে ব্যাপৃত থাকবে যখন উপাসনা শেষ হবে, তোমরা জমিনে ছড়িয়ে পড়বে এবং আল্লাহর দান অনুসন্ধানে ব্যাপৃত থাকবে যখন উপাসনা শেষ হবে, তোমরা জমিনে ছড়িয়ে পড়বে এবং আল্লাহর দান অনুসন্ধানে ব্যাপৃত থাকবে"];

  String getQuote(){
    Random random =  Random();
    return quotes[random.nextInt(quotes.length)];
  }
}