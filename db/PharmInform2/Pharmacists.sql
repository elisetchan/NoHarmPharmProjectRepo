create table PharmInform2.Pharmacists
(
    PharmEmail varchar(20) not null
        primary key,
    FirstName  varchar(50) null,
    LastName   varchar(50) null,
    CUsername  varchar(20) null,
    Password   varchar(20) null,
    ClinicName varchar(50) null,
    constraint Pharmacists_ibfk_1
        foreign key (ClinicName) references PharmInform2.Clinic (ClinicName)
);

create index ClinicName
    on PharmInform2.Pharmacists (ClinicName);

