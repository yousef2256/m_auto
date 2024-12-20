class CarBrandsAndModels {
  final int? id;
  final String brandName;
  final List<BrandModels> brandModels;

  CarBrandsAndModels({
    required this.id,
    required this.brandName,
    required this.brandModels,
  });

  factory CarBrandsAndModels.fromJson(Map<String, dynamic> json) {
    return CarBrandsAndModels(
      id: json['id'],
      brandName: json['brand_name'],
      brandModels: List<BrandModels>.from(
        json['brand_models'].map(
          (e) => BrandModels.fromJson(e),
        ),
      ),
    );
  }
}

class BrandModels {
  final int? id;
  final String modelName;

  BrandModels({
    required this.id,
    required this.modelName,
  });

  factory BrandModels.fromJson(Map<String, dynamic> json) {
    return BrandModels(
      id: json['id'],
      modelName: json['model_name'],
    );
  }
}
