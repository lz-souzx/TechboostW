package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import model.DTO.Produto;
import model.conexaoBD.ConexaoBD;

public class ProdutoDAO {

    private Connection conexao;
    private PreparedStatement ps;
    private ResultSet resultado;

    public void CadastrarProduto(Produto objProduto) {

        String sql = "insert into bd_techboostcopia.tb_produto(tipo,preco,cnpj) values(?,?,?)";
        this.conexao = new ConexaoBD().getConexao();
        try {
            this.ps = conexao.prepareStatement(sql);
            this.ps.setString(1, objProduto.getTipo());
            this.ps.setDouble(2, objProduto.getPreco());
            this.ps.setString(3, objProduto.getCnpj());

            ps.execute();
            ps.close();

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, " deu erro na classe ContatoDAO e no metodo cadastrarProduto()" + e);
        }
    }

    public void alterarProduto(Produto objProduto) {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "update tb_produto set tipo=?,preco=?,cnpj=? where pkid_produto=?";

        try {
            ps = conexao.prepareStatement(sql);
            this.ps.setString(1, objProduto.getTipo());
            this.ps.setDouble(2, objProduto.getPreco());
            this.ps.setString(3, objProduto.getCnpj());
            ps.setInt(4, objProduto.getId());

            ps.execute();
            ps.close();

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Erro em alterar produto e na classe ProdutoDAO" + e);
        }

    }

    public ArrayList<Produto> listarProdutos() {
        this.conexao = new ConexaoBD().getConexao();
        
        ArrayList<Produto> listarProdutos = new ArrayList<>();
        
        String sql = "SELECT * FROM tb_produto";

        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.resultado = this.ps.executeQuery(sql);

            while (this.resultado.next()) {
                Produto objProduto = new Produto();
                
                objProduto.setId(this.resultado.getInt("pkid_produto"));
                objProduto.setTipo(this.resultado.getString("tipo"));
                objProduto.setPreco(this.resultado.getDouble("preco"));
                objProduto.setCnpj(this.resultado.getString("cnpj"));

                listarProdutos.add(objProduto);
            }

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "deu erro na classe ProdutoDAO e no metodo listarProduto()" + e);
        }

        return listarProdutos;

    }

    public void excluirProduto(Produto objProduto) {

        String sql = "delete from tb_produto where pkid_produto = ?";
        conexao = new ConexaoBD().getConexao();
        try {
            this.ps = conexao.prepareStatement(sql);
            this.ps.setInt(1, objProduto.getId());

            ps.execute();
            ps.close();

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "deu erro na classe ContatoDAO e no metodo cadastrarCobtato()" + e);
        }
    }
}
