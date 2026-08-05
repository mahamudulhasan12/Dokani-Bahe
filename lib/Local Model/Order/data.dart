import 'package:dokani_bahe/Local%20Model/Order/order_data.dart';

class ProductData {
  static List<OrderData> pd = [
    OrderData(
      delevery: "Processing",
      id: "DB123456",
      date: "20 May 2026",
      itemCount: 3,
      price: "4,33",
      image: "https://www.appliancesdirect.co.uk/Images/MWWA3QAA_1_Supersize.png?v=66",
      PrMethod: "bKash",
    ),
    // 2
    OrderData(
      delevery: "Cancelled",
      id: "DB12345",
      date: "20 May 2026",
      itemCount: 3,
      price: "4,503",
      image: "https://www.appliancesdirect.co.uk/Images/MWWA3QAA_1_Supersize.png?v=66",
      PrMethod: "bKash",
    ),
    // 3
    OrderData(
      delevery: "Shipped",
      id: "DB1234567",
      date: "20 May 2026",
      itemCount: 3,
      price: "4,303",
      image: "https://www.appliancesdirect.co.uk/Images/MWWA3QAA_1_Supersize.png?v=66",
      PrMethod: "bKash",
    ),
  ];
}
