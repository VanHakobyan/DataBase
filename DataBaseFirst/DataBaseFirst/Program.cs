using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBaseFirst
{
    class Program
    {
        static void Main(string[] args)
        {
            var context = new Database2Entities();
            foreach (var item in context.People)
            {
                Console.WriteLine($"{item.Id}: {item.Name} --- {item.Age}");
            }
        }
    }
}
