/// Model class representing a SpaceX rocket
class RocketModel {
  /// Constructor for RocketModel
  RocketModel({
    required this.rocketId,
    required this.image,
  });

  /// Factory constructor to create a RocketModel from JSON
  factory RocketModel.fromJson(Map<String, dynamic> json) {
    const baseImgurLink = 'https://imgur.com/';

    // Get the first image from flickr_images
    // ignore: avoid_dynamic_calls
    final imageUrl = json['flickr_images'][0] as String;

    // Fix Imgur URL to point to the direct image link
    final fixedImageUrl = imageUrl.contains(baseImgurLink)
        ? '${imageUrl.replaceFirst(baseImgurLink, 'https://i.imgur.com/')}.jpeg'
        : imageUrl;

    return RocketModel(
      image: fixedImageUrl,
      rocketId: json['rocket_id'] as String,
    );
  }

  /// ID of the rocket
  final String rocketId;

  /// Image URL of the rocket
  final String image;
}
