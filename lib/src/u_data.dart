library flutter_upayments;

class paymentDetails {
  List<Products>? products;
  Order? order;
  PaymentGateway? paymentGateway;
  String? language;
  Reference? reference;
  Customer? customer;
  String? returnUrl;
  String? apiKey;
  String? cancelUrl;
  String? notificationUrl;
  String? customerExtraData;

  paymentDetails(
      {this.products,
      this.order,
      this.paymentGateway,
      this.language,
      this.reference,
      this.customer,
      this.returnUrl,
      this.apiKey,
      this.cancelUrl,
      this.notificationUrl,
      this.customerExtraData});

  paymentDetails.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
    order = json['order'] != null ? Order.fromJson(json['order']) : null;
    paymentGateway = json['paymentGateway'] != null
        ? PaymentGateway.fromJson(json['paymentGateway'])
        : null;
    language = json['language'];
    reference = json['reference'] != null
        ? Reference.fromJson(json['reference'])
        : null;
    customer =
        json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    returnUrl = json['returnUrl'];
    apiKey = json['apiKey'];
    cancelUrl = json['cancelUrl'];
    notificationUrl = json['notificationUrl'];
    customerExtraData = json['customerExtraData'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    if (order != null) {
      data['order'] = order!.toJson();
    }
    if (paymentGateway != null) {
      data['paymentGateway'] = paymentGateway!.toJson();
    }
    data['language'] = language;
    if (reference != null) {
      data['reference'] = reference!.toJson();
    }
    if (customer != null) {
      data['customer'] = customer!.toJson();
    }
    data['returnUrl'] = returnUrl;
    data['apiKey'] = apiKey;
    data['cancelUrl'] = cancelUrl;
    data['notificationUrl'] = notificationUrl;
    data['customerExtraData'] = customerExtraData;
    return data;
  }
}

class Products {
  String? name;
  String? description;
  int? price;
  int? quantity;

  Products({this.name, this.description, this.price, this.quantity});

  Products.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    price = json['price'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['quantity'] = quantity;
    return data;
  }
}

class Order {
  String? id;
  String? reference;
  String? description;
  String? currency;
  int? amount;

  Order(
      {this.id, this.reference, this.description, this.currency, this.amount});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reference = json['reference'];
    description = json['description'];
    currency = json['currency'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['reference'] = reference;
    data['description'] = description;
    data['currency'] = currency;
    data['amount'] = amount;
    return data;
  }
}

class PaymentGateway {
  String? src;

  PaymentGateway({this.src});

  PaymentGateway.fromJson(Map<String, dynamic> json) {
    src = json['src'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['src'] = src;
    return data;
  }
}

class Reference {
  String? id;

  Reference({this.id});

  Reference.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    return data;
  }
}

class Customer {
  String? uniqueId;
  String? name;
  String? email;
  String? mobile;

  Customer({this.uniqueId, this.name, this.email, this.mobile});

  Customer.fromJson(Map<String, dynamic> json) {
    uniqueId = json['uniqueId'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uniqueId'] = uniqueId;
    data['name'] = name;
    data['email'] = email;
    data['mobile'] = mobile;
    return data;
  }
}
