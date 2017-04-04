﻿using System.Data.Entity;

namespace FirstEF6App
{ 
    class UserContext : DbContext
    {
        public UserContext() :
            base("UserDB")
        { }

        public DbSet<User> Users { get; set; }
    }
}
