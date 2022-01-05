--USER DETAILS
create table userdetails
(
u_name varchar2(50),
mobileno number(20),
u_password varchar2(50),
u_email varchar2(50),
u_address varchar2(60)
);

drop table userdetails;
desc userdetails;

--PICKUP
create sequence pickseq start with 500 increment by 1 minvalue 500 maxvalue 1000;
create table pickup
(
pickup_id int primary key,
user_id int,
foreign key (user_id) references userdetails(user_id),
cus_name varchar2(40),
cus_email varchar2(50),
cus_contact int,
pick_address varchar2(80)
);
alter table pickup drop column pickup_id;
desc pickup;
select * from pickup;
alter table pickup add center_id int;
commit;
drop table pickup;
alter table pickup add pickup_id int default pickseq.nextval;
alter table pickup add center_id int; 
alter table pickup add constraint fore2 foreign key (center_id) references service_center(center_id);
alter table pickup drop constraint fore2;
delete from pickup;
alter table pickup drop constraint fore2;
alter table pickup drop primary key ;
alter table pickup add primary key(pickup_id);
desc pickup;


--SERVICE CENTER
create sequence servcenseq start with 800 increment by 1 minvalue 800 maxvalue 2000;
alter table service_center add center_id int default servcenseq.nextval;
alter table service_center add primary key(center_id);

create table service_center
(
center_id int primary key,
user_id int,
foreign key(user_id) references userdetails(user_id),
center_name varchar2(50),
c_location varchar2(30),
c_contact int unique,
c_email varchar2(40),
c_address varchar2(70)
);
alter table service_center drop column center_id;
select * from service_center;
drop table service_center;
desc service_center;


--SERVICES
create sequence serseq start with 300 increment by 1 minvalue 300 maxvalue 1000;
alter table services add service_id int default serseq.nextval;
alter table services add primary key(service_id);
create table services
(
service_name varchar2(50),
service_cost int,
service_desc varchar2(100)
);
desc services;
drop table services;


--BILL
create sequence billseq start with 900 increment by 1 minvalue 900 maxvalue 2000;
alter table bill modify bill_num default billseq.nextval;
alter table bill add primary key(bill_num);
create table bill
(
detail_id int,
foreign key(detail_id) references service_details(detail_id),
serv_date date,
amount int
);

alter table bill add amount int;
alter table bill add constraint servid foreign key (service_id) references services(service_id);
alter table bill drop column amount;
drop table bill;
desc bill;

--PAYMENT
create sequence payseq start with 1200 increment by 1 minvalue 1200 maxvalue 3000;
alter table payment modify payment_id default payseq.nextval;
alter table payment add primary key(payment_id);
create table payment
(
bill_num int,
foreign key(bill_num) references bill(bill_num),
card_no int,
cardhol_name varchar2(50),
expiry_date date,
cvv_no int,
amt_paid int
);
desc payment;


--SERVICE DETAILS
create sequence detseq start with 600 increment by 1 minvalue 600 maxvalue 2000;
alter table service_details modify detail_id default pickseq.nextval;
create table service_details
(
detail_id int primary key,
user_id int,
foreign key(user_id) references userdetails(user_id),
service_id int,
foreign key(service_id) references services(service_id)
);
alter table service_details add service_id int;
alter table service_details add constraint serid foreign key (service_id) references services(service_id);
alter table service_details drop column user_id;
alter table service_details drop column service_id;
drop table service_details;
desc service_details;

select * from userdetails;
update userdetails set usertype='invalid' where user_id=162;

desc userdetails;
alter table userdetails modify u_name unique;
select * from pickup;

select * from services;
select service_name,service_cost from services where service_id in (select service_id from service_details where user_id in 246);

select * from service_center;
select * from service_details;

select * from bill;
alter table bill drop column detail_id;
alter table bill modify amount default 0;
select * from payment;
commit;

delete from service_details where service_id=304;
delete from services where service_id=304;

delete from userdetails where user_id=113;
delete from bill where user_id=113;
--(1)delete from service_details where user_id=113;
--(2)delete from pickup where user_id=113;

delete from bill where user_id=181;


commit;

desc pickup;
desc service_center;
desc payment;
desc bill;
commit;
alter table bill add status varchar2(20) default 'processing';