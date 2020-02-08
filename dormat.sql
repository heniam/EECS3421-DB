select distinct cid,name from yrb_customer where cid in (select cid from ((select club, cid from yrb_member) minus (select club, cid from yrb_purchase group by club, cid)))
