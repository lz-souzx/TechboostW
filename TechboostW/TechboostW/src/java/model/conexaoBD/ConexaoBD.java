
package model.conexaoBD;

import java.sql.*;
import javax.swing.JOptionPane;

public class ConexaoBD {
    private Connection conexao;
    
    public Connection getConexao(){
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/bd_techboostcopia?user=root&password=";
            this.conexao= DriverManager.getConnection(url);
        } catch (ClassNotFoundException |SQLException e) {
            JOptionPane.showMessageDialog(null,"deu erro na classe ConexaoBD e no metodo getConexao() " + e);
        }
        return conexao;
    }

    
    }

  


    
    
