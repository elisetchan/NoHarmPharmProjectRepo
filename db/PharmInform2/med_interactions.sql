create table PharmInform2.med_interactions
(
    MName1 varchar(50) null,
    MName2 varchar(50) null,
    constraint med_interactions_ibfk_1
        foreign key (MName1) references PharmInform2.Medications (MName),
    constraint med_interactions_ibfk_2
        foreign key (MName2) references PharmInform2.Medications (MName)
);

create index MName1
    on PharmInform2.med_interactions (MName1);

create index MName2
    on PharmInform2.med_interactions (MName2);

