create table PharmInform2.`Layman Patients`
(
    PUsername  varchar(20) not null
        primary key,
    Password   varchar(20) null,
    FirstName  varchar(50) null,
    LastName   varchar(50) null,
    DOB        date        null,
    Email      varchar(20) null,
    Phone      varchar(20) null,
    PharmEmail varchar(20) null,
    constraint `Layman Patients_ibfk_1`
        foreign key (PharmEmail) references PharmInform2.Pharmacists (PharmEmail)
);

create index PharmEmail
    on PharmInform2.`Layman Patients` (PharmEmail);

