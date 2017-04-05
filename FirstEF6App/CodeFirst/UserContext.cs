using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirst
{
    class UserContext : DbContext
    {
        public UserContext() :
            base("UserDB")
        { }

        public DbSet<User> Users { get; set; }
    }
}
