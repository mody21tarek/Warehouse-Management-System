# Warehouse Management System

A modern, professional JavaFX-based Warehouse Management System that stores all inventory data in memory using a LinkedList data structure. No database is required.

## Features

✅ **Add Items**: Add new items with name, quantity, category, and price  
✅ **View Items**: Display all items in a clean table format  
✅ **Search Items**: Search by item name or category  
✅ **Edit Items**: Modify existing item details  
✅ **Delete Items**: Remove items from inventory  
✅ **Dashboard**: View key statistics (total items, quantity, and inventory value)  
✅ **Modern UI**: Professional JavaFX interface with clean CSS styling  
✅ **LinkedList Storage**: All data stored in memory using Java's LinkedList  

## Project Structure

```
WarehouseManagementSystem/
├── pom.xml                                    # Maven configuration
├── src/
│   ├── main/
│   │   ├── java/com/warehouse/
│   │   │   ├── app/
│   │   │   │   └── WarehouseApplication.java  # Main JavaFX application
│   │   │   ├── controller/
│   │   │   │   ├── DashboardController.java   # Main navigation controller
│   │   │   │   ├── DashboardViewController.java
│   │   │   │   ├── AddItemController.java
│   │   │   │   ├── ViewItemsController.java
│   │   │   │   ├── SearchItemController.java
│   │   │   │   └── EditItemController.java
│   │   │   ├── manager/
│   │   │   │   └── WarehouseManager.java      # CRUD operations manager
│   │   │   └── model/
│   │   │       └── Item.java                  # Item data model
│   │   └── resources/
│   │       ├── com/warehouse/view/
│   │       │   ├── MainWindow.fxml            # Main application window
│   │       │   ├── DashboardView.fxml
│   │       │   ├── AddItemView.fxml
│   │       │   ├── ViewItemsView.fxml
│   │       │   ├── SearchItemView.fxml
│   │       │   └── EditItemView.fxml
│   │       └── css/
│   │           └── styles.css                 # Modern CSS styling
│   └── test/                                  # Test classes (optional)
└── README.md                                  # This file
```

## Prerequisites

- **Java 17 or later** (JDK 17+)
- **Maven 3.6+** (for building the project)
- **JavaFX SDK 21.0.2** (included via Maven)

## Installation & Setup

### Step 1: Clone or Download the Project

```bash
cd e:\javap\WarehouseManagementSystem
```

### Step 2: Verify Java Installation

Check your Java version:
```bash
java -version
```

You should see Java 17 or later.

### Step 3: Verify Maven Installation

Check Maven is installed:
```bash
mvn -version
```

