using System;
using System.Collections.Generic;

namespace GeoQuestions.Server.Models
{
    public partial class Question
    {
        public Question()
        {
            QuestionGames = new HashSet<QuestionGame>();
        }

        public int Id { get; set; }
        public string LatitudeVerified { get; set; }
        public string LongitudeVerified { get; set; }
        public string Name { get; set; }

        public virtual ICollection<QuestionGame> QuestionGames { get; set; }
    }
}
