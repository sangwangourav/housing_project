delimiter //
create trigger total_price
before insert on flat_overview
for each row
set new.Possession_Starts = concat(Possession_Starts,LaunchDate);
delimiter;


