﻿using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Trix {
    public partial class RepEdicao : Form {
        public int Terminal;
        public int Grupo;
        private DB db;

        public RepEdicao() {
            InitializeComponent();
        }

        private void RepEdicao_Load(object sender, EventArgs e)
        {
            if (Terminal > 0) 
            {
                db = new DB();

                SqlCommand Comm = db.Conn.CreateCommand();
                Comm.CommandText = "SELECT TRM_DESCRICAO, TRM_IP, TRM_PORTA, TRM_RAZAOSOCIAL, TRM_CNPJ, " +
                               "TRM_ENDERECO, TRM_NUMERO FROM Terminais WHERE TRM_IND = " + Terminal.ToString() + " " +
                               "ORDER BY TRM_DESCRICAO";
                SqlDataReader reader = Comm.ExecuteReader();

                reader.Read();

                edDescricao.Text = reader["TRM_DESCRICAO"].ToString().Trim();
                edIp.Text = reader["TRM_IP"].ToString().Trim();
                edPorta.Text = reader["TRM_PORTA"].ToString().Trim();
                edRazaoSocial.Text = reader["TRM_RAZAOSOCIAL"].ToString().Trim();
                edCnpj.Text = reader["TRM_CNPJ"].ToString().Trim();
                edEndereco.Text = reader["TRM_ENDERECO"].ToString().Trim();
                edNumero.Text = reader["TRM_NUMERO"].ToString().Trim();

                reader.Close();
            }
        }

        private void btOk_Click(object sender, EventArgs e)
        {
            DB db = new DB();
            SqlCommand Comm = db.Conn.CreateCommand();

            if (Terminal > 0)
                Comm.CommandText = "UPDATE Terminais SET TRM_DESCRICAO = @DESCRICAO, TRM_IP = @IP, " +
                                   "TRM_PORTA = @PORTA, TRM_GRUPO = @GRUPO, TRM_FABRICANTE = @FABRICANTE, " +
                                   "TRM_RAZAOSOCIAL = @RAZAOSOCIAL, TRM_CNPJ = @CNPJ, TRM_ENDERECO = @ENDERECO, TRM_NUMERO = @NUMERO " +
                                   "WHERE TRM_IND = " + Terminal.ToString();
            else
                Comm.CommandText = "INSERT INTO Terminais (TRM_DESCRICAO, TRM_IP, TRM_PORTA, TRM_GRUPO, " +
                                   "TRM_FABRICANTE, TRM_RAZAOSOCIAL, TRM_CNPJ, TRM_ENDERECO, TRM_NUMERO) VALUES (@DESCRICAO, " +
                                   "@IP, @PORTA, @GRUPO, @FABRICANTE, @RAZAOSOCIAL, @CNPJ, @ENDERECO, @NUMERO)";

            Comm.Parameters.Add(new SqlParameter("@DESCRICAO", edDescricao.Text));
            Comm.Parameters.Add(new SqlParameter("@IP", edIp.Text));
            Comm.Parameters.Add(new SqlParameter("@PORTA", edPorta.Text));
            Comm.Parameters.Add(new SqlParameter("@GRUPO", Grupo));
            Comm.Parameters.Add(new SqlParameter("@FABRICANTE", "TRIX"));

            Comm.Parameters.Add(new SqlParameter("@RAZAOSOCIAL", edRazaoSocial.Text));
            Comm.Parameters.Add(new SqlParameter("@CNPJ", edCnpj.Text));
            Comm.Parameters.Add(new SqlParameter("@ENDERECO", edEndereco.Text));
            Comm.Parameters.Add(new SqlParameter("@NUMERO", edNumero.Text));

            Comm.ExecuteNonQuery();

            this.Close();
        }
    }
}
