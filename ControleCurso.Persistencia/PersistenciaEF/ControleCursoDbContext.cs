using ControleCurso.Dominio;
using System.Data.Entity;

namespace ControleCurso.Repositorio.PersistenciaEF.Context
{
    public class ControleCursoDbContext : DbContext
    {
        public DbSet<Pessoa> Pessoas { get; set; }


    }
}
