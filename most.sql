select X.name, X.cat , X.price as cost from (select c.name as NAME,c.cid AS CID, b.cat as CAT, sum(o.price) PRICE from yrb_book b, yrb_customer c, yrb_offer o, yrb_purchase p where c.cid = p.cid and o.club=p.club and b.title = o.title and
b.year=o.year and o.title=p.title and o.year=p.year group by c.name, c.cid, b.cat) as X where x.price>= ALL(select sum(oo.price) price from yrb_customer cc, yrb_book bb, yrb_offer oo, yrb_purchase pp where cc.cid=pp.cid and cc.cid=X.cid and bb.title=oo.title
and oo.club=pp.club and bb.year=oo.year and oo.year=pp.year and oo.title=pp.title group by cc.name,bb.cat)
