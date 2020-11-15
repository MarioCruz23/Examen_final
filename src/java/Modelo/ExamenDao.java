package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

public class ExamenDao implements Interface{

    conexion cn= new conexion();
    Connection conn;
    PreparedStatement ps;

    @Override
    public List Listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Modelo.Examen list(String Nombre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean lista(Modelo.Examen exa) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean Examen(Modelo.Examen exa) {
        String sql;
        sql = "inset into inscripcion1(Nombres, Categoria)values('"+exa.getNombre()+"','"+exa.getCategorias()+"'";
        sql = "inset into inscripcion2(Nombres, Partidas)values('"+exa.getNombre()+"','"+exa.getPartidas()+"'";
        try {
            conn=cn.getConnection();
            ps=conn.prepareStatement(sql);
            ps.executeUpdate();
        }catch (Exception e){
        }
        return false;
    }

    @Override
    public boolean eliminar(String Nombre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private static class conexion {

        public conexion() {
        }

        private Connection getConnection() {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }
    }
    
    
}
