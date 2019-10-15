using System.Collections.Generic;

namespace ControleCurso.Repositorio.Comum
{
    public interface IRepositorioGenerico<TDominio>
    {
        List<TDominio> SelecionarTodos();
        TDominio SelecionarPorId(int id);
        void Inserir(TDominio entidade);
        void Atualizar(TDominio entidade);
        void Excluir(TDominio entidade);
    }
}