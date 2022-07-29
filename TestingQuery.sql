/*Select Roles.Role_Name, Contracts.Cont_ID, Contracts.Name, WBS.WBS From Roles
INNER JOIN Contracts ON Roles.Cont_ID = Contracts.Cont_ID
INNER JOIN WBS ON WBS.Cont_ID = Contracts.Cont_ID; 

Select WBS.WBS_ID, Roles.Role_ID, Res_ID
From Resources
inner join Roles On Resources.Role_ID = Roles.Role_ID
inner join WBS on Resources.WBS_ID = WBS.WBS_ID;

select Role_ID
from Roles 
where Role_ID Between 10 and 35;*/

Select Cont_ID + ' - ' + Name + ' - ' + Type AS Current_Contract
from Contracts;

Select Cont_ID AS Current_Contract
from Roles;