CREATE TABLE Prueba(
    ID_prueba INT PRIMARY KEY SERIAL,
    nombre VARCHAR(50)
);

CREATE TABLE  Comida(
    id_comida INT PRIMARY KEY SERIAL,
    xd VARCHAR(50)

);

CREATE TABLE Menu{
    id_menu INT PRIMARY KEY SERIAL,
    Nombre VARCHAR(50),
    Categoria VARCHAR(50)
}