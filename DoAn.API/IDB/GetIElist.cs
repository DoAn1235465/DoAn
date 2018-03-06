using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAn.API.IDB
{
	interface GetIElist<T>
	{
		T Get(int id);
		IEnumerable<T> GetAll(int id = 0);
	}
}