create table dbo.Movie(
						MovieId int identity(1,1),
						Title	varchar(50) null,
						Year	int	null,
						RatingId	int null,
						GenreId		int null,
						MovieProductionId int null,
						CastCrewId int null);

create table dbo.Rating(
							RatingId int identity(1,1),
							RatingType	varchar(5));

create table dbo.Person(
							PersonId int identity(1,1),
							FirstName varchar(100) null,
							LastName	varchar(100) null);

create table dbo.PersonRole(
							PersonRoleId int identity(1,1),
							PersonId	int null,
							RoleId		int null);

create table dbo.MovieProduction(
									MovieProductionId int identity(1,1),
									MovieId		int null,
									ProductionId int null);

create table dbo.Production(
									ProductionId int identity(1,1),
									ProductionCompany varchar(100) null);

create table dbo.Genre(
							GenreId int identity(1,1),
							GenreType	varchar(50) null);

create table dbo.CastCrew(
							CastCrewId int identity(1,1),
							MovieId	int null,
							PersonRoleId int null);
