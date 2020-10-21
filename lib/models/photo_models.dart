class PhotoModel {
  int currentPage;
  List<Data> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  String nextPageUrl;
  String path;
  int perPage;
  Null prevPageUrl;
  int to;
  int total;

  PhotoModel(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  PhotoModel.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class Data {
  int productId;
  int vendorId;
  int parentCategoryId;
  String name;
  String productType;
  String productSlug;
  String shortDesc;
  String description;
  String badge;
  String status;
  String exported;
  String vendorStatus;
  String createdDate;
  int createdBy;
  String publishedDate;
  String modifiedDate;
  Null wpData;
  int brandId;
  FeaturedImage featuredImage;
  int preOrder;
  String unit;
  String price;
  String productTaxonomy;
  String avgRating;
  Vendor vendor;
  List<Categories> categories;
  List<ProductGallery> productGallery;
  List<SkuList> skuList;

  Data(
      {this.productId,
      this.vendorId,
      this.parentCategoryId,
      this.name,
      this.productType,
      this.productSlug,
      this.shortDesc,
      this.description,
      this.badge,
      this.status,
      this.exported,
      this.vendorStatus,
      this.createdDate,
      this.createdBy,
      this.publishedDate,
      this.modifiedDate,
      this.wpData,
      this.brandId,
      this.featuredImage,
      this.preOrder,
      this.unit,
      this.price,
      this.productTaxonomy,
      this.avgRating,
      this.vendor,
      this.categories,
      this.productGallery,
      this.skuList});

  Data.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    vendorId = json['vendor_id'];
    parentCategoryId = json['parent_category_id'];
    name = json['name'];
    productType = json['product_type'];
    productSlug = json['product_slug'];
    shortDesc = json['short_desc'];
    description = json['description'];
    badge = json['badge'];
    status = json['status'];
    exported = json['exported'];
    vendorStatus = json['vendor_status'];
    createdDate = json['created_date'];
    createdBy = json['created_by'];
    publishedDate = json['published_date'];
    modifiedDate = json['modified_date'];
    wpData = json['wp_data'];
    brandId = json['brand_id'];
    featuredImage = json['featured_image'] != null
        ? new FeaturedImage.fromJson(json['featured_image'])
        : null;
    preOrder = json['pre_order'];
    unit = json['unit'];
    price = json['price'];
    productTaxonomy = json['product_taxonomy'];
    avgRating = json['avg_rating'];
    vendor =
        json['vendor'] != null ? new Vendor.fromJson(json['vendor']) : null;
    if (json['categories'] != null) {
      categories = new List<Categories>();
      json['categories'].forEach((v) {
        categories.add(new Categories.fromJson(v));
      });
    }
    if (json['product_gallery'] != null) {
      productGallery = new List<ProductGallery>();
      json['product_gallery'].forEach((v) {
        productGallery.add(new ProductGallery.fromJson(v));
      });
    }
    if (json['sku_list'] != null) {
      skuList = new List<SkuList>();
      json['sku_list'].forEach((v) {
        skuList.add(new SkuList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['vendor_id'] = this.vendorId;
    data['parent_category_id'] = this.parentCategoryId;
    data['name'] = this.name;
    data['product_type'] = this.productType;
    data['product_slug'] = this.productSlug;
    data['short_desc'] = this.shortDesc;
    data['description'] = this.description;
    data['badge'] = this.badge;
    data['status'] = this.status;
    data['exported'] = this.exported;
    data['vendor_status'] = this.vendorStatus;
    data['created_date'] = this.createdDate;
    data['created_by'] = this.createdBy;
    data['published_date'] = this.publishedDate;
    data['modified_date'] = this.modifiedDate;
    data['wp_data'] = this.wpData;
    data['brand_id'] = this.brandId;
    if (this.featuredImage != null) {
      data['featured_image'] = this.featuredImage.toJson();
    }
    data['pre_order'] = this.preOrder;
    data['unit'] = this.unit;
    data['price'] = this.price;
    data['product_taxonomy'] = this.productTaxonomy;
    data['avg_rating'] = this.avgRating;
    if (this.vendor != null) {
      data['vendor'] = this.vendor.toJson();
    }
    if (this.categories != null) {
      data['categories'] = this.categories.map((v) => v.toJson()).toList();
    }
    if (this.productGallery != null) {
      data['product_gallery'] =
          this.productGallery.map((v) => v.toJson()).toList();
    }
    if (this.skuList != null) {
      data['sku_list'] = this.skuList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FeaturedImage {
  int fileId;
  String fileName;
  String description;
  String mime;
  String location;
  String url;
  Null createdDate;
  int createdBy;

  FeaturedImage(
      {this.fileId,
      this.fileName,
      this.description,
      this.mime,
      this.location,
      this.url,
      this.createdDate,
      this.createdBy});

  FeaturedImage.fromJson(Map<String, dynamic> json) {
    fileId = json['file_id'];
    fileName = json['file_name'];
    description = json['description'];
    mime = json['mime'];
    location = json['location'];
    url = json['url'];
    createdDate = json['created_date'];
    createdBy = json['created_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['file_id'] = this.fileId;
    data['file_name'] = this.fileName;
    data['description'] = this.description;
    data['mime'] = this.mime;
    data['location'] = this.location;
    data['url'] = this.url;
    data['created_date'] = this.createdDate;
    data['created_by'] = this.createdBy;
    return data;
  }
}

class Vendor {
  int id;
  String vendorName;

  Vendor({this.id, this.vendorName});

  Vendor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vendorName = json['vendor_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['vendor_name'] = this.vendorName;
    return data;
  }
}

class Categories {
  int categoryId;
  String categoryLabel;
  String categorySlug;
  String uriSlug;
  int categoryLevel;
  int parentCategory;
  String createdDate;
  int createdBy;
  String hasProduct;
  String hasChild;
  Null categoryDescription;
  String image;
  Null catFeaturedImage;
  Pivot pivot;

  Categories(
      {this.categoryId,
      this.categoryLabel,
      this.categorySlug,
      this.uriSlug,
      this.categoryLevel,
      this.parentCategory,
      this.createdDate,
      this.createdBy,
      this.hasProduct,
      this.hasChild,
      this.categoryDescription,
      this.image,
      this.catFeaturedImage,
      this.pivot});

  Categories.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    categoryLabel = json['category_label'];
    categorySlug = json['category_slug'];
    uriSlug = json['uri_slug'];
    categoryLevel = json['category_level'];
    parentCategory = json['parent_category'];
    createdDate = json['created_date'];
    createdBy = json['created_by'];
    hasProduct = json['has_product'];
    hasChild = json['has_child'];
    categoryDescription = json['category_description'];
    image = json['image'];
    catFeaturedImage = json['cat_featured_image'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['category_label'] = this.categoryLabel;
    data['category_slug'] = this.categorySlug;
    data['uri_slug'] = this.uriSlug;
    data['category_level'] = this.categoryLevel;
    data['parent_category'] = this.parentCategory;
    data['created_date'] = this.createdDate;
    data['created_by'] = this.createdBy;
    data['has_product'] = this.hasProduct;
    data['has_child'] = this.hasChild;
    data['category_description'] = this.categoryDescription;
    data['image'] = this.image;
    data['cat_featured_image'] = this.catFeaturedImage;
    if (this.pivot != null) {
      data['pivot'] = this.pivot.toJson();
    }
    return data;
  }
}

class Pivot {
  int productId;
  int categoryId;

  Pivot({this.productId, this.categoryId});

  Pivot.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    categoryId = json['category_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['category_id'] = this.categoryId;
    return data;
  }
}

class ProductGallery {
  int productId;
  int fileId;
  Null skuId;
  FeaturedImage gallery;

  ProductGallery({this.productId, this.fileId, this.skuId, this.gallery});

  ProductGallery.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    fileId = json['file_id'];
    skuId = json['sku_id'];
    gallery = json['gallery'] != null
        ? new FeaturedImage.fromJson(json['gallery'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['file_id'] = this.fileId;
    data['sku_id'] = this.skuId;
    if (this.gallery != null) {
      data['gallery'] = this.gallery.toJson();
    }
    return data;
  }
}

class SkuList {
  int skuId;
  int productId;
  Null parentProduct;
  String sku;
  String unmanaged;
  int quantity;
  String sellPrice;
  String regularPrice;
  String costPrice;
  int availableStock;
  int ditfStock;
  int booked;
  int inventoryCount;
  String lastCountDate;
  String modifiedDate;
  List<SkuValue> skuValue;

  SkuList(
      {this.skuId,
      this.productId,
      this.parentProduct,
      this.sku,
      this.unmanaged,
      this.quantity,
      this.sellPrice,
      this.regularPrice,
      this.costPrice,
      this.availableStock,
      this.ditfStock,
      this.booked,
      this.inventoryCount,
      this.lastCountDate,
      this.modifiedDate,
      this.skuValue});

  SkuList.fromJson(Map<String, dynamic> json) {
    skuId = json['sku_id'];
    productId = json['product_id'];
    parentProduct = json['parent_product'];
    sku = json['sku'];
    unmanaged = json['unmanaged'];
    quantity = json['quantity'];
    sellPrice = json['sell_price'];
    regularPrice = json['regular_price'];
    costPrice = json['cost_price'];
    availableStock = json['available_stock'];
    ditfStock = json['ditf_stock'];
    booked = json['booked'];
    inventoryCount = json['inventory_count'];
    lastCountDate = json['last_count_date'];
    modifiedDate = json['modified_date'];
    if (json['sku_value'] != null) {
      skuValue = new List<SkuValue>();
      json['sku_value'].forEach((v) {
        skuValue.add(new SkuValue.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sku_id'] = this.skuId;
    data['product_id'] = this.productId;
    data['parent_product'] = this.parentProduct;
    data['sku'] = this.sku;
    data['unmanaged'] = this.unmanaged;
    data['quantity'] = this.quantity;
    data['sell_price'] = this.sellPrice;
    data['regular_price'] = this.regularPrice;
    data['cost_price'] = this.costPrice;
    data['available_stock'] = this.availableStock;
    data['ditf_stock'] = this.ditfStock;
    data['booked'] = this.booked;
    data['inventory_count'] = this.inventoryCount;
    data['last_count_date'] = this.lastCountDate;
    data['modified_date'] = this.modifiedDate;
    if (this.skuValue != null) {
      data['sku_value'] = this.skuValue.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SkuValue {
  int skuValueId;
  int productId;
  int skuId;
  int variantOptionId;
  int variationValueId;
  Null shipmentId;
  Variant variant;
  VariantOptionValue variantOptionValue;

  SkuValue(
      {this.skuValueId,
      this.productId,
      this.skuId,
      this.variantOptionId,
      this.variationValueId,
      this.shipmentId,
      this.variant,
      this.variantOptionValue});

  SkuValue.fromJson(Map<String, dynamic> json) {
    skuValueId = json['sku_value_id'];
    productId = json['product_id'];
    skuId = json['sku_id'];
    variantOptionId = json['variant_option_id'];
    variationValueId = json['variation_value_id'];
    shipmentId = json['shipment_id'];
    variant =
        json['variant'] != null ? new Variant.fromJson(json['variant']) : null;
    variantOptionValue = json['variant_option_value'] != null
        ? new VariantOptionValue.fromJson(json['variant_option_value'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sku_value_id'] = this.skuValueId;
    data['product_id'] = this.productId;
    data['sku_id'] = this.skuId;
    data['variant_option_id'] = this.variantOptionId;
    data['variation_value_id'] = this.variationValueId;
    data['shipment_id'] = this.shipmentId;
    if (this.variant != null) {
      data['variant'] = this.variant.toJson();
    }
    if (this.variantOptionValue != null) {
      data['variant_option_value'] = this.variantOptionValue.toJson();
    }
    return data;
  }
}

class Variant {
  int variantOptionId;
  String variantName;

  Variant({this.variantOptionId, this.variantName});

  Variant.fromJson(Map<String, dynamic> json) {
    variantOptionId = json['variant_option_id'];
    variantName = json['variant_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['variant_option_id'] = this.variantOptionId;
    data['variant_name'] = this.variantName;
    return data;
  }
}

class VariantOptionValue {
  int variationValueId;
  int variantOptionId;
  String valueName;

  VariantOptionValue(
      {this.variationValueId, this.variantOptionId, this.valueName});

  VariantOptionValue.fromJson(Map<String, dynamic> json) {
    variationValueId = json['variation_value_id'];
    variantOptionId = json['variant_option_id'];
    valueName = json['value_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['variation_value_id'] = this.variationValueId;
    data['variant_option_id'] = this.variantOptionId;
    data['value_name'] = this.valueName;
    return data;
  }
}
