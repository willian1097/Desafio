use master 
create database db_floristeria_fiorella
go 

use db_floristeria_fiorella
go 

truncate table ventas
select 
	sum(v.Aurora) as Aurora, 
	sum(v.Carmes�) as Carmes�, 
	sum(v.Claveles) as Claveles,
	sum(v.Girasoles) as Girasoles,
	sum(v.Globos) as Globos,
	sum(v.Hortensia) as Hortensia,
	sum(v.Lirios) as Lirios,
	sum(v.List�n) as List�n,
	sum(v.Macetas) as Macetas,
	sum(v.Orqu�deas) as Orqu�deas,
	sum(v.Rosas) as Rosas,
	sum(v.Tarjetas)as Tarjetas,
	sum(v.Tierra) as Tierra,
	sum(v.Tulipanes) as Tulipanes
	
from Ventas v where v.Departamento = 'San Salvador'
go

select Patron,COUNT(Patron) as Repeticiones from Ventas v where v.Departamento = 'San Salvador'
  group by Patron order by Repeticiones desc 
select 
	sum(v.Aurora) as Aurora, 
	sum(v.Carmes�) as Carmes�, 
	sum(v.Claveles) as Claveles,
	sum(v.Girasoles) as Girasoles,
	sum(v.Globos) as Globos,
	sum(v.Hortensia) as Hortensia,
	sum(v.Lirios) as Lirios,
	sum(v.List�n) as List�n,
	sum(v.Macetas) as Macetas,
	sum(v.Orqu�deas) as Orqu�deas,
	sum(v.Rosas) as Rosas,
	sum(v.Tarjetas)as Tarjetas,
	sum(v.Tierra) as Tierra,
	sum(v.Tulipanes) as Tulipanes
	
from Ventas v where v.Departamento = 'San Miguel'

go
select  Patron,COUNT(Patron) as Repeticiones from Ventas v where v.Departamento = 'San Salvador' group by Patron order by Repeticiones desc
go