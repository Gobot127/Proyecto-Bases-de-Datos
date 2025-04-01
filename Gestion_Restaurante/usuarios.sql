/*select usuario*/

CREATE ROLE lector WITH LOGIN PASSWORD 'usuarioSelect123';
GRANT CONNECT ON DATABASE gestion_restaurante TO lector;
GRANT USAGE ON SCHEMA public TO lector;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO lector;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO lector;


/*super usuario*/
CREATE ROLE admin_restaurante WITH LOGIN PASSWORD 'usuarioSuper123' SUPERUSER;

SELECT rolname, rolsuper, rolcreaterole, rolcreatedb FROM pg_roles;
