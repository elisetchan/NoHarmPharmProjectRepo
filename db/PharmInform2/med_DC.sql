create table PharmInform2.med_DC
(
    MName  varchar(50) null,
    DCName varchar(50) null,
    constraint med_DC_ibfk_1
        foreign key (MName) references PharmInform2.Medications (MName),
    constraint med_DC_ibfk_2
        foreign key (DCName) references PharmInform2.`Drug Classes` (DCName)
);

create index DCName
    on PharmInform2.med_DC (DCName);

create index MName
    on PharmInform2.med_DC (MName);

