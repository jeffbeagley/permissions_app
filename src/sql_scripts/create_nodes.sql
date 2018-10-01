IF EXISTS ( SELECT  1 FROM    information_schema.Tables  WHERE   TABLE_NAME = 'users_n' )
    BEGIN
        drop table users_n

    END

IF EXISTS ( SELECT  1 FROM    information_schema.Tables  WHERE   TABLE_NAME = 'entities_n' )
    BEGIN
        drop table entities_n

    END

IF EXISTS ( SELECT  1 FROM    information_schema.Tables  WHERE   TABLE_NAME = 'groups_n' )
    BEGIN
        drop table groups_n

    END

create table users_n (id integer primary key identity(1,1), user_id int, user_display_name_vc varchar(200)) AS node
create table groups_n (id integer primary key identity(1,1), group_vc VARCHAR(200)) AS node
create table entities_n (id integer primary key identity(1,1), entity_id int, entity_display_name_vc varchar(200)) AS node

--insert some default data into tables for testing
    INSERT INTO users_n(user_id, user_display_name_vc)
    SELECT 
        9999999,
        'Jeff Beagley'

    INSERT INTO users_n(user_id, user_display_name_vc)
    SELECT 
        9999998,
        'Joe Customer'


    INSERT INTO groups_n(group_vc)
    SELECT 
        'Employees'

    INSERT INTO groups_n(group_vc)
    SELECT
        'Customers'

    INSERT INTO entities_n(entity_id, entity_display_name_vc)
    SELECT
        1,
        'Some Company'

    INSERT INTO entities_n(entity_id, entity_display_name_vc)
    SELECT
        2,
        'Some Other'




    







