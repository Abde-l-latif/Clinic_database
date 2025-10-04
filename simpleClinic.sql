create database db_clinic;
use db_clinic;

create table Persons 
(
	personID int not null primary key ,
	firstName nvarchar(20) not null,
	lastName nvarchar(20) not null,
	gender char(1),
	address nvarchar(50) null
)

--patients
create table PatientsEmails
(
	patientEmailID int not null primary key ,
	email nvarchar(40) null
)

create table PatientsPhones
(
	patientPhoneID int not null primary key ,
	phone nvarchar(40) not null
)

create table Patients
(
	patientID int not null primary key , 
	personID int foreign key references Persons(personID),
	emailID int foreign key references PatientsEmails(patientEmailID),
	phoneID int foreign key references PatientsPhones(patientPhoneID)
)

--doctors
create table DoctorsEmails
(
	doctorEmailID int not null primary key ,
	email nvarchar(40) null
)

create table DoctorsPhones
(
	doctorPhoneID int not null primary key ,
	phone nvarchar(40) not null
)

create table Specializations
(
	specializationID int not null primary key ,
	name nvarchar(40) not null
)

create table Doctors
(
	doctorID int not null primary key , 
	personID int foreign key references Persons(personID),
	emailID int foreign key references DoctorsEmails(doctorEmailID),
	phoneID int foreign key references DoctorsPhones(doctorPhoneID),
	specializationID int foreign key references Specializations(specializationID)
)

--medicalrecord & prescription
create table Prescriptions 
(
	prescriptionID int not null primary key , 
	medicalName nvarchar(50) not null,
	frequency tinyint not null ,
	dosage tinyint not null ,
	startDate date not null , 
	endDate date not null , 
	specialInstruction nvarchar(200) null
)

create table MedicalRecords 
(
	medicalRecordID int not null primary key ,
	prescriptionID int null foreign key references Prescriptions(prescriptionID),
	diagnosis nvarchar(200) not null ,
	descriptionVisit nvarchar(200) null ,
	additionalNote nvarchar(200) null , 
)

--paments 
create table Paiments
(
	paimentID int not null primary key ,
	amountPaid smallmoney not null ,
	paimentMethod nvarchar(20) not null, 
	paimentDate date not null , 
	additionalNote nvarchar(200) null
)

--appointments
create table appointmentStatus 
(
	statusID int not null primary key,
	name nvarchar(15)
)
create table Appointments
(
	appointmentsID int not null primary key , 
	dateTime date not null,
	statusID int not null foreign key references appointmentStatus(statusID),
	paimentID int null foreign key references Paiments(paimentID),
	medicalRecordID int null foreign key references MedicalRecords(medicalRecordID),
	patientID int not null foreign key references Doctors(doctorID),
	doctorID int not null  foreign key references Patients(patientID)
)