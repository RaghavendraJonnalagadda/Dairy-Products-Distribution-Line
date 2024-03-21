select Client.Cname
from Client,Product_Recieved
where (client.idClient) = Product_Recieved.idClient
group by Client.Cname
having count(CName) = (select count(idProduct)
						from Product);
                        

select * 
from Project_db.Employees
where idEmployees = ( select idEmployees 
						from Project_db.Supervisor S join Project_db.Product P on S.idProduct = P.idProduct
                        where P.idProduct = "Butter_01");
                        
                        
select C.CName,PR.DateRecieved, P.idProduct ,P.MDate
from Project_db.Client C join Project_db.Product_Recieved PR 
on C.idClient = PR.idClient join Project_db.Product P 
on PR.idProduct = P.idProduct
where C.CName = "Heritage";