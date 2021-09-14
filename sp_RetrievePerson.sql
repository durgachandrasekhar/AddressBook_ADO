USE [AddressbookDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_RetrievePerson]    Script Date: 12-09-2021 22:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Akash Suchak
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_RetrievePerson]
	@City varchar(25),
	@State varchar(25)
AS
BEGIN
	--UC6
	SELECT FirstName from AddressBook
		Where City = @City OR state = @State
	
	--UC7
	SELECT COUNT(City)as City from AddressBook
	SELECT COUNT(City)as AMD from AddressBook 
		where City = 'AMD'

	SELECT COUNT(State)as State from AddressBook
	SELECT COUNT(State)as DL from AddressBook 
		where State = 'DL'
END