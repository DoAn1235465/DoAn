using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn.API.IDB
{
	interface Pros<T>
	{
        T Get(int id);
        IEnumerable<T> GetAll(int id = 0);
        bool Insert(T item);
		bool UpDate(T item);
		bool Delete(int id);
	}
}
