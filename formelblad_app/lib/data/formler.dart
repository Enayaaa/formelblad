import 'dart:convert';

final Map<String, dynamic> data = jsonDecode(jsonData);

const jsonData = r"""{
    "matematik": {
        "områden": [
            {
                "titel": "Algebra",
                "delområden": [
                    {
                        "titel": "Konjugatregeln",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "Konjugatregeln används för att multiplicera två parentesuttryck bestående av två termer var där ena uttrycket beskriver summan av termerna och det andra uttrycket beskriver differensen mellan termerna.",
                                "formler": [
                                    "(a+b)(a-b)=a^2-b^2"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Kvadratkomplettering",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "Kvadratkomplettering är att skriva ett andragradspolynom i kvadratisk form och används bland annat för att lösa andragradsekvationer.",
                                "formler": [
                                    "x^2+px=x^2+px+\\left(\\frac{p}{2}\\right)^2-\\left(\\frac{p}{2}\\right)^2=",
                                    "=\\left(x+\\frac{p}{2}\\right)^2-\\left(\\frac{p}{2}\\right)^2"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Kvadreringsregler",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "Första kvadreringsregeln används för att multiplicera ett parentesuttryck, som beskriver summan av två termer, med sig själv.",
                                "formler": [
                                    "(a+b)^2=a^2+2ab+b^2"
                                ]
                            },
                            {
                                "kommentar": "Andra kvadreringsregeln används för att multiplicera ett parentesuttryck, som beskriver differensen av två termer, med sig själv.",
                                "formler": [
                                    "(a-b)^2=a^2-2ab+b^2"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "PQ-formeln",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "Andragradsekvationer av typen \\(x^2+px+q=0\\) har rötterna:",
                                "formler": [
                                    "x_1=-\\frac{p}{2}+\\sqrt{\\left(\\frac{p}{2} \\right )^2-q}",
                                    "x_2=-\\frac{p}{2}-\\sqrt{\\left(\\frac{p}{2} \\right )^2-q}"
                                ]
                            },
                            {
                                "kommentar": "Andragradsekvationer av typen \\(ax^2+bx+c=0\\) har rötterna:",
                                "formler": [
                                    "x_1=-\\frac{b}{2a}+\\frac{\\sqrt{b^2-4ac}}{2a}",
                                    "x_2=-\\frac{b}{2a}-\\frac{\\sqrt{b^2-4ac}}{2a}"
                                ]
                            },
                            {
                                "kommentar": "PQ-formeln används för att lösa fullkomliga andragradsekvationer.",
                                "formler": [
                                    ""
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "ABC-formeln",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "Andragradsekvationer av typen \\(ax^2+bx+c=0\\) där \\(a \\neq 0\\) har rötterna:",
                                "formler": [
                                    "x = - \\frac{b}{2a} \\pm \\sqrt{\\frac{b^2}{(2a)^2} - \\frac{c}{a}}=",
                                    "= \\frac{-b \\pm \\sqrt{b^2 - 4ac}}{2a}"
                                ]
                            },
                            {
                                "kommentar": "ABC-formeln används för att lösa fullkomliga andragradsekvationer där det finns en koefficient framför \\(x^2\\).",
                                "formler": [
                                    ""
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Tredjegradsbinom",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "",
                                "formler": [
                                    "(a+b)^3=a^3+3a^2b+3ab^2+b^3",
                                    "(a-b)^3=a^3-3a^2b+3ab^2-b^3",
                                    "a^3+b^3=(a+b)(a^2-ab+b^2)",
                                    "a^3-b^3=(a-b)(a^2+ab+b^2)"
                                ]
                            }
                        ]
                    }
                ]
            },
            {
                "titel": "Aritmetik",
                "delområden": [
                    {
                        "titel": "Aritmetisk summa",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "Den här formeln används för att beräkna summan av talen i en aritmetisk talföljd; en talföljd där skillnaden, differensen, mellan varje par av efterföljande tal är konstant.",
                                "formler": [
                                    "s_n=a_1+a_2+a_3+...+a_n=\\frac{n(a_1+a_n)}{2}"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Aritmetisk talföljd",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "En aritmetisk talföljd är en talföljd där skillnaden, differensen, mellan varje par av efterföljande tal är konstant.",
                                "formler": [
                                    "a_n=a_1+(n-1)d",
                                    "d=a_n-a_{n-1}"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Geometrisk summa",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "Den här formeln används för att beräkna summan av talen i en geometrisk talföljd; en talföljd där kvoten mellan varje par av efterföljande tal är konstant.",
                                "formler": [
                                    "s_n=a+ak+ak^2+...+ak^{n-1}=\\frac{a(k^n-1)}{k-1}",
                                    "där \\, k\\neq1"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Geometrisk talföljd",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "En geometrisk talföljd är en talföljd där kvoten mellan varje par av efterföljande tal är konstant.",
                                "formler": [
                                    "a_n=a_1\\cdot k^{n-1}"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Logaritmlagar",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "För positiva y gäller:",
                                "formler": [
                                    "10^x=y\\Leftrightarrow x=lg\\,y",
                                    "e^x=y \\Leftrightarrow x=ln\\, y"
                                ]
                            },
                            {
                                "kommentar": "För positiva x och y gäller:",
                                "formler": [
                                    "lg\\, xy=lg\\, x+lg\\, y",
                                    "lg \\frac{x}{y}=lg\\,x-lg\\, y",
                                    "lg\\, x^p=p\\cdot lg\\, x"
                                ]
                            },
                            {
                                "kommentar": "Logaritmlagarna är användbara vid lösningen av exponentialekvationer.",
                                "formler": []
                            }
                        ]
                    }
                ]
            },
            {
                "titel": "Differential- och integralkalkyl",
                "delområden": [
                    {
                        "titel": "Derivatans definition",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "Derivatans definition är ett generellt uttryck som gäller för alla gränsvärden.",
                                "formler": [
                                    "f'(a)=\\lim_{h\\rightarrow 0}\\frac{f(a+h)-f(a)}{(a+h)-a}=",
                                    "=\\lim_{h\\rightarrow 0}\\frac{f(a+h)-f(a)}{h}"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Deriveringsregler",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "<table> <tbody> <tr> <td style=\"background-color: rgb(62, 111, 144); border-color: rgb(36, 85, 118); color:white;\">Funktion <\/td><td style=\"background-color: rgb(62, 111, 144); border-color: rgb(36, 85, 118);color:white;\"> Derivata&nbsp;<\/td><\/tr><tr> <td>&nbsp;\\(x^a\\) d\u00E4r \\(a\\) \u00E4r ett reellt tal<\/td><td>&nbsp;\\(ax^{a-1}\\)<\/td><\/tr><tr> <td>&nbsp;\\(a^x\\) \\((a>0)\\)<\/td><td>&nbsp;\\(a^x\\ln a\\)<\/td><\/tr><tr> <td>&nbsp;\\(\\ln x\\) \\((x>0)\\)<\/td><td>&nbsp;\\(\\frac{1}{x}\\)<\/td><\/tr><tr> <td>&nbsp;\\(e^x\\)<\/td><td>&nbsp;\\(e^x\\)<\/td><\/tr><tr> <td>&nbsp;\\(e^{kx}\\)<\/td><td>&nbsp;\\(k \\cdot e^{kx}\\)<\/td><\/tr><tr> <td>&nbsp;\\(\\frac{1}{x}\\)<\/td><td>&nbsp;\\(-\\frac{1}{x^2}\\)<\/td><\/tr><tr> <td>&nbsp;\\(\\sin x\\)<\/td><td>&nbsp;\\(\\cos x\\)<\/td><\/tr><tr> <td>&nbsp;\\(\\cos x\\)<\/td><td>&nbsp;\\(-\\sin x\\)<\/td><\/tr><tr> <td>&nbsp;\\(\\tan x\\)<\/td><td>&nbsp;\\(1+\\tan^2{x}=\\frac{1}{\\cos^2x}\\)<\/td><\/tr><tr> <td>&nbsp;\\(f(x)+g(x)\\)<\/td><td>&nbsp;\\(f'(x)+g'(x)\\)<\/td><\/tr><\/tbody> <\/table>",
                                "formler": [
                                    ""
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Exponentialfunktioner",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "",
                                "formler": [
                                    ""
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Kedjeregeln",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "",
                                "formler": [
                                    ""
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Primitiva funktioner",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "",
                                "formler": [
                                    ""
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Integrationsregler",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "",
                                "formler": [
                                    ""
                                ]
                            }
                        ]
                    }
                ]
            }
        ],
        "tabeller": {}
    },
    "fysik": {
        "områden": [
            {
                "titel": "",
                "delområden": [
                    {
                        "titel": "",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "",
                                "formler": [
                                    "",
                                    "",
                                    "",
                                    ""
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "",
                        "beskrivning": "",
                        "formler": [
                            {}
                        ]
                    }
                ]
            },
            {
                "titel": "",
                "delområden": [
                    {
                        "titel": "",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "",
                                "formler": []
                            }
                        ]
                    }
                ]
            },
            {
                "titel": "",
                "delområden": [
                    {
                        "titel": "",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "",
                                "formler": [
                                    ""
                                ]
                            }
                        ]
                    }
                ]
            }
        ]
    },
    "kemi": {
        "områden": [
            {
                "titel": "",
                "delområden": [
                    {
                        "titel": "",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "",
                                "formler": [
                                    "",
                                    "",
                                    "",
                                    ""
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "",
                        "beskrivning": "",
                        "formler": [
                            {}
                        ]
                    }
                ]
            },
            {
                "titel": "",
                "delområden": [
                    {
                        "titel": "",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "",
                                "formler": []
                            }
                        ]
                    }
                ]
            },
            {
                "titel": "",
                "delområden": [
                    {
                        "titel": "",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "",
                                "formler": [
                                    ""
                                ]
                            }
                        ]
                    }
                ]
            }
        ]
    }
}""";
