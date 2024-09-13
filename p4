(4).

#11. Show each part names total qty supply.
select p.pname, sum(sp.qty)
from p,sp
where p.pno = sp.pno
group by p.pname;

#12. Show each suppers whose suppler number is less then 's4' give total qty supply by each suppler.
select sno ,sum(sp.qty)
from sp
where sno<"s4" 
group by sno;

#13. Show each suppers whose suppler status is 20 give total qty supply by each suppler.
select s.sno,s.sstatus,sum(sp.qty)
from sp,s
where s.sstatus="20"
and s.sno=sp.sno
group by s.sno;
