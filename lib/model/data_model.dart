class DataModel{
  final String title;
  final String subTitle;
  final String stars;
  final int rent;
  final String image;

  DataModel({
    required this.title, 
    required this.subTitle, 
    required this.stars, 
    required this.rent,
    required this.image,
  });
}

List<DataModel> dataModel=[
  DataModel(title: "Sheraton Hotels", subTitle: "Sheraton Hotels and Resorts is an international ", stars: "4.5", rent: 200, image: "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
  DataModel(title: "Four Seasons Hotels", subTitle: "Four Seasons Hotels Limited, trading as Four Seasons Hotels and  Canada", stars: "2.4", rent: 350, image: "https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60" ),
  DataModel(title: "Hotel Indigo", subTitle: "Hotel Indigo is a chain of small, individually owned boutique hotels, which is part ", stars: "5.0", rent: 600,  image: "https://images.unsplash.com/photo-1629140727571-9b5c6f6267b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGhvdGVsJTIwcm9vbXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
  DataModel(title: "Holiday Inn", subTitle: "Holiday Inn is an American chain of hotels based in Atlanta, Georgia and a ", stars: "5.2", rent: 650,  image: "https://images.unsplash.com/photo-1631049035182-249067d7618e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDF8fGhvdGVsJTIwcm9vbXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
  DataModel(title: "The Watson Hotel", subTitle: "The Watson Hotel is a chain of luxury hotels operated ", stars: "4.5", rent: 450,  image: "https://images.unsplash.com/photo-1598928636135-d146006ff4be?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fGhvdGVsJTIwcm9vbXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
  DataModel(title: "Manchester Grand", subTitle: "Manchester Grand Hyatt San Diego is a high-rise hotel complex", stars: "4.9", rent: 543,  image: "https://images.unsplash.com/photo-1565031491910-e57fac031c41?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODR8fGhvdGVsJTIwcm9vbXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
];