drop database PharmInform2;
create database PharmInform2;
use PharmInform2;

create table Clinic
(
    ClinicName varchar(50) primary key
);

create table `Clinical Trials`
(
    CTName       varchar(50) primary key,
    ClinicName   varchar(50),
    CTIndication text,
    foreign key (ClinicName) references Clinic (ClinicName)
);

create table `Drug Classes`
(
    DCName varchar(50) primary key
);

create table Medications
(
    MName       varchar(50) primary key,
    Description mediumtext,
    EdInfo      mediumtext
);

create table Pharmacists
(
    PharmEmail varchar(20) primary key,
    FirstName  varchar(50),
    LastName   varchar(50),
    CUsername  varchar(20),
    Password   varchar(20),
    ClinicName varchar(50),
    foreign key (ClinicName) references Clinic (ClinicName)
);

create table `Layman Patients`
(
    PUsername  varchar(20) primary key,
    Password   varchar(20),
    FirstName  varchar(50),
    LastName   varchar(50),
    DOB        date,
    Email      varchar(20),
    Phone      varchar(20),
    PharmEmail varchar(20),
    foreign key (PharmEmail) references Pharmacists (PharmEmail)
);

create table `Pharmacy Students`
(
    EdUsername varchar(20) primary key,
    Password   varchar(20),
    SchoolName varchar(50),
    FirstName  varchar(50),
    LastName   varchar(50)
);

create table med_DC
(
    MName  varchar(50),
    DCName varchar(50),
    foreign key (MName) references Medications (MName),
    foreign key (DCName) references `Drug Classes` (DCName)
);

create table med_interactions
(
    MName1 varchar(50),
    MName2 varchar(50),
    foreign key (MName1) references Medications (MName),
    foreign key (MName2) references Medications (MName)
);

create table patient_med
(
    PUsername  varchar(20),
    MName      varchar(50),
    Indication text,
    foreign key (PUsername) references `Layman Patients` (PUsername),
    foreign key (MName) references Medications (MName)
);

create table samp_prob
(
    MName    varchar(50),
    SampProb mediumtext,
    foreign key (MName) references Medications (MName)
);

create table student_med
(
    MName      varchar(50),
    EdUsername varchar(20),
    foreign key (MName) references Medications (MName),
    foreign key (EdUsername) references `Pharmacy Students` (EdUsername)
);

create table student_notes
(
    EdUsername varchar(20),
    MName      varchar(50),
    Notes      mediumtext,
    foreign key (EdUsername) references `Pharmacy Students` (EdUsername),
    foreign key (MName) references Medications (MName)
);

create table use_casesDC
(
    DCName      varchar(50),
    UseCase     mediumtext,
    EdInfo      mediumtext,
    Description mediumtext,
    foreign key (DCName) references `Drug Classes` (DCName)
);

create table use_casesM
(
    MName       varchar(50),
    UseCase     mediumtext,
    EdInfo      mediumtext,
    Description mediumtext,
    foreign key (MName) references Medications (MName)
);