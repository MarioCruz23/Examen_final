package Modelo;

public class Examen {
    String Nombre;
    String Apellido;
    String Edad;
    String Pais;
    String Genero;
    String Ambientacion;
    String Plataforma;
    String Partidas;
    String Rondas;
    String Contricante;
    String Categorias;
    
    public Examen() {
    }
    public Examen(String Nombre, String Apellido, String Edad, String Pais, String Genero, String Ambientacion, String Plataforma, String Partidas, String Rondas, String Contricante, String Categorias) {
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Edad = Edad;
        this.Pais = Pais;
        this.Genero = Genero;
        this.Ambientacion = Ambientacion;
        this.Plataforma = Plataforma;
        this.Partidas = Partidas;
        this.Rondas = Rondas;
        this.Contricante = Contricante;
        this.Categorias = Categorias;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getEdad() {
        return Edad;
    }

    public void setEdad(String Edad) {
        this.Edad = Edad;
    }

    public String getPais() {
        return Pais;
    }

    public void setPais(String Pais) {
        this.Pais = Pais;
    }

    public String getGenero() {
        return Genero;
    }

    public void setGenero(String Genero) {
        this.Genero = Genero;
    }

    public String getAmbientacion() {
        return Ambientacion;
    }

    public void setAmbientacion(String Ambientacion) {
        this.Ambientacion = Ambientacion;
    }

    public String getPlataforma() {
        return Plataforma;
    }

    public void setPlataforma(String Plataforma) {
        this.Plataforma = Plataforma;
    }

    public String getPartidas() {
        return Partidas;
    }

    public void setPartidas(String Partidas) {
        this.Partidas = Partidas;
    }

    public String getRondas() {
        return Rondas;
    }

    public void setRondas(String Rondas) {
        this.Rondas = Rondas;
    }

    public String getContricante() {
        return Contricante;
    }

    public void setContricante(String Contricante) {
        this.Contricante = Contricante;
    }

    public String getCategorias() {
        return Categorias;
    }

    public void setCategorias(String Categorias) {
        this.Categorias = Categorias;
    }
}
