using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LINQ2Objects
{
    class Program
    {
        static void Main(string[] args)
        {
            var people = new List<Person>
            {
                new Person {Name="Poghos",Age=20},
                new Person {Name="Petros",Age=23},
                new Person {Name="John",Age=35},
                new Person {Name="Lilit",Age=63},
                new Person {Name="Ani",Age=14}
            };

            var sortPeopleNames = from person in people
                                  where person.Age > 25
                                  select person.Name;
            foreach (var item in sortPeopleNames)
            {
                Console.WriteLine($"Name: {item}");
            }

        }
    }
}
