using System.Data.Entity;

namespace Code_first
{ 
    class UserContext : DbContext
    {
        public UserContext() :
            base("UserDB")
        { }

        public DbSet<User> Users { get; set; }
    }
}
