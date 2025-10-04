# 🏥 Clinic Database Design

A **relational database** project built to manage patients, doctors, appointments, and medical records in a simple clinic system.  
Designed with **SQL Server** and following normalization principles for data integrity and scalability.

---

## 📁 Project Structure

clinic-database/
│
├── db_clinic.sql # Full database creation script (tables, constraints, relationships)
├── clinic_schema.png # ER diagram of the database design
└── README.md # Project documentation

yaml
Copy code

---

## ⚙️ Features

✅ **Patients Management** — stores patient info, emails, and phone numbers  
✅ **Doctors Management** — handles doctors, contact details, and specializations  
✅ **Appointments System** — tracks appointments, statuses, and payments  
✅ **Medical Records & Prescriptions** — records diagnoses and prescribed medications  
✅ **Payments Module** — logs payments with amount, method, and date  

---

## 🧠 Database Entities Overview

| Entity | Description |
|--------|-------------|
| `Persons` | Base table for storing names, gender, and address |
| `Patients`, `Doctors` | Extend `Persons` for clinic roles |
| `Appointments` | Links doctors, patients, payments, and medical records |
| `MedicalRecords` | Contains diagnosis and visit notes |
| `Prescriptions` | Medicines, dosage, and usage instructions |
| `Payments` | Tracks transactions for appointments |

## relational schema using drawio


<img width="993" height="518" alt="rs_simpleclinic" src="https://github.com/user-attachments/assets/338cb6fb-0de9-49f1-bca3-c3cd7ca5685c" />
