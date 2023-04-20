create table PharmInform2.use_casesM
(
    MName       varchar(50) null,
    UseCase     mediumtext  null,
    EdInfo      mediumtext  null,
    Description mediumtext  null,
    constraint use_casesM_ibfk_1
        foreign key (MName) references PharmInform2.Medications (MName)
);

create index MName
    on PharmInform2.use_casesM (MName);

