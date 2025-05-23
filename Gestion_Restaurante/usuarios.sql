/*select usuario*/

CREATE ROLE lector WITH LOGIN PASSWORD 'usuarioSelect123';
GRANT CONNECT ON DATABASE gestion_restaurante TO lector;
GRANT USAGE ON SCHEMA public TO lector;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO lector;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO lector;

/*METERSE EN EL USUARIO DE LECTOR*/
SET SESSION AUTHORIZATION lector;
/*VER UN SELECT*/

SELECT * FROM public.CLIENTES;

CREATE TABLE Persona(
  id_persona SERIAL PRIMARY KEY
);
/*PARA VOILVER AL USUARIO POSTGRESQL*/

RESET SESSION AUTHORIZATION



/*super usuario*/
CREATE ROLE admin_restaurante WITH LOGIN PASSWORD 'usuarioSuper123' SUPERUSER;


-- Dar todos los privilegios sobre la base de datos
GRANT ALL PRIVILEGES ON DATABASE nombre_de_tu_base_de_datos TO admin_restaurante;


/*AQUI HICIMOS UN ALTER PARA QUITARLE EL PERMISO AL SUPER USUARIO DE CREAR DATA BASES*/

ALTER ROLE admin_restaurante WITH NOSUPERUSER NOCREATEDB;

/*PARA VER LOS ROLES EN LOS USUARIOS*/

SELECT rolname, rolsuper, rolcreaterole, rolcreatedb FROM pg_roles;

/*METERSE AL SUPER USUARIO*/
SET SESSION AUTHORIZATION ADMIN_RESTAURANTE;

/*VOLVER AL USUARIO POSTGRESQL*/
RESET SESSION AUTHORIZATION

/*AQUÍ PODEMOS HACER CREACIONES, SELECTS, INSERTS, PERO NO CREAR BD */