If Maven is not installed, download it from [apache.org/maven](https://maven.apache.org/download.cgi)

## Running the Application

### Option 1: Run with Maven (Recommended)

```bash
mvn javafx:run
```

This command will:
- Download all dependencies
- Compile the project
- Run the JavaFX application

### Option 2: Build and Run JAR

```bash
# Build the project
mvn clean package

# Run the generated JAR
java -jar target/warehouse-management-system-1.0.0-jar-with-dependencies.jar
```

### Option 3: Run from IDE (IntelliJ IDEA / Eclipse)

1. Import the project as a Maven project
2. Right-click on `WarehouseApplication.java`
3. Select "Run 'WarehouseApplication.main()'"

## Usage Guide

### Dashboard
- View total items, total quantity, and total inventory value
- Navigate to other sections using the left sidebar menu

### Add Item
1. Click "Add Item" in the sidebar
2. Enter item details:
   - **Item Name**: Name of the item
   - **Quantity**: Number of units
   - **Category**: Select from predefined categories or type custom
   - **Price**: Unit price
3. Click "Add Item" button
4. Success message will appear

### View Items
1. Click "View Items" in the sidebar
2. See all items in a table format with columns:
   - ID, Name, Quantity, Category, Price, Total Value
3. Select an item and click:
   - **Edit**: Modify item details
   - **Delete**: Remove item from inventory
   - **Refresh**: Reload the table

### Search Items
1. Click "Search Item" in the sidebar
2. Choose search type:
   - **By Name**: Search for a specific item
   - **By Category**: Find all items in a category
3. Enter search term and click "Search"
4. Results displayed in table

### Edit Item
1. From View Items, select an item and click "Edit"
2. Modify the item details
3. Click "Save" to apply changes
4. Click "Cancel" to discard changes

## Categories

Default categories included:
- Electronics
- Furniture
- Clothing
- Food
- Books
- Other

You can add custom categories by typing in the Category field.

## Data Storage

**Note**: This application stores all data in memory only. Data is **NOT** persisted between sessions.

To add persistent storage, you would need to:
1. Implement serialization/deserialization (save to file)
2. Integrate a database (MySQL, PostgreSQL, etc.)
3. Use an ORM framework (Hibernate, JPA)

Currently, the system uses:
- **LinkedList**: Stores all warehouse items
- **In-Memory Storage**: All data lost when application closes

## Architecture

### Model Layer
- **Item.java**: Represents a warehouse item with properties (id, name, quantity, category, price)

### Manager Layer
- **WarehouseManager.java**: Handles CRUD operations using LinkedList
  - `addItem()`: Add new items
  - `updateItem()`: Modify existing items
  - `deleteItem()`: Remove items
  - `searchByName()`: Find item by name
  - `searchByCategory()`: Find items by category
  - `getAllItems()`: Retrieve all items
  - `getTotalInventoryValue()`: Calculate total value

### Controller Layer
- **DashboardController**: Main application controller (navigation)
- **DashboardViewController**: Dashboard statistics
- **AddItemController**: Handle item addition
- **ViewItemsController**: Display and manage items
- **SearchItemController**: Search functionality
- **EditItemController**: Modify item details

### View Layer
- **FXML Files**: User interface definitions
- **CSS**: Modern styling and appearance

## Features in Detail

### LinkedList Implementation
The system uses Java's built-in `LinkedList` for efficient:
- Sequential access
- Fast insertion/deletion
- Memory-efficient storage

### Validation
- Quantity must be non-negative integer
- Price must be non-negative decimal
- Item names must be unique
- All fields are required

### User Interface
- Modern, clean design with professional colors
- Blue theme (#1e3a5f, #2c5aa0)
- Responsive layout
- Intuitive navigation
- Error and success messages
- Table-based item display

## System Requirements

| Component | Requirement |
|-----------|-------------|
| Java | 17 or later |
| Maven | 3.6 or later |
| RAM | 512 MB minimum |
| Storage | 100 MB for dependencies |
| OS | Windows, Linux, macOS |

## Troubleshooting

### Issue: "javafx cannot be resolved"
**Solution**: Ensure Maven dependencies are downloaded. Run:
```bash
mvn clean install
```

### Issue: "Java version is too old"
**Solution**: Update Java to version 17 or later:
```bash
java -version
```

### Issue: Maven command not found
**Solution**: Add Maven to your system PATH or use full path to Maven installation

### Issue: Application won't start
**Solution**: 
1. Check Java version: `java -version`
2. Check Maven installation: `mvn -version`
3. Clean and rebuild: `mvn clean package`
4. Check console for detailed error messages

## Building from Source

### Clean Build
```bash
mvn clean build
```

### Build with Tests
```bash
mvn clean test
```

### Create Executable JAR
```bash
mvn clean package
```

The JAR file will be created in the `target/` directory.

## Extending the Application

### Adding New Categories
Edit `AddItemController.java` in the `initialize()` method:
```java
categoryCombo.getItems().addAll(
    "Electronics",
    "Furniture",
    // Add your category here
    "YourCategory"
);
```

### Adding Persistence
Implement serialization to save data to a file:
```java
// Save to file
ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream("inventory.dat"));
oos.writeObject(inventory);
oos.close();

// Load from file
ObjectInputStream ois = new ObjectInputStream(new FileInputStream("inventory.dat"));
inventory = (LinkedList<Item>) ois.readObject();
```

### Adding Database Support
Replace LinkedList with database queries using JDBC or JPA/Hibernate.

## Code Quality

- **OOP Principles**: Proper use of classes, inheritance, and interfaces
- **Clean Code**: Well-organized, readable, and documented
- **Error Handling**: Input validation and error messages
- **Separation of Concerns**: Model, View, Controller architecture
- **JavaFX Best Practices**: Proper FXML structure and CSS styling

## License

This project is provided as-is for educational purposes.

## Support

For issues or questions, review the troubleshooting section or check:
- JavaFX Documentation: https://openjfx.io/
- Maven Documentation: https://maven.apache.org/
- Java Documentation: https://docs.oracle.com/en/java/

## Version History

**v1.0.0** (Initial Release)
- Core CRUD operations
- Dashboard with statistics
- Search functionality
- Modern JavaFX UI
- LinkedList-based storage

---

**Made with ❤️ for efficient warehouse management**
