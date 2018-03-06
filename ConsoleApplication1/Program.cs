
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
            DBSanPhamDAEntities db = new DBSanPhamDAEntities();
            var value = db.SanPhams;
            foreach (var item in value)
            {
                Console.WriteLine(item.TenSp);
            }
            Console.ReadKey();
			// cách púh
        }
    }
}
