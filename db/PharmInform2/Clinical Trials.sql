create table PharmInform2.`Clinical Trials`
(
    CTName       varchar(50) not null
        primary key,
    ClinicName   varchar(50) null,
    CTIndication text        null,
    constraint `Clinical Trials_ibfk_1`
        foreign key (ClinicName) references PharmInform2.Clinic (ClinicName)
);

create index ClinicName
    on PharmInform2.`Clinical Trials` (ClinicName);

