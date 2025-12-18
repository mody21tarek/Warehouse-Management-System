# Warehouse Management System - Setup and Run Script

Write-Host "╔════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║  Warehouse Management System - Auto Setup & Run    ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

# Check Java
Write-Host "✓ Checking Java installation..." -ForegroundColor Green
java -version 2>&1 | Select-Object -First 1

# Define Maven home
$mvnHome = "C:\Maven\apache-maven-3.9.6"
$mvnBin = "$mvnHome\bin\mvn.cmd"

# Check if Maven is already installed
if (Test-Path $mvnBin) {
    Write-Host "✓ Maven found at: $mvnHome" -ForegroundColor Green
} else {
    Write-Host "⚠ Maven not found. Would need to be installed manually." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "To manually install Maven:" -ForegroundColor Yellow
    Write-Host "1. Download from: https://maven.apache.org/download.cgi" -ForegroundColor Yellow
    Write-Host "2. Extract to: C:\Maven\" -ForegroundColor Yellow
    Write-Host "3. Add to PATH: C:\Maven\apache-maven-X.X.X\bin" -ForegroundColor Yellow
    Write-Host "4. Run: mvn javafx:run" -ForegroundColor Yellow
    exit
}

Write-Host ""
Write-Host "Starting application build and run..." -ForegroundColor Cyan

# Navigate to project
cd "e:\javap\WarehouseManagementSystem"

# Run Maven
Write-Host "Building project..." -ForegroundColor Cyan
& $mvnBin javafx:run

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Application started successfully!" -ForegroundColor Green
} else {
    Write-Host "✗ Build failed with error code: $LASTEXITCODE" -ForegroundColor Red
}
