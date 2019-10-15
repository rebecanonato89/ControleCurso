using ControleCurso.Dominio;
using ControleCurso.Repositorio.Comum;
using ControleCurso.Repositorio.PersistenciaEF.Context;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ControleCurso.Repositorio.RepositorioEF
{
    public class RepositorioPessoa : IRepositorioGenerico<Pessoa>
    {
        public void Atualizar(Pessoa entidade)
        {
            throw new NotImplementedException();
        }

        public void Excluir(Pessoa entidade)
        {
            throw new NotImplementedException();
        }

        public void Inserir(Pessoa entidade)
        {
            using (ControleCursoDbContext contexto = new ControleCursoDbContext())
            {
                contexto.Pessoas.Add(entidade);
                contexto.SaveChanges();
            }
        }

        public Pessoa SelecionarPorId(int id)
        {
            throw new NotImplementedException();
        }

        public List<Pessoa> SelecionarTodos()
        {
            using (ControleCursoDbContext contexto = new ControleCursoDbContext())
            {
                return contexto.Pessoas.ToList();
            }
        }
    }
}
