create table PharmInform2.student_med
(
    MName      varchar(50) null,
    EdUsername varchar(20) null,
    constraint student_med_ibfk_1
        foreign key (MName) references PharmInform2.Medications (MName),
    constraint student_med_ibfk_2
        foreign key (EdUsername) references PharmInform2.`Pharmacy Students` (EdUsername)
);

create index EdUsername
    on PharmInform2.student_med (EdUsername);

create index MName
    on PharmInform2.student_med (MName);

