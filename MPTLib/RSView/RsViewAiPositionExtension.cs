using System.Text;
using System.Text.RegularExpressions;

namespace MPT.Model
{
    public static class RsViewAiPositionExtension
    {
        static readonly Regex NameRegex = new Regex(@"^  ((?<Prefix>\d+)[-_\.%])?  (?<Letters>[A-Za-z]+) [-_\.]? (?<Digits>\d+)  ([-_\.\\\/%](?<Postfix>\d+))?$",
            RegexOptions.Compiled | RegexOptions.IgnorePatternWhitespace | RegexOptions.IgnoreCase);

        public static string RsViewFirstLetter(this AiPosition position)
        {
            var m = NameRegex.Match(position.Name);
            if (!m.Success)
                return position.Name;

            //var prefix = m.Groups["Prefix"];
            var letters = m.Groups["Letters"];
            //var digits = m.Groups["Digits"];
            //var postfix = m.Groups["Postfix"];


            if (!letters.Success)
                return position.Name;
            return letters.Value[0].ToString();
        }


        public static string RsViewShortName(this AiPosition position)
        {
            var m = NameRegex.Match(position.Name);
            if (!m.Success)
                return position.Name;

            var prefix = m.Groups["Prefix"];
            var letters = m.Groups["Letters"];
            var digits = m.Groups["Digits"];
            var postfix = m.Groups["Postfix"];

            var sb = new StringBuilder();
            if (prefix.Success)
                sb.Append(prefix.Value).Append("-");
            if (letters.Success)
                sb.Append(letters.Value[0]);
            if (digits.Success)
                sb.Append(digits.Value);
            if (postfix.Success)
                sb.Append("_").Append(postfix.Value);

            return sb.ToString();
        }
    }
}