USE [Tables]
GO
/****** Object:  UserDefinedFunction [dbo].[GetCategoryCount]    Script Date: 5/15/2025 12:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetCategoryCount]()
RETURNS INT
AS
BEGIN
    DECLARE @CategoryCount INT;

    SELECT @CategoryCount = COUNT(*) FROM Categories;

    RETURN @CategoryCount;
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetCustomerCount]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetCustomerCount]()
RETURNS INT
AS
BEGIN
    DECLARE @CustomerCount INT;

    SELECT @CustomerCount = COUNT(*) FROM Customers;

    RETURN @CustomerCount;
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmployeeCount]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetEmployeeCount]()
RETURNS INT
AS
BEGIN
    DECLARE @EmployeeCount INT;

    SELECT @EmployeeCount = COUNT(*) FROM Employees;

    RETURN @EmployeeCount;
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetOrderCount]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetOrderCount]()
RETURNS INT
AS
BEGIN
    DECLARE @OrderCount INT;

    SELECT @OrderCount = COUNT(*) FROM Orders;

    RETURN @OrderCount;
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetOrderDetailsCount]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetOrderDetailsCount]()
RETURNS INT
AS
BEGIN
    DECLARE @OrderDetailsCount INT;

    SELECT @OrderDetailsCount = COUNT(*) FROM OrderDetails;

    RETURN @OrderDetailsCount;
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetProductCount]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetProductCount]()
RETURNS INT
AS
BEGIN
    DECLARE @ProductCount INT;

    SELECT @ProductCount = COUNT(*) FROM Products;

    RETURN @ProductCount;
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetShipperCount]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetShipperCount]()
RETURNS INT
AS
BEGIN
    DECLARE @ShipperCount INT;

    SELECT @ShipperCount = COUNT(*) FROM Shippers;

    RETURN @ShipperCount;
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSupplierCount]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetSupplierCount]()
RETURNS INT
AS
BEGIN
    DECLARE @SupplierCount INT;

    SELECT @SupplierCount = COUNT(*) FROM Suppliers;

    RETURN @SupplierCount;
END
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [varchar](80) NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwCategories]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[vwCategories]
AS
select *from Categories
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [varchar](100) NULL,
	[ContactName] [varchar](80) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[PostalCode] [varchar](100) NULL,
	[Country] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VwCustomer]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[VwCustomer]
AS
select *from Customer
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] NOT NULL,
	[LastName] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[BirthDate] [varchar](80) NULL,
	[Photo] [varchar](50) NULL,
	[Notes] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwEmployees]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[vwEmployees]
AS
select *from Employees
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwOrderDetails]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[vwOrderDetails]
AS
select *from OrderDetails
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[EmployeeID] [int] NULL,
	[OrderDate] [varchar](50) NULL,
	[ShipperID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwOrders]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[vwOrders]
AS
select *from Orders
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] NOT NULL,
	[ProductName] [varchar](100) NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[Unit] [varchar](80) NULL,
	[Price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwProducts]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[vwProducts]
AS
select *from Products
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[ShipperID] [int] NOT NULL,
	[ShipperName] [varchar](100) NULL,
	[Phone] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwShippers]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[vwShippers]
AS
select *from Shippers
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] NOT NULL,
	[SupplierName] [varchar](100) NULL,
	[ContactName] [varchar](100) NULL,
	[Address] [varchar](80) NULL,
	[City] [varchar](50) NULL,
	[PostalCode] [varchar](100) NULL,
	[Country] [varchar](50) NULL,
	[Phone] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwSuppliers]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[vwSuppliers]
AS
select *from Suppliers
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Beverages', N'Soft drinks, coffees, teas, beers, and ales')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Condiments', N'Sweet and savory sauces, relishes, spreads, and seasonings')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Confections', N'Desserts, candies, and sweet breads')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (4, N'Dairy Products', N'Cheeses')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (5, N'Grains/Cereals', N'Breads, crackers, pasta, and cereal')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (6, N'Meat/Poultry', N'Prepared meats')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (7, N'Produce', N'Dried fruit and bean curd ')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (8, N'Seafood', N'Seaweed and fish ')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (1, N'Alfreds Futterkiste', N'Maria Anders', N'Obere Str. 57', N'Berlin', N'12209', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (2, N'Ana Trujillo Emparedados y helados', N'Ana Trujillo', N'Avda. de la Constitución 2222', N'México D.F.', N'05021', N'Mexico')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (3, N'Antonio Moreno Taquería', N'Antonio Moreno', N'Mataderos 2312', N'México D.F.', N'05023', N'Mexico')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (4, N'Around the Horn', N'Thomas Hardy', N'120 Hanover Sq.', N'London', N'WA1 1DP', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (5, N'Berglunds snabbköp', N'Christina Berglund', N'Berguvsvägen 8', N'Luleå', N'S-958 22', N'Sweden')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (6, N'Blauer See Delikatessen', N'Hanna Moos', N'Forsterstr. 57', N'Mannheim', N'68306', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (7, N'Blondel père et fils', N'Frédérique Citeaux', N'24, place Kléber', N'Strasbourg', N'67000', N'France')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (8, N'Bólido Comidas preparadas', N'Martín Sommer', N'C/ Araquil, 67', N'Madrid', N'28023', N'Spain')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (9, N'Bon app''', N'Laurence Lebihans', N'12, rue des Bouchers', N'Marseille', N'13008', N'France')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (10, N'Bottom-Dollar Marketse', N'Elizabeth Lincoln', N'23 Tsawassen Blvd.', N'Tsawassen', N'T2F 8M4', N'Canada')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (11, N'B''s Beverages', N'Victoria Ashworth', N'Fauntleroy Circus', N'London', N'EC2 5NT', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (12, N'Cactus Comidas para llevar', N'Patricio Simpson', N'Cerrito 333', N'Buenos Aires', N'1010', N'Argentina')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (13, N'Centro comercial Moctezuma', N'Francisco Chang', N'Sierras de Granada 9993', N'México D.F.', N'05022', N'Mexico')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (14, N'Chop-suey Chinese', N'Yang Wang', N'Hauptstr. 29', N'Bern', N'3012', N'Switzerland')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (15, N'Comércio Mineiro', N'Pedro Afonso', N'Av. dos Lusíadas, 23', N'São Paulo', N'05432-043', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (16, N'Consolidated Holdings', N'Elizabeth Brown', N'Berkeley Gardens 12 Brewery', N'London', N'WX1 6LT', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (17, N'Drachenblut Delikatessend', N'Sven Ottlieb', N'Walserweg 21', N'Aachen', N'52066', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (18, N'Du monde entier', N'Janine Labrune', N'67, rue des Cinquante Otages', N'Nantes', N'44000', N'France')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (19, N'Eastern Connection', N'Ann Devon', N'35 King George', N'London', N'WX3 6FW', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (20, N'Ernst Handel', N'Roland Mendel', N'Kirchgasse 6', N'Graz', N'8010', N'Austria')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (21, N'Familia Arquibaldo', N'Aria Cruz', N'Rua Orós, 92', N'São Paulo', N'05442-030', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (22, N'FISSA Fabrica Inter. Salchichas S.A.', N'Diego Roel', N'C/ Moralzarzal, 86', N'Madrid', N'28034', N'Spain')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (23, N'Folies gourmandes', N'Martine Rancé', N'184, chaussée de Tournai', N'Lille', N'59000', N'France')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (24, N'Folk och fä HB', N'Maria Larsson', N'Åkergatan 24', N'Bräcke', N'S-844 67', N'Sweden')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (25, N'Frankenversand', N'Peter Franken', N'Berliner Platz 43', N'München', N'80805', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (26, N'France restauration', N'Carine Schmitt', N'54, rue Royale', N'Nantes', N'44000', N'France')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (27, N'Franchi S.p.A.', N'Paolo Accorti', N'Via Monte Bianco 34', N'Torino', N'10100', N'Italy')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (28, N'Furia Bacalhau e Frutos do Mar', N'Lino Rodriguez', N'Jardim das rosas n. 32', N'Lisboa', N'1675', N'Portugal')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (29, N'Galería del gastrónomo', N'Eduardo Saavedra', N'Rambla de Cataluña, 23', N'Barcelona', N'08022', N'Spain')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (30, N'Godos Cocina Típica', N'José Pedro Freyre', N'C/ Romero, 33', N'Sevilla', N'41101', N'Spain')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (31, N'Gourmet Lanchonetes', N'André Fonseca', N'Av. Brasil, 442', N'Campinas', N'04876-786', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (32, N'Great Lakes Food Market', N'Howard Snyder', N'2732 Baker Blvd.', N'Eugene', N'97403', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (33, N'GROSELLA-Restaurante', N'Manuel Pereira', N'5ª Ave. Los Palos Grandes', N'Caracas', N'1081', N'Venezuela')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (34, N'Hanari Carnes', N'Mario Pontes', N'Rua do Paço, 67', N'Rio de Janeiro', N'05454-876', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (35, N'HILARIÓN-Abastos', N'Carlos Hernández', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'5022', N'Venezuela')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (36, N'Hungry Coyote Import Store', N'Yoshi Latimer', N'City Center Plaza 516 Main St.', N'Elgin', N'97827', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (37, N'Hungry Owl All-Night Grocers', N'Patricia McKenna', N'8 Johnstown Road', N'Cork', N'', N'Ireland')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (38, N'Island Trading', N'Helen Bennett', N'Garden House Crowther Way', N'Cowes', N'PO31 7PJ', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (39, N'Königlich Essen', N'Philip Cramer', N'Maubelstr. 90', N'Brandenburg', N'14776', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (40, N'La corne d''abondance', N'Daniel Tonini', N'67, avenue de l''Europe', N'Versailles', N'78000', N'France')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (41, N'La maison d''Asie', N'Annette Roulet', N'1 rue Alsace-Lorraine', N'Toulouse', N'31000', N'France')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (42, N'Laughing Bacchus Wine Cellars', N'Yoshi Tannamuri', N'1900 Oak St.', N'Vancouver', N'V3F 2K1', N'Canada')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (43, N'Lazy K Kountry Store', N'John Steel', N'12 Orchestra Terrace', N'Walla Walla', N'99362', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (44, N'Lehmanns Marktstand', N'Renate Messner', N'Magazinweg 7', N'Frankfurt a.M.', N'60528', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (45, N'Let''s Stop N Shop', N'Jaime Yorres', N'87 Polk St. Suite 5', N'San Francisco', N'94117', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (46, N'LILA-Supermercado', N'Carlos González', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'3508', N'Venezuela')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (47, N'LINO-Delicateses', N'Felipe Izquierdo', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'4980', N'Venezuela')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (48, N'Lonesome Pine Restaurant', N'Fran Wilson', N'89 Chiaroscuro Rd.', N'Portland', N'97219', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (49, N'Magazzini Alimentari Riuniti', N'Giovanni Rovelli', N'Via Ludovico il Moro 22', N'Bergamo', N'24100', N'Italy')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (50, N'Maison Dewey', N'Catherine Dewey', N'Rue Joseph-Bens 532', N'Bruxelles', N'B-1180', N'Belgium')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (51, N'Mère Paillarde', N'Jean Fresnière', N'43 rue St. Laurent', N'Montréal', N'H1J 1C3', N'Canada')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (52, N'Morgenstern Gesundkost', N'Alexander Feuer', N'Heerstr. 22', N'Leipzig', N'04179', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (53, N'North/South', N'Simon Crowther', N'South House 300 Queensbridge', N'London', N'SW7 1RZ', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (54, N'Océano Atlántico Ltda.', N'Yvonne Moncada', N'Ing. Gustavo Moncada 8585 Piso 20-A', N'Buenos Aires', N'1010', N'Argentina')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (55, N'Old World Delicatessen', N'Rene Phillips', N'2743 Bering St.', N'Anchorage', N'99508', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (56, N'Ottilies Käseladen', N'Henriette Pfalzheim', N'Mehrheimerstr. 369', N'Köln', N'50739', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (57, N'Paris spécialités', N'Marie Bertrand', N'265, boulevard Charonne', N'Paris', N'75012', N'France')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (58, N'Pericles Comidas clásicas', N'Guillermo Fernández', N'Calle Dr. Jorge Cash 321', N'México D.F.', N'05033', N'Mexico')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (59, N'Piccolo und mehr', N'Georg Pipps', N'Geislweg 14', N'Salzburg', N'5020', N'Austria')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (60, N'Princesa Isabel Vinhoss', N'Isabel de Castro', N'Estrada da saúde n. 58', N'Lisboa', N'1756', N'Portugal')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (61, N'Que Delícia', N'Bernardo Batista', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'02389-673', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (62, N'Queen Cozinha', N'Lúcia Carvalho', N'Alameda dos Canàrios, 891', N'São Paulo', N'05487-020', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (63, N'QUICK-Stop', N'Horst Kloss', N'Taucherstraße 10', N'Cunewalde', N'01307', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (64, N'Rancho grande', N'Sergio Gutiérrez', N'Av. del Libertador 900', N'Buenos Aires', N'1010', N'Argentina')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (65, N'Rattlesnake Canyon Grocery', N'Paula Wilson', N'2817 Milton Dr.', N'Albuquerque', N'87110', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (66, N'Reggiani Caseifici', N'Maurizio Moroni', N'Strada Provinciale 124', N'Reggio Emilia', N'42100', N'Italy')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (67, N'Ricardo Adocicados', N'Janete Limeira', N'Av. Copacabana, 267', N'Rio de Janeiro', N'02389-890', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (68, N'Richter Supermarkt', N'Michael Holz', N'Grenzacherweg 237', N'Genève', N'1203', N'Switzerland')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (69, N'Romero y tomillo', N'Alejandra Camino', N'Gran Vía, 1', N'Madrid', N'28001', N'Spain')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (70, N'Santé Gourmet', N'Jonas Bergulfsen', N'Erling Skakkes gate 78', N'Stavern', N'4110', N'Norway')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (71, N'Save-a-lot Markets', N'Jose Pavarotti', N'187 Suffolk Ln.', N'Boise', N'83720', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (72, N'Seven Seas Imports', N'Hari Kumar', N'90 Wadhurst Rd.', N'London', N'OX15 4NB', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (73, N'Simons bistro', N'Jytte Petersen', N'Vinbæltet 34', N'København', N'1734', N'Denmark')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (74, N'Spécialités du monde', N'Dominique Perrier', N'25, rue Lauriston', N'Paris', N'75016', N'France')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (75, N'Split Rail Beer & Ale', N'Art Braunschweiger', N'P.O. Box 555', N'Lander', N'82520', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (76, N'Suprêmes délices', N'Pascale Cartrain', N'Boulevard Tirou, 255', N'Charleroi', N'B-6000', N'Belgium')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (77, N'The Big Cheese', N'Liz Nixon', N'89 Jefferson Way Suite 2', N'Portland', N'97201', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (78, N'The Cracker Box', N'Liu Wong', N'55 Grizzly Peak Rd.', N'Butte', N'59801', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (79, N'Toms Spezialitäten', N'Karin Josephs', N'Luisenstr. 48', N'Münster', N'44087', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (80, N'Tortuga Restaurante', N'Miguel Angel Paolino', N'Avda. Azteca 123', N'México D.F.', N'05033', N'Mexico')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (81, N'Tradição Hipermercados', N'Anabela Domingues', N'Av. Inês de Castro, 414', N'São Paulo', N'05634-030', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (82, N'Trail''s Head Gourmet Provisioners', N'Helvetius Nagy', N'722 DaVinci Blvd.', N'Kirkland', N'98034', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (83, N'Vaffeljernet', N'Palle Ibsen', N'Smagsløget 45', N'Århus', N'8200', N'Denmark')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (84, N'Victuailles en stock', N'Mary Saveley', N'2, rue du Commerce', N'Lyon', N'69004', N'France')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (85, N'Vins et alcools Chevalier', N'Paul Henriot', N'59 rue de l''Abbaye', N'Reims', N'51100', N'France')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (86, N'Die Wandernde Kuh', N'Rita Müller', N'Adenauerallee 900', N'Stuttgart', N'70563', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (87, N'Wartian Herkku', N'Pirkko Koskitalo', N'Torikatu 38', N'Oulu', N'90110', N'Finland')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (88, N'Wellington Importadora', N'Paula Parente', N'Rua do Mercado, 12', N'Resende', N'08737-363', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (89, N'White Clover Markets', N'Karl Jablonski', N'305 - 14th Ave. S. Suite 3B', N'Seattle', N'98128', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (90, N'Wilman Kala', N'Matti Karttunen', N'Keskuskatu 45', N'Helsinki', N'21240', N'Finland')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (91, N'Wolski', N'Zbyszek', N'ul. Filtrowa 68', N'Walla', N'01-012', N'Poland')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (1, N'Davolio', N'Nancy', N'1968-12-08', N'EmpID1.pic', N'Education includes a BA in psychology from Colorado State University. She also completed (''The Art of the Cold Call''). Nancy is a member of ''Toastmasters International''.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (2, N'Fuller', N'Andrew', N'1952-02-19', N'EmpID2.pic', N'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (3, N'Leverling', N'Janet', N'1963-08-30', N'EmpID3.pic', N'Janet has a BS degree in chemistry from Boston College. She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (4, N'Peacock', N'Margaret', N'1958-09-19', N'EmpID4.pic', N'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (5, N'Buchanan', N'Steven', N'1955-03-04', N'EmpID5.pic', N'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses ''Successful Telemarketing'' and ''International Sales Management''. He is fluent in French.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (6, N'Suyama', N'Michael', N'1963-07-02', N'EmpID6.pic', N'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses ''Multi-Cultural Selling'' and ''Time Management for the Sales Professional''. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (7, N'King', N'Robert', N'1960-05-29', N'EmpID7.pic', N'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled ''Selling in Europe'', he was transferred to the London office.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (8, N'Callahan', N'Laura', N'1958-01-09', N'EmpID8.pic', N'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (9, N'Dodsworth', N'Anne', N'1969-07-02', N'EmpID9.pic', N'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.')
GO
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (10, N'West', N'Adam', N'1928-09-19', N'EmpID10.pic', N'An old chum')
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (1, 10248, 11, 12)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (2, 10248, 42, 10)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (3, 10248, 72, 5)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (4, 10249, 14, 9)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (5, 10249, 51, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (6, 10250, 41, 10)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (7, 10250, 51, 35)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (8, 10250, 65, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (9, 10251, 22, 6)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (10, 10251, 57, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (11, 10251, 65, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (12, 10252, 20, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (13, 10252, 33, 25)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (14, 10252, 60, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (15, 10253, 31, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (16, 10253, 39, 42)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (17, 10253, 49, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (18, 10254, 24, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (19, 10254, 55, 21)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (20, 10254, 74, 21)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (21, 10255, 2, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (22, 10255, 16, 35)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (23, 10255, 36, 25)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (24, 10255, 59, 30)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (25, 10256, 53, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (26, 10256, 77, 12)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (27, 10257, 27, 25)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (28, 10257, 39, 6)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (29, 10257, 77, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (30, 10258, 2, 50)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (31, 10258, 5, 65)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (32, 10258, 32, 6)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (33, 10259, 21, 10)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (34, 10259, 37, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (35, 10260, 41, 16)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (36, 10260, 57, 50)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (37, 10260, 62, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (38, 10260, 70, 21)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (39, 10261, 21, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (40, 10261, 35, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (41, 10262, 5, 12)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (42, 10262, 7, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (43, 10262, 56, 2)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (44, 10263, 16, 60)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (45, 10263, 24, 28)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (46, 10263, 30, 60)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (47, 10263, 74, 36)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (48, 10264, 2, 35)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (49, 10264, 41, 25)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (50, 10265, 17, 30)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (51, 10265, 70, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (52, 10266, 12, 12)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (53, 10267, 40, 50)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (54, 10267, 59, 70)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (55, 10267, 76, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (56, 10268, 29, 10)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (57, 10268, 72, 4)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (58, 10269, 33, 60)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (59, 10269, 72, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (60, 10270, 36, 30)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (61, 10270, 43, 25)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (62, 10271, 33, 24)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (63, 10272, 20, 6)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (64, 10272, 31, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (65, 10272, 72, 24)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (66, 10273, 10, 24)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (67, 10273, 31, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (68, 10273, 33, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (69, 10273, 40, 60)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (70, 10273, 76, 33)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (71, 10274, 71, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (72, 10274, 72, 7)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (73, 10275, 24, 12)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (74, 10275, 59, 6)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (75, 10276, 10, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (76, 10276, 13, 10)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (77, 10277, 28, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (78, 10277, 62, 12)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (79, 10278, 44, 16)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (80, 10278, 59, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (81, 10278, 63, 8)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (82, 10278, 73, 25)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (83, 10279, 17, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (84, 10280, 24, 12)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (85, 10280, 55, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (86, 10280, 75, 30)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (87, 10281, 19, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (88, 10281, 24, 6)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (89, 10281, 35, 4)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (90, 10282, 30, 6)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (91, 10282, 57, 2)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (92, 10283, 15, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (93, 10283, 19, 18)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (94, 10283, 60, 35)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (95, 10283, 72, 3)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (96, 10284, 27, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (97, 10284, 44, 21)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (98, 10284, 60, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (99, 10284, 67, 5)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (100, 10285, 1, 45)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (101, 10285, 40, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (102, 10285, 53, 36)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (103, 10286, 35, 100)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (104, 10286, 62, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (105, 10287, 16, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (106, 10287, 34, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (107, 10287, 46, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (108, 10288, 54, 10)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (109, 10288, 68, 3)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (110, 10289, 3, 30)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (111, 10289, 64, 9)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (112, 10290, 5, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (113, 10290, 29, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (114, 10290, 49, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (115, 10290, 77, 10)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (116, 10291, 13, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (117, 10291, 44, 24)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (118, 10291, 51, 2)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (119, 10292, 20, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (120, 10293, 18, 12)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (121, 10293, 24, 10)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (122, 10293, 63, 5)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (123, 10293, 75, 6)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (124, 10294, 1, 18)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (125, 10294, 17, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (126, 10294, 43, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (127, 10294, 60, 21)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (128, 10294, 75, 6)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (129, 10295, 56, 4)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (130, 10296, 11, 12)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (131, 10296, 16, 30)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (132, 10296, 69, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (133, 10297, 39, 60)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (134, 10297, 72, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (135, 10298, 2, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (136, 10298, 36, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (137, 10298, 59, 30)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (138, 10298, 62, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (139, 10299, 19, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (140, 10299, 70, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (141, 10300, 66, 30)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (142, 10300, 68, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (143, 10301, 40, 10)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (144, 10301, 56, 20)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (145, 10302, 17, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (146, 10302, 28, 28)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (147, 10302, 43, 12)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (148, 10303, 40, 40)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (149, 10303, 65, 30)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (150, 10303, 68, 15)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (151, 10304, 49, 30)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (152, 10304, 59, 10)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (153, 10304, 71, 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10248, 90, 5, N'1996-07-04', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10249, 81, 6, N'1996-07-05', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10250, 34, 4, N'1996-07-08', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10251, 84, 3, N'1996-07-08', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10252, 76, 4, N'1996-07-09', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10253, 34, 3, N'1996-07-10', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10254, 14, 5, N'1996-07-11', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10255, 68, 9, N'1996-07-12', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10256, 88, 3, N'1996-07-15', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10257, 35, 4, N'1996-07-16', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10258, 20, 1, N'1996-07-17', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10259, 13, 4, N'1996-07-18', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10260, 55, 4, N'1996-07-19', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10261, 61, 4, N'1996-07-19', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10262, 65, 8, N'1996-07-22', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10263, 20, 9, N'1996-07-23', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10264, 24, 6, N'1996-07-24', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10265, 7, 2, N'1996-07-25', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10266, 87, 3, N'1996-07-26', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10267, 25, 4, N'1996-07-29', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10268, 33, 8, N'1996-07-30', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10269, 89, 5, N'1996-07-31', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10270, 87, 1, N'1996-08-01', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10271, 75, 6, N'1996-08-01', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10272, 65, 6, N'1996-08-02', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10273, 63, 3, N'1996-08-05', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10274, 85, 6, N'1996-08-06', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10275, 49, 1, N'1996-08-07', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10276, 80, 8, N'1996-08-08', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10277, 52, 2, N'1996-08-09', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10278, 5, 8, N'1996-08-12', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10279, 44, 8, N'1996-08-13', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10280, 5, 2, N'1996-08-14', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10281, 69, 4, N'1996-08-14', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10282, 69, 4, N'1996-08-15', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10283, 46, 3, N'1996-08-16', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10284, 44, 4, N'1996-08-19', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10285, 63, 1, N'1996-08-20', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10286, 63, 8, N'1996-08-21', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10287, 67, 8, N'1996-08-22', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10288, 66, 4, N'1996-08-23', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10289, 11, 7, N'1996-08-26', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10290, 15, 8, N'1996-08-27', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10291, 61, 6, N'1996-08-27', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10292, 81, 1, N'1996-08-28', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10293, 80, 1, N'1996-08-29', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10294, 65, 4, N'1996-08-30', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10295, 85, 2, N'1996-09-02', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10296, 46, 6, N'1996-09-03', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10297, 7, 5, N'1996-09-04', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10298, 37, 6, N'1996-09-05', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10299, 67, 4, N'1996-09-06', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10300, 49, 2, N'1996-09-09', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10301, 86, 8, N'1996-09-09', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10302, 76, 4, N'1996-09-10', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10303, 30, 7, N'1996-09-11', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10304, 80, 1, N'1996-09-12', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10305, 55, 8, N'1996-09-13', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10306, 69, 1, N'1996-09-16', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10307, 48, 2, N'1996-09-17', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10308, 2, 7, N'1996-09-18', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10309, 37, 3, N'1996-09-19', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10310, 77, 8, N'1996-09-20', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10311, 18, 1, N'1996-09-20', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10312, 86, 2, N'1996-09-23', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10313, 63, 2, N'1996-09-24', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10314, 65, 1, N'1996-09-25', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10315, 38, 4, N'1996-09-26', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10316, 65, 1, N'1996-09-27', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10317, 48, 6, N'1996-09-30', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10318, 38, 8, N'1996-10-01', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10319, 80, 7, N'1996-10-02', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10320, 87, 5, N'1996-10-03', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10321, 38, 3, N'1996-10-03', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10322, 58, 7, N'1996-10-04', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10323, 39, 4, N'1996-10-07', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10324, 71, 9, N'1996-10-08', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10325, 39, 1, N'1996-10-09', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10326, 8, 4, N'1996-10-10', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10327, 24, 2, N'1996-10-11', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10328, 28, 4, N'1996-10-14', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10329, 75, 4, N'1996-10-15', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10330, 46, 3, N'1996-10-16', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10331, 9, 9, N'1996-10-16', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10332, 51, 3, N'1996-10-17', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10333, 87, 5, N'1996-10-18', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10334, 84, 8, N'1996-10-21', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10335, 37, 7, N'1996-10-22', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10336, 60, 7, N'1996-10-23', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10337, 25, 4, N'1996-10-24', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10338, 55, 4, N'1996-10-25', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10339, 51, 2, N'1996-10-28', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10340, 9, 1, N'1996-10-29', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10341, 73, 7, N'1996-10-29', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10342, 25, 4, N'1996-10-30', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10343, 44, 4, N'1996-10-31', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10344, 89, 4, N'1996-11-01', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10345, 63, 2, N'1996-11-04', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10346, 65, 3, N'1996-11-05', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10347, 21, 4, N'1996-11-06', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10348, 86, 4, N'1996-11-07', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10349, 75, 7, N'1996-11-08', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10350, 41, 6, N'1996-11-11', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10351, 20, 1, N'1996-11-11', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10352, 28, 3, N'1996-11-12', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10353, 59, 7, N'1996-11-13', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10354, 58, 8, N'1996-11-14', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10355, 4, 6, N'1996-11-15', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10356, 86, 6, N'1996-11-18', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10357, 46, 1, N'1996-11-19', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10358, 41, 5, N'1996-11-20', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10359, 72, 5, N'1996-11-21', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10360, 7, 4, N'1996-11-22', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10361, 63, 1, N'1996-11-22', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10362, 9, 3, N'1996-11-25', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10363, 17, 4, N'1996-11-26', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10364, 19, 1, N'1996-11-26', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10365, 3, 3, N'1996-11-27', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10366, 29, 8, N'1996-11-28', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10367, 83, 7, N'1996-11-28', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10368, 20, 2, N'1996-11-29', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10369, 75, 8, N'1996-12-02', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10370, 14, 6, N'1996-12-03', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10371, 41, 1, N'1996-12-03', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10372, 62, 5, N'1996-12-04', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10373, 37, 4, N'1996-12-05', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10374, 91, 1, N'1996-12-05', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10375, 36, 3, N'1996-12-06', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10376, 51, 1, N'1996-12-09', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10377, 72, 1, N'1996-12-09', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10378, 24, 5, N'1996-12-10', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10379, 61, 2, N'1996-12-11', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10380, 37, 8, N'1996-12-12', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10381, 46, 3, N'1996-12-12', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10382, 20, 4, N'1996-12-13', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10383, 4, 8, N'1996-12-16', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10384, 5, 3, N'1996-12-16', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10385, 75, 1, N'1996-12-17', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10386, 21, 9, N'1996-12-18', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10387, 70, 1, N'1996-12-18', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10388, 72, 2, N'1996-12-19', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10389, 10, 4, N'1996-12-20', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10390, 20, 6, N'1996-12-23', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10391, 17, 3, N'1996-12-23', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10392, 59, 2, N'1996-12-24', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10393, 71, 1, N'1996-12-25', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10394, 36, 1, N'1996-12-25', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10395, 35, 6, N'1996-12-26', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10396, 25, 1, N'1996-12-27', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10397, 60, 5, N'1996-12-27', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10398, 71, 2, N'1996-12-30', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10399, 83, 8, N'1996-12-31', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10400, 19, 1, N'1997-01-01', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10401, 65, 1, N'1997-01-01', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10402, 20, 8, N'1997-01-02', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10403, 20, 4, N'1997-01-03', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10404, 49, 2, N'1997-01-03', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10405, 47, 1, N'1997-01-06', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10406, 62, 7, N'1997-01-07', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10407, 56, 2, N'1997-01-07', 2)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10408, 23, 8, N'1997-01-08', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10409, 54, 3, N'1997-01-09', 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10410, 10, 3, N'1997-01-10', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10411, 10, 9, N'1997-01-10', 3)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10412, 87, 8, N'1997-01-13', 2)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (1, N'Chais', 1, 1, N'10 boxes x 20 bags', 18)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (2, N'Chang', 1, 1, N'24 - 12 oz bottles', 19)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (3, N'Aniseed Syrup', 1, 2, N'12 - 550 ml bottles', 10)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (4, N'Chef Anton''s Cajun Seasoning', 2, 2, N'48 - 6 oz jars', 22)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (5, N'Chef Anton''s Gumbo Mix', 2, 2, N'36 boxes', 21)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (6, N'Grandma''s Boysenberry Spread', 3, 2, N'12 - 8 oz jars', 25)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (7, N'Uncle Bob''s Organic Dried Pears', 3, 7, N'12 - 1 lb pkgs.', 30)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (8, N'Northwoods Cranberry Sauce', 3, 2, N'12 - 12 oz jars', 40)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (9, N'Mishi Kobe Niku', 4, 6, N'18 - 500 g pkgs.', 97)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (10, N'Ikura', 4, 8, N'12 - 200 ml jars', 31)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (11, N'Queso Cabrales', 5, 4, N'1 kg pkg.', 21)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (12, N'Queso Manchego La Pastora', 5, 4, N'10 - 500 g pkgs.', 38)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (13, N'Konbu', 6, 8, N'2 kg box', 6)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (14, N'Tofu', 6, 7, N'40 - 100 g pkgs.', 23)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (15, N'Genen Shouyu', 6, 2, N'24 - 250 ml bottles', 15)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (16, N'Pavlova', 7, 3, N'32 - 500 g boxes', 17)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (17, N'Alice Mutton', 7, 6, N'20 - 1 kg tins', 39)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (18, N'Carnarvon Tigers', 7, 8, N'16 kg pkg.', 62)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (19, N'Teatime Chocolate Biscuits', 8, 3, N'10 boxes x 12 pieces', 9)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (20, N'Sir Rodney''s Marmalade', 8, 3, N'30 gift boxes', 81)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (21, N'Sir Rodney''s Scones', 8, 3, N'24 pkgs. x 4 pieces', 10)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (22, N'Gustaf''s Knäckebröd', 9, 5, N'24 - 500 g pkgs.', 21)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (23, N'Tunnbröd', 9, 5, N'12 - 250 g pkgs.', 9)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (24, N'Guaraná Fantástica', 10, 1, N'12 - 355 ml cans', 4)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (25, N'NuNuCa Nuß-Nougat-Creme', 11, 3, N'20 - 450 g glasses', 14)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (26, N'Gumbär Gummibärchen', 11, 3, N'100 - 250 g bags', 31)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (27, N'Schoggi Schokolade', 11, 3, N'100 - 100 g pieces', 43)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (28, N'Rössle Sauerkraut', 12, 7, N'25 - 825 g cans', 45)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (29, N'Thüringer Rostbratwurst', 12, 6, N'50 bags x 30 sausgs.', 123)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (30, N'Nord-Ost Matjeshering', 13, 8, N'10 - 200 g glasses', 25)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (31, N'Gorgonzola Telino', 14, 4, N'12 - 100 g pkgs', 12)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (32, N'Mascarpone Fabioli', 14, 4, N'24 - 200 g pkgs.', 32)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (33, N'Geitost', 15, 4, N'500 g', 2)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (34, N'Sasquatch Ale', 16, 1, N'24 - 12 oz bottles', 14)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (35, N'Steeleye Stout', 16, 1, N'24 - 12 oz bottles', 18)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (36, N'Inlagd Sill', 17, 8, N'24 - 250 g jars', 19)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (37, N'Gravad lax', 17, 8, N'12 - 500 g pkgs.', 26)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (38, N'Côte de Blaye', 18, 1, N'12 - 75 cl bottles', 263)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (39, N'Chartreuse verte', 18, 1, N'750 cc per bottle', 18)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (40, N'Boston Crab Meat', 19, 8, N'24 - 4 oz tins', 18)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (41, N'Jack''s New England Clam Chowder', 19, 8, N'12 - 12 oz cans', 9)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (42, N'Singaporean Hokkien Fried Mee', 20, 5, N'32 - 1 kg pkgs.', 14)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (43, N'Ipoh Coffee', 20, 1, N'16 - 500 g tins', 46)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (44, N'Gula Malacca', 20, 2, N'20 - 2 kg bags', 19)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (45, N'Røgede sild', 21, 8, N'1k pkg.', 9)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (46, N'Spegesild', 21, 8, N'4 - 450 g glasses', 12)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (47, N'Zaanse koeken', 22, 3, N'10 - 4 oz boxes', 9)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (48, N'Chocolade', 22, 3, N'10 pkgs.', 12)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (49, N'Maxilaku', 23, 3, N'24 - 50 g pkgs.', 20)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (50, N'Valkoinen suklaa', 23, 3, N'12 - 100 g bars', 16)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (51, N'Manjimup Dried Apples', 24, 7, N'50 - 300 g pkgs.', 53)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (52, N'Filo Mix', 24, 5, N'16 - 2 kg boxes', 7)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (53, N'Perth Pasties', 24, 6, N'48 pieces', 32)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (54, N'Tourtière', 25, 6, N'16 pies', 7)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (55, N'Pâté chinois', 25, 6, N'24 boxes x 2 pies', 24)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (56, N'Gnocchi di nonna Alice', 26, 5, N'24 - 250 g pkgs.', 38)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (57, N'Ravioli Angelo', 26, 5, N'24 - 250 g pkgs.', 19)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (58, N'Escargots de Bourgogne', 27, 8, N'24 pieces', 13)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (59, N'Raclette Courdavault', 28, 4, N'5 kg pkg.', 55)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (60, N'Camembert Pierrot', 28, 4, N'15 - 300 g rounds', 34)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (61, N'Sirop d''érable', 29, 2, N'24 - 500 ml bottles', 28)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (62, N'Tarte au sucre', 29, 3, N'48 pies', 49)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (63, N'Vegie-spread', 7, 2, N'15 - 625 g jars', 43)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (64, N'Wimmers gute Semmelknödel', 12, 5, N'20 bags x 4 pieces', 33)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (65, N'Louisiana Fiery Hot Pepper Sauce', 2, 2, N'32 - 8 oz bottles', 21)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (66, N'Louisiana Hot Spiced Okra', 2, 2, N'24 - 8 oz jars', 17)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (67, N'Laughing Lumberjack Lager', 16, 1, N'24 - 12 oz bottles', 14)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (68, N'Scottish Longbreads', 8, 3, N'10 boxes x 8 pieces', 12)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (69, N'Gudbrandsdalsost', 15, 4, N'10 kg pkg.', 36)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (70, N'Outback Lager', 7, 1, N'24 - 355 ml bottles', 15)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (71, N'Fløtemysost', 15, 4, N'10 - 500 g pkgs.', 21)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (72, N'Mozzarella di Giovanni', 14, 4, N'24 - 200 g pkgs.', 34)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (73, N'Röd Kaviar', 17, 8, N'24 - 150 g jars', 15)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (74, N'Longlife Tofu', 4, 7, N'5 kg pkg.', 10)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (75, N'Rhönbräu Klosterbier', 12, 1, N'24 - 0.5 l bottles', 7)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (76, N'Lakkalikööri', 23, 1, N'500 ml', 18)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (77, N'Original Frankfurter grüne Soße', 12, 2, N'12 boxes', 13)
GO
INSERT [dbo].[Shippers] ([ShipperID], [ShipperName], [Phone]) VALUES (1, N'Speedy Express', N'(503) 555-9831')
GO
INSERT [dbo].[Shippers] ([ShipperID], [ShipperName], [Phone]) VALUES (2, N'United Package', N'(503) 555-3199')
GO
INSERT [dbo].[Shippers] ([ShipperID], [ShipperName], [Phone]) VALUES (3, N'Federal Shipping', N'(503) 555-9931')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (1, N'Exotic Liquid', N'Charlotte Cooper', N'49 Gilbert St.', N'Londona', N'EC1 4SD', N'UK', N'(171) 555-2222')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (2, N'New Orleans Cajun Delights', N'Shelley Burke', N'P.O. Box 78934', N'New Orleans', N'70117', N'USA', N'(100) 555-4822')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (3, N'Grandma Kelly''s Homestead', N'Regina Murphy', N'707 Oxford Rd.', N'Ann Arbor', N'48104', N'USA', N'(313) 555-5735')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (4, N'Tokyo Traders', N'Yoshi Nagase', N'9-8 Sekimai Musashino-shi', N'Tokyo', N'100', N'Japan', N'(03) 3555-5011')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (5, N'Cooperativa de Quesos ''Las Cabras''', N'Antonio del Valle Saavedra', N'Calle del Rosal 4', N'Oviedo', N'33007', N'Spain', N'(98) 598 76 54')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (6, N'Mayumi''s', N'Mayumi Ohno', N'92 Setsuko Chuo-ku', N'Osaka', N'545', N'Japan', N'(06) 431-7877')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (7, N'Pavlova, Ltd.', N'Ian Devling', N'74 Rose St. Moonie Ponds', N'Melbourne', N'3058', N'Australia', N'(03) 444-2343')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (8, N'Specialty Biscuits, Ltd.', N'Peter Wilson', N'29 King''s Way', N'Manchester', N'M14 GSD', N'UK', N'(161) 555-4448')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (9, N'PB Knäckebröd AB', N'Lars Peterson', N'Kaloadagatan 13', N'Göteborg', N'S-345 67', N'Sweden', N'031-987 65 43')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (10, N'Refrescos Americanas LTDA', N'Carlos Diaz', N'Av. das Americanas 12.890', N'São Paulo', N'5442', N'Brazil', N'(11) 555 4640')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (11, N'Heli Süßwaren GmbH & Co. KG', N'Petra Winkler', N'Tiergartenstraße 5', N'Berlin', N'10785', N'Germany', N'(010) 9984510')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (12, N'Plutzer Lebensmittelgroßmärkte AG', N'Martin Bein', N'Bogenallee 51', N'Frankfurt', N'60439', N'Germany', N'(069) 992755')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (13, N'Nord-Ost-Fisch Handelsgesellschaft mbH', N'Sven Petersen', N'Frahmredder 112a', N'Cuxhaven', N'27478', N'Germany', N'(04721) 8713')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (14, N'Formaggi Fortini s.r.l.', N'Elio Rossi', N'Viale Dante, 75', N'Ravenna', N'48100', N'Italy', N'(0544) 60323')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (15, N'Norske Meierier', N'Beate Vileid', N'Hatlevegen 5', N'Sandvika', N'1320', N'Norway', N'(0)2-953010')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (16, N'Bigfoot Breweries', N'Cheryl Saylor', N'3400 - 8th Avenue Suite 210', N'Bend', N'97101', N'USA', N'(503) 555-9931')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (17, N'Svensk Sjöföda AB', N'Michael Björn', N'Brovallavägen 231', N'Stockholm', N'S-123 45', N'Sweden', N'08-123 45 67')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (18, N'Aux joyeux ecclésiastiques', N'Guylène Nodier', N'203, Rue des Francs-Bourgeois', N'Paris', N'75004', N'France', N'(1) 03.83.00.68')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (19, N'New England Seafood Cannery', N'Robb Merchant', N'Order Processing Dept. 2100 Paul Revere Blvd.', N'Boston', N'02134', N'USA', N'(617) 555-3267')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (20, N'Leka Trading', N'Chandra Leka', N'471 Serangoon Loop, Suite #402', N'Singapore', N'0512', N'Singapore', N'555-8787')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (21, N'Lyngbysild', N'Niels Petersen', N'Lyngbysild Fiskebakken 10', N'Lyngby', N'2800', N'Denmark', N'43844108')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (22, N'Zaanse Snoepfabriek', N'Dirk Luchte', N'Verkoop Rijnweg 22', N'Zaandam', N'9999 ZZ', N'Netherlands', N'(12345) 1212')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (23, N'Karkki Oy', N'Anne Heikkonen', N'Valtakatu 12', N'Lappeenranta', N'53120', N'Finland', N'(953) 10956')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (24, N'G''day, Mate', N'Wendy Mackenzie', N'170 Prince Edward Parade Hunter''s Hill', N'Sydney', N'2042', N'Australia', N'(02) 555-5914')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (25, N'Ma Maison', N'Jean-Guy Lauzon', N'2960 Rue St. Laurent', N'Montréal', N'H1J 1C3', N'Canada', N'(514) 555-9022')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (26, N'Pasta Buttini s.r.l.', N'Giovanni Giudici', N'Via dei Gelsomini, 153', N'Salerno', N'84100', N'Italy', N'(089) 6547665')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (27, N'Escargots Nouveaux', N'Marie Delamare', N'22, rue H. Voiron', N'Montceau', N'71300', N'France', N'85.57.00.07')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (28, N'Gai pâturage', N'Eliane Noz', N'Bat. B 3, rue des Alpes', N'Annecy', N'74000', N'France', N'38.76.98.06')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (29, N'Forêts d''érables', N'Chantal Goulet', N'148 rue Chasseur', N'Ste-Hyacinthe', N'J2S 7S8', N'Canada', N'(514) 555-2955')
GO
/****** Object:  StoredProcedure [dbo].[EmpolyeeId]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EmpolyeeId]
(
@EmpolyeeId int
)
AS
Begin
select *from Employees
where EmployeeID=@EmpolyeeId
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllCategories]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllCategories]
AS
Begin
select *from Categories
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllCategoriesTemp]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllCategoriesTemp]
AS
Begin
create table #Categories(
CategoryID int,
CategoryName varchar(100),
Description varchar(250)
)

insert into #Categories
select *from #Categories

select 'Temp', *from #Categories

End
GO
/****** Object:  StoredProcedure [dbo].[GetAllCountry]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllCountry]
As
Begin
create table #Employess(
EmployeeId int Primary Key,
LastName varchar(100),
FirstName varchar(50),
BirthDate varchar(80),
Photo varchar(80),
Notes varchar(250)
)

insert into #Employess

select 'Temp', *from #Employess
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllCustomer]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllCustomer]
AS
Begin
select *from Customer
End

exec GetAllCustomer
GO
/****** Object:  StoredProcedure [dbo].[GetAllEmployees]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllEmployees]
As
Begin
select *from Employees
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllEmpolyees]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllEmpolyees]
AS
Begin
select *from Employees
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllOrderDetails]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllOrderDetails]
As
Begin
select *from OrderDetails
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllOrders]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllOrders]
AS
Begin
select *from Orders
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllProducts]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllProducts]
AS
Begin
select *from Products
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllShippers]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllShippers]
AS
Begin
select *from Shippers
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllShippersTemp]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllShippersTemp]
AS
Begin
create table #Shippers(
ShipperID int primary Key,
ShipperName varchar(80),
Phone varchar(80)
)

insert into #Shippers
select *from #Shippers

select 'Temp', *from #Shippers
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllSuppliers]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllSuppliers]
AS
Begin
select *from Suppliers
End
GO
/****** Object:  StoredProcedure [dbo].[GetCategoriesByCategoryId]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetCategoriesByCategoryId]
(
@CategoryId int
)
AS
Begin
select *from Categories where CategoryID=@CategoryId
End
GO
/****** Object:  StoredProcedure [dbo].[GetCategoriesById]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetCategoriesById]
(
@GetCatById int
)
AS
Begin
select *from Categories
End
GO
/****** Object:  StoredProcedure [dbo].[GetCategoryById]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetCategoryById]
(
@CategoryId int
)
AS
Begin
select *from Categories
where CategoryID=@CategoryId
End
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerByCustomerId]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetCustomerByCustomerId]
(
@CustomerId int
)
AS
Begin
select *from Customer where CustomerID=@CustomerId
End
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerById]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetCustomerById] 
(
@CustomerId int
)
As
Begin
select *from Customer
where CustomerID=@CustomerId
End
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeesByEmployeeID]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetEmployeesByEmployeeID]
(
@EmployeeID int
)
As
Begin
select *from Employees where EmployeeID=@EmployeeID
End
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeesById]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetEmployeesById]
(
@GetEmployeeById int
)
As
Begin
select *from Employees
End
GO
/****** Object:  StoredProcedure [dbo].[GetEmpolyeeById]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetEmpolyeeById]
(
@EmpolyeeId int
)
AS
Begin
select *from Employees
where EmployeeID=@EmpolyeeId
End
GO
/****** Object:  StoredProcedure [dbo].[GetOrderDetailByOrderIDProductIDOrderDetailID]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetOrderDetailByOrderIDProductIDOrderDetailID]
(
@OrderID int,
@ProductID int,
@OrderDetailID int
)
AS
Begin
select *from OrderDetails where OrderID=10248 and ProductID=11 and OrderDetailID=1
End
GO
/****** Object:  StoredProcedure [dbo].[GetOrderDetailsById]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetOrderDetailsById]
(
@OrderDetails int
)
AS
Begin
select *from OrderDetails
where OrderDetailID=@OrderDetails
End
GO
/****** Object:  StoredProcedure [dbo].[GetOrderDetailsByOrderDetailId]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetOrderDetailsByOrderDetailId]
(
@OrderDetailId int
)
As
Begin
select *from OrderDetails where OrderDetailID=@OrderDetailId
End
GO
/****** Object:  StoredProcedure [dbo].[GetOrderIDByCustomerIDEmployeeIDShipperIDOrderID]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetOrderIDByCustomerIDEmployeeIDShipperIDOrderID]
(
@CustomerID int,
@EmployeeID int,
@ShipperID int,
@OrderID int
)
AS
Begin
select *from Orders where CustomerID=@CustomerID and EmployeeID=@EmployeeID and ShipperID=@ShipperID and 
OrderID=@OrderID
End
GO
/****** Object:  StoredProcedure [dbo].[GetOrdersById]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetOrdersById]
(
@OrderId int
)
AS
Begin
select *from Orders
where OrderId=@OrderId
End
GO
/****** Object:  StoredProcedure [dbo].[GetOrdersByOrderID]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetOrdersByOrderID]
(
@OrderID int
)
AS
Begin
select *from Orders where OrderID=@OrderID
End
GO
/****** Object:  StoredProcedure [dbo].[GetProcedureById]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProcedureById]
(
@ProductId int
)
AS
Begin
select *from Products
where ProductID=@ProductId
End
GO
/****** Object:  StoredProcedure [dbo].[GetProductById]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProductById]
(
@ProductId int
)
AS
Begin
select *from Products
where ProductID=@ProductId
End
GO
/****** Object:  StoredProcedure [dbo].[GetProductsByProductsId]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProductsByProductsId]
(
@ProductId int
)
AS
Begin
select *from Products where ProductID=@ProductId
End
GO
/****** Object:  StoredProcedure [dbo].[GetProductsBySupplierIDCategoryIDProductID]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProductsBySupplierIDCategoryIDProductID]
(
@SupplierID int,
@CategoryID int,
@ProductID int
)
AS
Begin
select *from Products where SupplierID=@SupplierID and CategoryID=@CategoryID and ProductID=@ProductID
End
GO
/****** Object:  StoredProcedure [dbo].[GetShipperById]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetShipperById]
(
@ShipperId int
)
AS
Begin
select *from Shippers
where ShipperID=@ShipperId
End
GO
/****** Object:  StoredProcedure [dbo].[GetShippersByShipperId]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetShippersByShipperId]
(
@ShipperId int
)
AS
Begin
select *from Shippers where ShipperID=@ShipperId
End
GO
/****** Object:  StoredProcedure [dbo].[GetSupplierById]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetSupplierById]
(
@SupplierId int
)
AS
Begin
select *from Suppliers
where SupplierID=@SupplierId
End
GO
/****** Object:  StoredProcedure [dbo].[GetSuppliersById]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetSuppliersById]
(
@GetSupById int
)
AS
Begin
select *from Suppliers where SupplierID=@GetSupById
End
GO
/****** Object:  StoredProcedure [dbo].[GetSuppliersBySupplierId]    Script Date: 5/15/2025 12:40:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetSuppliersBySupplierId]
(
@SupplierId int
)
AS
Begin
select *from Suppliers where SupplierID=@SupplierId
End
GO
