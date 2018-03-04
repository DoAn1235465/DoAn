using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn.Entity.IDB
{
	interface Pros<T>
	{
		long Insert(T item);
		long UpDate(T item);
		long Delete(int id);
	}
}
