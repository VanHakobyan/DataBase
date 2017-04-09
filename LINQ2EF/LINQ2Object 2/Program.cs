using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LINQ2Object_2
{
    class Program
    {
        static void Main(string[] args)
        {
            var employes = new List<Employee>
            {
                new Employee{Name="Kara", Age=27, Salary=200000 ,StartDate=DateTime.Parse("10/01/2015") },
                new Employee{Name="Tina", Age=19, Salary=140000 ,StartDate=DateTime.Parse("20/02/2014") },
                new Employee{Name="Emmy", Age=39, Salary=800000 ,StartDate=DateTime.Parse("13/03/2015") },
                new Employee{Name="Ledy Gaga", Age=27, Salary=1200000 ,StartDate=DateTime.Parse("30/11/2016") }
            };


            var topSalary = from employee in employes
                            where employee.Salary > 100000
                            select employee;

            //this static extensinon methods query

            //var topSalary = Enumerable.Select(
            //    Enumerable.Where(
            //        employes, emp => emp.Salary > 100000),
            //    emp => new { Name = emp.Name, Age = emp.Name, StartDate = emp.StartDate });

            foreach (var item in topSalary)
            {
                Console.WriteLine($"Name - {item.Name}\n Age - {item.Age} \n Start Date - {item.StartDate} ");
            }
        }
    }
}
