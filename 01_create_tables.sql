(1)create table ceo(CEO_ID number (3) primary key, ceo_name varchar2(50), phone_no number(14), email varchar2 (30))

describe CEO  


(2)create table organize (L_ID number (3) primary key, L_Name varchar2 (50), Season varchar2(20), L_Rules varchar2 (100), S_Date date, E_Date date, CEO_ID 
number (3))

alter table organize add constraint lid foreign key (L_ID) references league (L_ID)

alter table organize add constraint cid foreign key (CEO_ID) references ceo (CEO_ID)


describe  organize


(3)create table Team (T_ID number(3) primary key, T_Name varchar2(50), logo varchar2(100))

describe Team  



(4)create table Player (P_ID number(3) primary key,P_Name varchar2(50), Age number(3), P_Position varchar2 (30), Statistics varchar2(100))

describe Player



(5)create table associate (T_ID number(3),P_ID number (3), primary key(T_ID,P_ID))

alter table associates add constraint pla foreign key (P_ID) references player (P_ID)

alter table associates add constraint tei foreign key (T_ID) references team (T_ID)

describe associates



(6)create table coach (C_ID number(3) primary key, C_Name varchar2(50), Salary number(10),C_Position varchar2(30))

describe coach



(7)create table supervise (C_ID number(3) primary key, T_ID number(3))

alter table supervise add constraint Te foreign key (T_ID) references Team(T_ID)

describe supervise



(8)
create table Schedule ( S_NO number (3) primary key ,M_Date date, M_Time varchar2(10), Venu varchar2(100), VS varchar2(100), M_ID number (3), CEO_ID number (3))

alter table Schedule add constraint ceo foreign key (CEO_ID) references ceo (CEO_ID)


alter table Schedule add constraint mid  foreign key (M_ID) references match_info (M_ID)

describe schedule


(9)create table match_info (M_ID number (3) primary key , M_Date date, M_Time varchar2(10) , Venu varchar2(100))

describe match_info


(10)create table participate ( T_ID number (3), primary key(M_ID,T_ID), M_ID number (3),PT_Name varchar2(50))

alter table participate add constraint ti foreign key (T_ID) references Team (T_ID)


alter table participate add constraint mai foreign key (M_ID) references Match_Info (M_ID)

describe participate



(11)create table match_official (MOF_ID number (3) primary key, MOF_Name varchar2(50))

describe match_official


(12)create table maintain (MOF_ID number (3) primary key, M_ID number (10),O_Rules varchar2(100))

alter table maintain add constraint mi foreign key (M_ID) references match_info (M_ID)

describe maintain


(13)create table hire (C_ID number (3) primary key , C_Name varchar2(50), salary number (10), C_Position varchar2(30) ,H_date date, CEO_ID number (3))

alter table hire add constraint ce foreign key (CEO_ID) references ceo
(CEO_ID)

describe hire


(14)describe assemble

create table assemble ( L_ID number (3),T_ID number (3) primary key)

alter table assemble add constraint Li foreign key (L_ID) references league (L_ID)


(15)CREATE TABLE league (l_id NUMBER(3) PRIMARY KEY, l_name VARCHAR2(50), season VARCHAR2(50), l_rules VARCHAR2(50), s_date DATE, e_date DATE)

describe league