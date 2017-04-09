using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LINQ2EF
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var db = new VHmodelContainer())
            {
                var query = from c in db.CustomerSet
                            where c.Age < 30
                            orderby c.Id
                            select c;
                            
                foreach (var item in query)
                {
                    Console.WriteLine(item.Id+" : "+item.FirstName+" " + item.LastName+" "+item.Age);
                }
            }



        }
    }
}
