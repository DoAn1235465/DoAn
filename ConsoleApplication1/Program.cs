using DoAn.Model;
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
            DBSanPhamDoAnEntities db = new DBSanPhamDoAnEntities();
            var list = db.SanPhams;
            foreach (var item in list)
            {
                Console.WriteLine(item.TenSp);
            }
            Console.ReadKey();
        }
    }
}
