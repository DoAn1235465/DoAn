using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn.API.IDB
{
    public interface Ibase<T>
    {
        void Get_ByID(int id);
        void GetAll();

        void Update(T obj);

        void Create(T obj);
        void Delete(int id);
    }
}
