using ControleCurso.Dominio;
using ControleCurso.Repositorio.Comum;
using ControleCurso.Repositorio.RepositorioEF;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ControleCurso
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Pessoa pessoaInserida = new Pessoa();
            pessoaInserida.Nome = textBox1.Text;
            pessoaInserida.Email = textBox2.Text;
            IRepositorioGenerico<Pessoa> pessoa = new RepositorioPessoa();
            
            pessoa.Inserir(pessoaInserida);

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
