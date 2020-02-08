select club, count(club) as count from yrb_member group by club order by count(club) ASC LIMIT 1
