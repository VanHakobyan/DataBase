using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelFirst
{
    class Program
    {
        static void Main(string[] args)
        {
            var db = new UsersContainer();
            var CP = new Corporation() { Name="BetC"};
            var Van = new User()
            {
                FirsName = "Van",
                LastName = "Hakobyan",
                Age = 21,
                BirthDate = DateTime.Today,
                Id = 044644
            };
            var Admin = new Admin()
            {
                FirsName = "Admin",
                Level = 1,
                Age = 2017
            };
            db.UserSet.Add(Van);
            db.UserSet.Add(Admin);
            db.SaveChanges();

            Console.WriteLine(Admin.FirsName);
            //foreach (var item in db.UserSet)
            //{
            //    Console.WriteLine(item.GetType());
            //}

        }
    }
}
