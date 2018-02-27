using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            DoAn.Model.dbSanPhamEntities db = new DoAn.Model.dbSanPhamEntities();
            var value = db.SanPhams.Where(x => x.Id == 1);
            Console.Write(value);
            Console.ReadKey();
        }
    }
}
