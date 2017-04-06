
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/06/2017 17:34:45
-- Generated from EDMX file: C:\Users\Van\Source\Repos\DataBase\ModelFirst\ModelFirst\Users.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [userstoredb];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CorporatinUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserSet] DROP CONSTRAINT [FK_CorporatinUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Admin_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserSet_Admin] DROP CONSTRAINT [FK_Admin_inherits_User];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[UserSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserSet];
GO
IF OBJECT_ID(N'[dbo].[CorporatinSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CorporatinSet];
GO
IF OBJECT_ID(N'[dbo].[UserSet_Admin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserSet_Admin];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UserSet'
CREATE TABLE [dbo].[UserSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirsName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Age] int  NOT NULL,
    [BirthDate] datetime  NOT NULL,
    [Corporatin_Id] int  NOT NULL
);
GO

-- Creating table 'CorporatinSet'
CREATE TABLE [dbo].[CorporatinSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UserSet_Admin'
CREATE TABLE [dbo].[UserSet_Admin] (
    [Level] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [PK_UserSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CorporatinSet'
ALTER TABLE [dbo].[CorporatinSet]
ADD CONSTRAINT [PK_CorporatinSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserSet_Admin'
ALTER TABLE [dbo].[UserSet_Admin]
ADD CONSTRAINT [PK_UserSet_Admin]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Corporatin_Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [FK_CorporatinUser]
    FOREIGN KEY ([Corporatin_Id])
    REFERENCES [dbo].[CorporatinSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CorporatinUser'
CREATE INDEX [IX_FK_CorporatinUser]
ON [dbo].[UserSet]
    ([Corporatin_Id]);
GO

-- Creating foreign key on [Id] in table 'UserSet_Admin'
ALTER TABLE [dbo].[UserSet_Admin]
ADD CONSTRAINT [FK_Admin_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------