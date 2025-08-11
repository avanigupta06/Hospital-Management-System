# 🏥 Hospital Management System (SQL Project)

This project is a **Hospital Management System** implemented entirely in **MySQL**.  
It creates a database for managing **doctors, patients, payments, medicines, phone numbers, treatments**, and related operations.

---

## 📌 Features Implemented

### 1. **Database & Tables**
- **Database Creation & Deletion**
  - Creates a database named `Hospital_Management_System`.
  - Option to drop it if needed.

- **Tables Created**
  - **Doctor** → Stores doctor details (name, specialization, fee, etc.).
  - **Patient** → Stores patient details (name, attending doctor, address).
  - **Payment** → Stores payment details with foreign key to patients.
  - **Medicine** → Stores medicine details per patient.
  - **Treats** → Mapping between doctors and patients with treatment date.
  - **P_phone_no** → Stores patient phone numbers.
  - **D_phone_no** → Stores doctor phone numbers.

---

### 2. **Data Insertion**
- Sample **doctor records** with IDs, names, specialization, and fees.
- Sample **patient records** with attending doctor and address.
- **Payment records** linked to patients.
- **Medicine purchase records** linked to patients.
- **Treatment records** mapping doctors to patients.
- **Phone numbers** for patients and doctors.

---

### 3. **Views**
- **`SameDoctor`** → Lists patients attended by a specific doctor (`Dr. Pooja Goyal`).
- **`DocFee`** → Lists payments where doctor’s fee is greater than 300.

---

### 4. **Joins**
- **INNER JOIN** between `Patient` and `Payment` (patient payments).
- **LEFT JOIN** between `Patient` and `Treats` (patients and treatments).
- **LEFT JOIN** between `Patient` and `P_phone_no` (patients and phone numbers).
- **FULL OUTER JOIN simulation** between `Doctor` and `D_phone_no` using `UNION`.

---

### 5. **Set Operations**
- **EXCEPT** → Patients who haven’t made any payment.
- **INTERSECT** → Matching phone numbers between patients and doctors.

---

### 6. **Trigger**
- **`Print_Total` Trigger** → (Planned) Calculates total fee before inserting into `Payment` table  
  *(Note: Needs `TotalFee` column in `Payment` to work.)*

---

## 🛠 SQL Concepts Used
- **DDL (Data Definition Language)** → `CREATE`, `DROP`, `ALTER`
- **DML (Data Manipulation Language)** → `INSERT`, `UPDATE`, `DELETE`
- **DQL (Data Query Language)** → `SELECT`, `WHERE`, `JOIN`, `UNION`
- **Constraints** → `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `NOT NULL`
- **Views**
- **Triggers**
- **Set Operators** → `EXCEPT`, `INTERSECT`
- **Joins** → `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN (via UNION)`

---

## 📂 Project Workflow
1. Create the `Hospital_Management_System` database.
2. Create tables with proper **primary & foreign keys**.
3. Insert sample data for doctors, patients, payments, medicines, treatments, and phone numbers.
4. Create **views** to simplify frequently used queries.
5. Run **joins** to fetch combined data from multiple tables.
6. Use **set operations** to filter unique datasets.
7. Implement **trigger** for automated calculations.

---

## 📸 Example Queries
```sql
-- Patients treated by Dr. Pooja Goyal
SELECT * FROM SameDoctor;

-- Payments with Doctor fee > 300
SELECT * FROM DocFee;

-- Patients without any payment
SELECT Patient_id FROM Patient
EXCEPT
SELECT Patient_id FROM Payment;

-- Common phone numbers between doctors and patients
SELECT Name_P, Phone_no1
FROM P_phone_no
INTERSECT
SELECT Name_D, Phone_no
FROM D_phone_no;
