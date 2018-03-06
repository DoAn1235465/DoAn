using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn.API.IDB
{
	interface GetIdList<T>
	{
		IQueryable Get(int id);
		IQueryable GetAll(int id=0);
	}
}
