// MongoDB initialization script for category translations
// This runs only ONCE when the MongoDB container is first created

// Switch to translations database
db = db.getSiblingDB("translations");

// Check if data already exists to prevent duplicate initialization
const existingCount = db.categorytranslations.countDocuments();
if (existingCount > 0) {
  print("Category translations already initialized, skipping...");
} else {
  // Insert initial translation data
  const result = db.categorytranslations.insertMany([
    {
      categoryId: 1,
      languageCode: "en",
      name: "Oil Painting",
      createdAt: new Date(),
      updatedAt: new Date(),
    },
    {
      categoryId: 1,
      languageCode: "he",
      name: "ציורי שמן",
      createdAt: new Date(),
      updatedAt: new Date(),
    },
    {
      categoryId: 1,
      languageCode: "hu",
      name: "Olajfestmények",
      createdAt: new Date(),
      updatedAt: new Date(),
    },
    {
      categoryId: 2,
      languageCode: "en",
      name: "Sculpture",
      createdAt: new Date(),
      updatedAt: new Date(),
    },
    {
      categoryId: 2,
      languageCode: "he",
      name: "פסלים",
      createdAt: new Date(),
      updatedAt: new Date(),
    },
    {
      categoryId: 2,
      languageCode: "hu",
      name: "Szobrok",
      createdAt: new Date(),
      updatedAt: new Date(),
    },
  ]);

  // Create indexes for better performance
  db.categorytranslations.createIndex(
    { categoryId: 1, languageCode: 1 },
    { unique: true }
  );
  db.categorytranslations.createIndex({ categoryId: 1 });
  db.categorytranslations.createIndex({ languageCode: 1 });

  print(
    `Successfully initialized ${result.insertedIds.length} category translations`
  );
}
