create table accommodation
(
    id                   bigint           not null auto_increment,
    adult_child_capacity integer          not null,
    cleaning_fee         integer          not null,
    coordinatex          double precision not null,
    coordinatey          double precision not null,
    fee_per_one_night    integer          not null,
    img_url              varchar(255),
    infant_capacity      integer          not null,
    name                 varchar(255),
    discount_policy_id   bigint,
    primary key (id)
) engine=InnoDB;

create table discount_policy
(
    id            bigint           not null auto_increment,
    discount_rate double precision not null,
    primary key (id)
) engine=InnoDB;

create table member
(
    id            bigint not null auto_increment,
    name          varchar(255),
    refresh_token varchar(255),
    primary key (id)
) engine=InnoDB;

create table reservation
(
    id                     bigint  not null auto_increment,
    checkin_date           date,
    checkout_date          date,
    cleaning_fee           integer not null,
    discount_amount        integer not null,
    fee_per_one_night      integer not null,
    service_commission_fee integer not null,
    tax                    integer not null,
    accommodation_id       bigint,
    member_id              bigint,
    primary key (id)
) engine=InnoDB;

alter table accommodation
    add constraint FKtn616ty4ayfbxrkdo5614btyd
        foreign key (discount_policy_id)
            references discount_policy (id);

alter table reservation
    add constraint FKoa1arn2i6kipar0jakkwtsjip
        foreign key (accommodation_id)
            references accommodation (id);

alter table reservation
    add constraint FK68999qe28ym9eqqlowybh9nvn
        foreign key (member_id)
            references member (id);
