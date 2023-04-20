create table PharmInform2.use_casesDC
(
    DCName      varchar(50) null,
    UseCase     mediumtext  null,
    EdInfo      mediumtext  null,
    Description mediumtext  null,
    constraint use_casesDC_ibfk_1
        foreign key (DCName) references PharmInform2.`Drug Classes` (DCName)
);

create index DCName
    on PharmInform2.use_casesDC (DCName);

