using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn.API.IDB
{
	interface Pros<T>
	{
		bool Insert(T item);
		bool UpDate(T item);
		bool Delete(int id);
	}
}
