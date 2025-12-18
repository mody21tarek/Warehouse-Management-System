# Installation Guide - Warehouse Management System

## System Requirements

| Requirement | Minimum | Recommended |
|-------------|---------|-------------|
| Java | JDK 17 | JDK 21 LTS |
| Maven | 3.6.0 | 3.9+ |
| RAM | 512 MB | 2 GB |
| Disk Space | 100 MB | 500 MB |
| OS | Windows/Linux/macOS | Windows 10/11, Linux, macOS |

## Complete Installation Steps

### Windows Installation

#### Step 1: Install Java JDK 17+

1. **Download Java**
   - Visit https://www.oracle.com/java/technologies/downloads/
   - Download JDK 17 or later (Windows x64 Installer)

2. **Install Java**
   - Run the downloaded installer
   - Follow the installation wizard
   - Accept license agreement
   - Choose installation path (e.g., `C:\Program Files\Java\jdk-21`)

3. **Verify Installation**
   ```bash
   java -version
   javac -version
   ```
   You should see output like:
   ```
   java version "17.0.x" or higher
   ```

4. **Set JAVA_HOME (If not automatic)**
   - Open Environment Variables
   - Create new System Variable: `JAVA_HOME`
   - Value: `C:\Program Files\Java\jdk-21` (your JDK path)
   - Add to PATH: `%JAVA_HOME%\bin`

#### Step 2: Install Maven

1. **Download Maven**
   - Visit https://maven.apache.org/download.cgi
   - Download Binary zip archive (apache-maven-x.x.x-bin.zip)

2. **Extract Maven**
   - Extract to a location like `C:\apache-maven-3.9.x`

3. **Set Maven PATH**
   - Create System Variable: `MAVEN_HOME`
   - Value: `C:\apache-maven-3.9.x`
   - Add to PATH: `%MAVEN_HOME%\bin`

4. **Verify Installation**
   ```bash
   mvn -version
   ```
   Should show Maven version and Java version

#### Step 3: Install Project

1. **Navigate to Project**
   ```bash
   cd e:\javap\WarehouseManagementSystem
   ```

2. **Download Dependencies** (First time only)
   ```bash
   mvn clean install
   ```
   This will download all required libraries.

3. **Run Application**
   ```bash
   mvn javafx:run
   ```

### Linux/Ubuntu Installation

#### Step 1: Install Java

```bash
# Using apt package manager
sudo apt update
sudo apt install openjdk-17-jdk

# Verify installation
java -version
```

#### Step 2: Install Maven

```bash
# Using apt package manager
sudo apt install maven

# Verify installation
mvn -version
```

#### Step 3: Set Up Project

```bash
# Navigate to project
cd ~/projects/WarehouseManagementSystem
# or wherever you placed the project

# Download dependencies
mvn clean install

# Run the application
mvn javafx:run
```

### macOS Installation

#### Step 1: Install Java

**Using Homebrew (Recommended)**
```bash
# Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Java
brew install openjdk@17

# Verify
java -version
```

**Manual Installation**
1. Download from https://www.oracle.com/java/technologies/downloads/
2. Run the DMG installer
3. Follow the wizard

#### Step 2: Install Maven

```bash
# Using Homebrew
brew install maven

# Verify
mvn -version
```

#### Step 3: Set Up Project

```bash
cd /path/to/WarehouseManagementSystem
mvn clean install
mvn javafx:run
```

## IDE Setup

### IntelliJ IDEA

1. **Open Project**
   - File → Open
   - Navigate to `pom.xml`
   - Open as Project

2. **Configure Java SDK**
   - File → Project Structure
   - Project SDK → New → JDK
   - Point to your Java installation
   - Set to JDK 17+

3. **Enable Plugins**
   - Settings → Plugins
   - Install "JavaFX Runtime" plugin

4. **Run Application**
   - Right-click `WarehouseApplication.java`
   - Select "Run 'WarehouseApplication.main()'"

### Eclipse

1. **Import Project**
   - File → Import → Existing Maven Projects
   - Navigate to project root
   - Click Finish

2. **Configure Java Compiler**
   - Project → Properties
   - Java Compiler → Set to 17 or higher

3. **Run Application**
   - Right-click project
   - Run As → Maven build
   - Goals: `javafx:run`

### VS Code

1. **Install Extensions**
   - Extension Pack for Java
   - JavaFX Support (optional)

