using System;

namespace FirstEF6App
{
    class Program
    {
        static void Main(string[] args)
        {
            var context = new PersonEntities();
            foreach (var person in context.Table)
            {
                Console.WriteLine($"{person.Id}: {person.Name} - {person.Age}");
            }
        }
    }
}