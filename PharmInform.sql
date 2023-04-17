create table Clinic
(
    ClinicName varchar(50) not null,
    primary key (ClinicName)
);

create table `Clinical Trials`
(
    ClinicName varchar(50) not null,
    CTName     varchar(50) not null,
    Indication text        not null,
    primary key (ClinicName, CTName),
    constraint fk_16
        foreign key (ClinicName) references Clinic (ClinicName)
            on update cascade
);

create table `Drug Classes`
(
    DCName varchar(50) not null,
    primary key (DCName)
);

create table Medications
(
    MName       varchar(50) not null,
    Description mediumtext  null,
    EdInfo      mediumtext  null,
    primary key (MName)
);

create table Pharmacists
(
    CUsername  varchar(20) null,
    Password   varchar(20) not null,
    FirstName  varchar(15) not null,
    LastName   varchar(15) not null,
    PharmEmail varchar(50) not null,
    ClinicName varchar(50) not null,
    primary key (PharmEmail),
    constraint fk_02
        foreign key (ClinicName) references Clinic (ClinicName)
            on update cascade
);

create table `Layman Patients`
(
    PUsername  varchar(20) not null,
    password   varchar(20) not null,
    FirstName  varchar(50) not null,
    LastName   varchar(50) not null,
    DOB        date        not null,
    Email      varchar(20) not null,
    PharmEmail varchar(20) not null,
    Phone      varchar(20) null,
    primary key (PUsername),
    constraint Email
        unique (Email),
    constraint PUsername
        unique (PUsername),
    constraint Phone
        unique (Phone),
    constraint fk_01
        foreign key (PharmEmail) references Pharmacists (PharmEmail)
            on update cascade on delete cascade
);

create table `Pharmacy Students`
(
    EdUsername varchar(20) not null,
    password   varchar(20) not null,
    SchoolName varchar(50) not null,
    FirstName  varchar(50) not null,
    LastName   varchar(50) not null,
    primary key (EdUsername)
);

create table med_DC
(
    MName  varchar(50) not null,
    DCName varchar(50) not null,
    primary key (MName, DCName),
    constraint fk_07
        foreign key (MName) references Medications (MName),
    constraint fk_08
        foreign key (DCName) references `Drug Classes` (DCName)
);

create table med_interactions
(
    MName1 varchar(50) not null,
    MName2 varchar(50) not null,
    primary key (MName1, MName2),
    constraint fk_05
        foreign key (MName1) references Medications (MName),
    constraint fk_06
        foreign key (MName2) references Medications (MName)
);

create table patient_med
(
    MName      varchar(50) not null,
    PUsername  varchar(50) not null,
    Indication text        not null,
    primary key (MName, PUsername),
    constraint fk_03
        foreign key (MName) references Medications (MName),
    constraint fk_04
        foreign key (PUsername) references `Layman Patients` (PUsername)
            on delete cascade
);

create table samp_prob
(
    MName    varchar(50) not null,
    SampProb mediumtext  not null,
    primary key (MName),
    constraint fk_11
        foreign key (MName) references Medications (MName)
);

create table student_med
(
    MName      varchar(50) not null,
    EdUsername varchar(50) not null,
    primary key (MName, EdUsername),
    constraint fk_09
        foreign key (MName) references Medications (MName),
    constraint fk_10
        foreign key (EdUsername) references `Pharmacy Students` (EdUsername)
            on delete cascade
);

create table student_notes
(
    Mname       varchar(20) not null,
    EdUsername  varchar(20) not null,
    Description mediumtext  null,
    primary key (EdUsername, Mname),
    constraint fk_14
        foreign key (EdUsername) references `Pharmacy Students` (EdUsername)
            on delete cascade,
    constraint fk_15
        foreign key (Mname) references Medications (MName)
            on update cascade
);

create table use_casesDC
(
    DCname      varchar(50) not null,
    EdInfo      mediumtext  null,
    Description mediumtext  not null,
    primary key (DCname),
    constraint fk_13
        foreign key (DCname) references `Drug Classes` (DCName)
);

create table use_casesM
(
    Mname       varchar(50) not null,
    EdInfo      mediumtext  null,
    Description mediumtext  not null,
    primary key (Mname),
    constraint fk_12
        foreign key (Mname) references Medications (MName)
);


