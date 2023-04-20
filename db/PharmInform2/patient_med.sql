create table PharmInform2.patient_med
(
    PUsername  varchar(20) null,
    MName      varchar(50) null,
    Indication text        null,
    constraint patient_med_ibfk_1
        foreign key (PUsername) references PharmInform2.`Layman Patients` (PUsername),
    constraint patient_med_ibfk_2
        foreign key (MName) references PharmInform2.Medications (MName)
);

create index MName
    on PharmInform2.patient_med (MName);

create index PUsername
    on PharmInform2.patient_med (PUsername);