2. **Open Project**
   - Open the project folder

3. **Run Application**
   - Terminal → New Terminal
   - Type: `mvn javafx:run`

## Verify Installation

### Test 1: Check Java Version
```bash
java -version
```
Should show Java 17 or higher

### Test 2: Check Maven Installation
```bash
mvn -version
```
Should show Maven version and Java version

### Test 3: Download Dependencies
```bash
cd path/to/WarehouseManagementSystem
mvn clean install
```
Should complete without errors

### Test 4: Run Application
```bash
mvn javafx:run
```
Application window should open with the Warehouse Management System

## Troubleshooting Installation Issues

### Issue: "Java command not found"

**Solution:**
```bash
# Check if Java is installed
where java    # Windows
which java    # Linux/macOS

# If not found, add to PATH
# Windows: Set JAVA_HOME environment variable
# Linux/macOS: Set PATH in ~/.bashrc or ~/.zshrc
export PATH=$PATH:/path/to/java/bin
source ~/.bashrc  # or ~/.zshrc
```

### Issue: "Maven command not found"

**Solution:**
```bash
# Check Maven installation
where mvn     # Windows
which mvn     # Linux/macOS

# If not found, add Maven to PATH
# Windows: Set MAVEN_HOME environment variable
# Linux/macOS: Set PATH
export PATH=$PATH:/path/to/maven/bin
source ~/.bashrc  # or ~/.zshrc
```

### Issue: "Cannot find symbol javafx"

**Solution:**
```bash
# Clean and rebuild
mvn clean install

# If still not working, force download
mvn dependency:resolve
mvn dependency:resolve-plugins
```

### Issue: "Module javafx cannot be found"

**Solution 1:** Add VM options in IDE
```
--module-path /path/to/javafx/lib --add-modules javafx.controls,javafx.fxml
```

**Solution 2:** Use Maven directly
```bash
mvn javafx:run
```

### Issue: "Port already in use" or "Application already running"

**Solution:**
```bash
# Kill existing processes
# Windows
taskkill /F /IM java.exe

# Linux/macOS
pkill -f "java.*WarehouseApplication"
```

### Issue: OutOfMemoryError

**Solution:** Increase heap size
```bash
# Windows
set _JAVA_OPTIONS=-Xmx2g

# Linux/macOS
export _JAVA_OPTIONS=-Xmx2g

# Then run
mvn javafx:run
```

### Issue: Graphics/Display Issues

**Solution for Linux:**
```bash
# Install required libraries
sudo apt install libgl1-mesa-glx libxrender1 libxi6

# Run with software rendering
export GLASS_PIPELINE=prism.sw
mvn javafx:run
```

## First Run Configuration

### Step 1: Download Dependencies
First time running the project, Maven will download ~200MB of dependencies:
```bash
mvn clean install
```
This may take 5-10 minutes depending on internet speed.

### Step 2: Build the Project
```bash
mvn clean compile
```
Compiles all Java source files.

### Step 3: Run the Application
```bash
mvn javafx:run
```

## Building Executable JAR

To create a standalone JAR file:

```bash
# Build the JAR
mvn clean package

# Run the JAR
java -jar target/warehouse-management-system-1.0.0-jar-with-dependencies.jar
```

The JAR file will be located in `target/` directory.

## Next Steps

After successful installation:
1. See `QUICKSTART.md` for quick usage guide
2. See `README.md` for complete documentation
3. Review the source code to learn the architecture
4. Extend the application with new features

## Getting Help

If you encounter issues:

1. **Check Java/Maven versions**
   ```bash
   java -version
   mvn -version
   ```

2. **Clean and rebuild**
   ```bash
   mvn clean install
   ```

3. **Check error messages**
   - Read the console output carefully
   - Google the error message
   - Check Maven logs in `target/` directory

4. **Visit Official Documentation**
   - JavaFX: https://openjfx.io/
   - Maven: https://maven.apache.org/
   - Java: https://docs.oracle.com/en/java/

## Uninstalling

To remove the project:

```bash
# Remove project directory
rm -rf WarehouseManagementSystem  # Linux/macOS
rmdir /s WarehouseManagementSystem  # Windows

# Optional: Remove Maven cache
rm -rf ~/.m2/repository
```

---

**Your installation is complete! Ready to start developing.** 🚀
