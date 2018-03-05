using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn.API.IDB
{
	interface Pros<T>
	{
		long Insert(T item);
		long UpDate(T item);
		long Delete(int id);
	}
}
