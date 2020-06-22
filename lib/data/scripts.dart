/* 
void main() {
  List formler = [
    "10^{24}",
    "Kvadriljon",
    "yotta",
    "Y",
    "10^{21}",
    "Triljard",
    "zetta",
    "Z",
    "10^{18}",
    "Triljon",
    "exa",
    "E",
    "10^{15}",
    "Biljard",
    "peta",
    "P",
    "10^{12}",
    "Biljon",
    "tera",
    "T",
    "10^9",
    "Miljard",
    "giga",
    "G",
    "10^6",
    "Miljon",
    "mega",
    "M",
    "10^3",
    "Tusen",
    "kilo",
    "k",
    "10^2",
    "Hundra",
    "hekto",
    "h",
    "10^1",
    "Tio",
    "deka",
    "da",
    "10^0",
    "Ett",
    "(-)",
    "(-)",
    "10^-1",
    "Tiondel",
    "deci",
    "d",
    "10^-2",
    "Hundradel",
    "centi",
    "c",
    "10^-3",
    "Tusendel",
    "milli",
    "m",
    "10^-6",
    "Miljondel",
    "mikro",
    "\mu",
    "10^-9",
    "Miljarddel",
    "nano",
    "n",
    "10^{-12}",
    "Biljondel",
    "piko",
    "p",
    "10^{-15}",
    "Biljarddel",
    "femto",
    "f",
    "10^{-18}",
    "Triljondel",
    "atto",
    "a",
    "10^{-21}",
    "Triljarddel",
    "zepto",
    "z",
    "10^{-24}",
    "Kvadriljondel",
    "yokto",
    "y"
  ];

  int nums = 0;
  int columns = 4;
  int f = 0;

  for (int i = 0; i < formler.length; i++) {
    f++;
    print(i % columns == 0 ? "<tr>" : "");
    print(f != 2
        ? "<td>&nbsp;\\(" + formler[i] + "\\)</td>"
        : "<td>&nbsp;" + formler[i] + "</td>");
    nums += 1;
    print(nums % columns == 0 ? "</tr>" : "");
    f == 4 ? f = 0 : f = f;
  }
}

 */
