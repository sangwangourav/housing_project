create view Total_price_for_Each_Flat as
	select distinct fn.Flat_Name as Flat_Name, fn.Flat_Address as Flat_Address, 
    cast(substring_index(fn.Avg_Price,'K',1) as float)*cast(substring_index(fo.Sizes,'s',1) as float)+'K' as Total_Price
    from flat_names fn
	join flat_overview fo
    on fn.Flat_Id = fo.Flat_Id;