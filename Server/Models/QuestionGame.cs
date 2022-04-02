using System;
using System.Collections.Generic;

namespace GeoQuestions.Server.Models
{
    public partial class QuestionGame
    {
        public int Id { get; set; }
        public int IdGame { get; set; }
        public int IdQuestion { get; set; }
        public string LatitudeAnswear { get; set; }
        public string LongitudeAnswear { get; set; }
        public int Score { get; set; }

        public virtual Game IdGameNavigation { get; set; }
        public virtual Question IdQuestionNavigation { get; set; }
    }
}
