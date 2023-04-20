create table PharmInform2.samp_prob
(
    MName    varchar(50) null,
    SampProb mediumtext  null,
    constraint samp_prob_ibfk_1
        foreign key (MName) references PharmInform2.Medications (MName)
);

create index MName
    on PharmInform2.samp_prob (MName);

