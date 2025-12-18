# 🚀 QUICK RUN INSTRUCTIONS - Warehouse Management System

## STATUS: Project Created ✅
All source code, UI files, and documentation are ready.

## ⚠️ REQUIREMENT: Maven Installation

To run the application, you need **Maven 3.6+** installed and added to your system PATH.

### Option 1: Install Maven via Package Manager (Recommended)

#### Windows (Using Chocolatey)
```powershell
choco install maven
```

#### Windows (Manual Installation)
1. Download Maven: https://maven.apache.org/download.cgi
2. Extract to: `C:\Maven\`
3. Add to PATH:
   - Open Environment Variables
   - Add: `C:\Maven\apache-maven-3.9.6\bin` to PATH
   - Restart terminal

#### Linux/macOS (Using Homebrew)
```bash
brew install maven
```

#### Linux (Using apt)
```bash
sudo apt install maven
```

### Option 2: Verify Current Installation
```bash
mvn --version
```

## 🚀 RUN THE APPLICATION

Once Maven is installed:

### Method 1: Standard Maven Run (Simplest)
```bash
cd e:\javap\WarehouseManagementSystem
mvn clean install
mvn javafx:run
```

### Method 2: One Command
```bash
cd e:\javap\WarehouseManagementSystem
mvn clean javafx:run
```

### Method 3: Build Executable JAR
```bash
cd e:\javap\WarehouseManagementSystem
mvn clean package
java -jar target/warehouse-management-system-1.0.0-jar-with-dependencies.jar
```

### Method 4: Using IDE
- Open project in IntelliJ IDEA / Eclipse / VS Code
- Right-click `WarehouseApplication.java`
- Select "Run"

## 📋 What the Maven Command Does

```
mvn javafx:run
```

This command:
1. ✅ Downloads all dependencies (JavaFX, etc.)
2. ✅ Compiles all Java source files
3. ✅ Packages the application
4. ✅ Runs the JavaFX application

## 🎯 Expected Result

When successful, you should see:
1. A new window titled "Warehouse Management System"
2. Left sidebar with navigation menu
3. Dashboard showing statistics (0 items initially)
4. Blue professional theme interface

## 📚 All Files Are Ready

Your project includes:
- ✅ 10 Java source files (complete)
- ✅ 6 FXML UI files (complete)
- ✅ 1 CSS styling file (complete)
- ✅ Maven pom.xml (complete)
- ✅ Full documentation (complete)

## ❓ Need Help?

See these files in the project directory:
- **QUICKSTART.md** - Quick start guide
- **INSTALL.md** - Detailed installation
- **README.md** - Complete documentation

---

**Next Step**: Install Maven, then run the application!
