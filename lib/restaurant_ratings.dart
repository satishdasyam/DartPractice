void main() {
  calAvgRating();
}

var restaurants = [
  {
    'name': 'Pizza Mario',
    'cuisine': 'Italian',
    'ratings': [4.0, 3.5, 4.5],
  },
  {
    'name': 'Chez Anne',
    'cuisine': 'French',
    'ratings': [5.0, 4.5, 4.0],
  },
  {
    'name': 'Navaratna',
    'cuisine': 'Indian',
    'ratings': [4.0, 4.5, 4.0],
  },
];

void calAvgRating() {
  for (var restaurant in restaurants) {
    var ratingList = restaurant['ratings'] as List<double>;
    double ratingSum = 0;
    for (double rating in ratingList) {
      ratingSum = ratingSum + rating;
    }
    double ratingAvg = ratingSum / ratingList.length;
    restaurant['avgRating'] = ratingAvg;
  }
  print(restaurants);
}
