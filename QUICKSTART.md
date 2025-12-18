# Quick Start Guide - Warehouse Management System

## 🚀 Get Started in 5 Minutes

### Prerequisites Check
Verify you have the required software installed:

```bash
# Check Java version (should be 17+)
java -version

# Check Maven version (should be 3.6+)
mvn -version
```

### Step 1: Navigate to Project Directory
```bash
cd e:\javap\WarehouseManagementSystem
```

### Step 2: Run the Application
Choose one of the following methods:

#### Method A: Maven (Simplest)
```bash
mvn javafx:run
```

#### Method B: Build JAR and Run
```bash
mvn clean package
java -jar target/warehouse-management-system-1.0.0-jar-with-dependencies.jar
```

#### Method C: IDE
1. Open the project in IntelliJ IDEA or Eclipse
2. Right-click `WarehouseApplication.java`
3. Select "Run"

## 📊 Using the Application

### First Launch - Dashboard
When you start the app, you'll see:
- Left menu with navigation options
- Dashboard showing statistics (0 items initially)
- Modern blue interface

### Add Your First Item
1. Click **"Add Item"** in the left menu
2. Fill in the form:
   - Item Name: `Laptop`
   - Quantity: `10`
   - Category: `Electronics`
   - Price: `999.99`
3. Click **"Add Item"** button
4. See success message ✓

### View Items
1. Click **"View Items"** 
2. See your new item in the table
3. Dashboard updates automatically showing:
   - Total Items: 1
   - Total Quantity: 10
   - Total Value: $9,999.90

### Search for Items
1. Click **"Search Item"**
2. Choose "Search by Name" (default)
3. Type `Laptop`
4. Click **"Search"**
5. See your item highlighted

### Delete an Item
1. Go to **"View Items"**
2. Select the item
3. Click **"Delete"**
4. Item removed and dashboard updates

## 🎨 UI Features

- **Blue Theme**: Professional color scheme
- **Navigation Menu**: Quick access to all features
- **Data Table**: View all items with sorting
- **Real-time Updates**: Dashboard changes as you modify inventory
- **Error Messages**: Clear feedback for any issues

## 📂 Default Categories

Pre-defined categories available:
- Electronics
- Furniture
- Clothing
- Food
- Books
- Other

You can also enter custom categories.

## ⚠️ Important Notes

**Data Storage**: All data is stored in memory only
- Data is NOT saved to disk
- Closing the app will lose all data
- This is by design for this version

To make data persistent, you would need to:
1. Add file serialization, or
2. Integrate a database

## 🔧 Troubleshooting

### Application won't start
```bash
# Clean and rebuild
mvn clean install

# Then run
mvn javafx:run
```

### "Maven command not found"
Add Maven to your system PATH or use the full path to Maven installation.

### "Java version too old"
Update to Java 17 or later from [oracle.com](https://www.oracle.com/java/technologies/downloads/)

## 📚 Learn More

See `README.md` for:
- Complete feature documentation
- Architecture details
- How to extend the application
- Database integration guide

## 🎓 Educational Purpose

This system demonstrates:
- ✓ LinkedList data structure
- ✓ Object-Oriented Programming (OOP)
- ✓ JavaFX GUI development
- ✓ Model-View-Controller (MVC) pattern
- ✓ Maven project structure

## 🆘 Still Need Help?

1. Check the full README.md
2. Review the error message in the console
3. Ensure Java 17+ and Maven 3.6+ are installed
4. Try the "Clean and rebuild" step above

---

**Ready to manage your warehouse?** Just run `mvn javafx:run` and start adding items! 🏭
