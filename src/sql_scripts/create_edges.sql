IF EXISTS (SELECT * FROM information_schema.Tables WHERE TABLE_NAME = 'users_groups_e')
    BEGIN
        drop table users_groups_e

    END
    
IF EXISTS (SELECT * FROM information_schema.Tables WHERE TABLE_NAME = 'users_entities_e')
    BEGIN
        drop table users_entities_e

    END
    
create table users_groups_e as edge
create table users_entities_e as edge

