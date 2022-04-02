using System;
using System.Collections.Generic;

namespace GeoQuestions.Server.Models
{
    public partial class User
    {
        public User()
        {
            Games = new HashSet<Game>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public virtual ICollection<Game> Games { get; set; }
    }
}
