create table PharmInform2.student_notes
(
    EdUsername varchar(20) null,
    MName      varchar(50) null,
    Notes      mediumtext  null,
    constraint student_notes_ibfk_1
        foreign key (EdUsername) references PharmInform2.`Pharmacy Students` (EdUsername),
    constraint student_notes_ibfk_2
        foreign key (MName) references PharmInform2.Medications (MName)
);

create index EdUsername
    on PharmInform2.student_notes (EdUsername);

create index MName
    on PharmInform2.student_notes (MName);

