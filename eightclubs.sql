select title, year from yrb_offer group by title, year having count(1) = 8
