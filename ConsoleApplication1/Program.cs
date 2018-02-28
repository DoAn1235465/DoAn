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
            var value = db.SanPhams.ToList();
            foreach (var item in value)
            {
                Console.WriteLine(item.TenSp);
            }
            Console.ReadKey();
        }
    }
}
