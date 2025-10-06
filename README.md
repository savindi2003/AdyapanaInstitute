# 🎓 Adyapana - Student Management System (Java SE)

[![Platform](https://img.shields.io/badge/platform-Desktop-blue)]()
[![Language](https://img.shields.io/badge/language-Java-orange)]()
[![Database](https://img.shields.io/badge/database-MySQL-green)]()
[![Reporting](https://img.shields.io/badge/reports-JasperReports-purple)]()
[![License](https://img.shields.io/badge/license-MIT-blue)]()

**Adyapana** is a desktop-based Java SE application developed for **A/L tuition institutes** to manage student records, attendance, payments, and reports efficiently.  
It provides a user-friendly interface and automates the daily administrative tasks of an educational institute.

---

## ✨ Features

- 👨‍🎓 Student registration and record management  
- 💰 Payment tracking and fee management  
- 📅 Class and subject scheduling  
- 📊 Generate detailed reports using **JasperReports**  
- 🔍 Search and filter students by name or class  
- 🗃️ Store all data in **MySQL Database**  

---

## 🛠️ Tech Stack

| Component | Technology |
|------------|-------------|
| Language | Java SE |
| Database | MySQL (`adyapana_db`) |
| Reporting Tool | JasperReports |
| IDE | NetBeans |
| UI Framework | Java Swing |
| Build Tool | Ant |

---

## ⚙️ Requirements

Before running this project, make sure you have:

- ✅ **JDK 17** or higher installed  
- ✅ **MySQL Server** running  
- ✅ **NetBeans IDE** (or IntelliJ IDEA)  
- ✅ **JasperReports** library added to the project  
- ✅ Database created (use the provided `.sql` file)

---

## 🚀 Setup & Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/savindi2003/adyapana-institute.git
   ```
2. Create the MySQL database `adyapana_db` . Import the `adyapana.sql` file if available.
3. Update database connection in your Java code:
   ```bash
   String url = "jdbc:mysql://localhost:3306/adyapana_db";
   String user = "root";
   String password = "yourpassword";
   ```
4. Build and Run the project. 🎉

---

## 📊 Reports (JasperReports)
Adyapana uses JasperReports to generate professional and printable reports.

Example reports:
- Adyapana.jasper → Invoice for Student Paying classes
  
Reports can be exported as PDF or printed directly.

---

## 👩‍💻 Author
**Savindi Duleesha**  
📧 savindi@example.com  
🌐 [Portfolio](https://your-portfolio-link.com)

---

## 📜 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.



