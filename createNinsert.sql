create table Hotel(Hotel_No char(5),Name varchar(30),City varchar(15),constraint pk_hotel primary key(Hotel_No));
create table Room(Room_No char(5),Hotel_No char(5),Type char,Price decimal(7,2),constraint pk_room primary key(Room_No),constraint fk_room foreign key(Hotel_No) references Hotel(Hotel_No));
create table Guest(Guest_No varchar(5),Name varchar (40),City varchar(20),constraint pk_guest primary key(Guest_No));
create table Booking(Hotel_No char(5),Guest_No varchar(5),Date_From date,Date_To date,Room_NO char(5),constraint fk1_booking foreign key(Hotel_No) references Hotel(Hotel_No),constraint fk2_booking foreign key(Guest_No) references Guest(Guest_No),constraint fk3_booking foreign key(Room_No) references Room(Room_No));




insert into Hotel values('H111','Empire Hotel','New York');
insert into Hotel values('H235','Park Place','New York');
insert into Hotel values('H432','Brownstone Hotel','Toronto');
insert into Hotel values('H498','James Plaza','Toronto');
insert into Hotel values('H193','Devon Hotel','Boston');
insert into Hotel values('H437','Clairmont Hotel','Boston');



insert into Room values(313,'H111','S',145.00);
insert into Room values(412,'H111','N',145.00);
insert into Room values(1267,'H235','N',175.00);
insert into Room values(1289,'H235','N',195.00);
insert into Room values(876,'H432','S',124.00);
insert into Room values(898,'H432','S',124.00);
insert into Room values(345,'H498','N',160.00);
insert into Room values(467,'H498','N',180.00);
insert into Room values(1001,'H193','S',150.00);
insert into Room values(1201,'H193','N',175.00);
insert into Room values(257,'H437','N',140.00);
insert into Room values(223,'H437','N',155.00);


insert into Guest values('G256','Adam Wayne','Pittsburgh');
insert into Guest values('G367','Tara Cummings','Baltimore');
insert into Guest values('G879','Venessa Parry','Pittsburgh');
insert into Guest values('G230','Tom Hancock','Philadelphia');
insert into Guest values('G467','Robert Swift','Atlanta');
insert into Guest values('G190','Edward Cane','Baltimore');



insert into Booking values('H111','G256','10-AUG-99','15-AUG-99',412);
insert into Booking values('H111','G367','18-aug-99','21-aug-99',412);
insert into Booking values('H235','G879','05-sep-99','12-sep-99',1267);
insert into Booking values('H498','G230','15-sep-99','18-sep-99',467);
insert into Booking values('H498','G256','30-nov-99','02-dec-99',345);
insert into Booking values('H498','G467','03-nov-99','05-nov-99',345);
insert into Booking values('H193','G190','15-nov-99','19-nov-99',1001);
insert into Booking values('H193','G367','12-sep-99','14-sep-99',1001);
insert into Booking values('H193','G367','01-oct-99','06-oct-99',1201);
insert into Booking values('H437','G190','04-oct-99','06-oct-99',223);
insert into Booking values('H437','G879','14-sep-99','17-sep-99',223);



