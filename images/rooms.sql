#rooms
use hotel_booking;
select * from hotelrooms;
#create table rooms(id int primary key auto_increment,room_number varchar(20),availability enum('Available','N/A'));
drop table rooms;
CREATE TABLE rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10) NOT NULL,
    availability varchar(20)
);
INSERT INTO rooms (room_number, availability) VALUES
('101',  '0'),
('102', '0'),
('103',  '0');

select * from rooms;

