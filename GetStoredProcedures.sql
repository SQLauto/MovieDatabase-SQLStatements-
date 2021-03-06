USE [Minnesota Lottery]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetGame]    Script Date: 5/28/2015 5:30:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Anthony Ernst
-- Create date: 05.12.2015
-- Description:	This procedure gets specific Game or gameCollection
-- =============================================
ALTER PROCEDURE [dbo].[usp_GetGame](
									@GameId int = null,
									@Name varchar(50) = null,
									@QueryId int = null)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if (@QueryId = 10) begin goto GET_ITEM end;
	if (@QueryId = 20) begin goto GET_COLLECTION end;

	goto EXIT_SECTION;

GET_ITEM:
begin
		select		a.GameId,
					a.Name,
					a.Multiplier,
					a.NumbersDrawn,
					a.Description

					from dbo.Game a
					where @GameId = a.GameId


goto EXIT_SECTION; 
end

GET_COLLECTION:
begin
		select		a.GameId,
					a.Name,
					a.Multiplier,
					a.NumbersDrawn,
					a.Description

					from dbo.Game a

goto EXIT_SECTION;
end

EXIT_SECTION:
END

