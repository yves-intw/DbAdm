using Base.Enums;
using Base.Models;
using Base.Services;
using Newtonsoft.Json.Linq;
using System.Threading.Tasks;

namespace DbAdm.Services
{
    public class ProjectRead
    {
        private readonly ReadDto dto = new()
        {
            ReadSql = @"
Select *
From dbo.Project
Order by Id
",
            Items = new QitemDto[] {
                new() { Fid = "Name", Op = ItemOpEstr.Like },
            },
        };

        public async Task<JObject> GetPageAsync(string ctrl, DtDto dt)
        {
            return await new CrudRead().GetPageAsync(dto, dt, ctrl);
        }

    } //class
}
