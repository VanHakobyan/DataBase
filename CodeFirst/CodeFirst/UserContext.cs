using System;
using System.Collections.Generic;
using System.Data.Entity;
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
