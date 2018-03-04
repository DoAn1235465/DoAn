using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn.Entity.IDB
{
	interface GetIdList<T>
	{
		T Get(int id);
		T GetAll(int id=0);
	}
}
