using System;
using System.Collections.Generic;

namespace GeoQuestions.Server.Models
{
    public partial class Game
    {
        public Game()
        {
            QuestionGames = new HashSet<QuestionGame>();
        }

        public int Id { get; set; }
        public int IdUser { get; set; }
        public DateTime Time { get; set; }

        public virtual User IdUserNavigation { get; set; }
        public virtual ICollection<QuestionGame> QuestionGames { get; set; }
    }
}
