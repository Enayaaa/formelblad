import 'dart:convert';

final Map<String, dynamic> data = jsonDecode(jsonData);

const jsonData = r"""{
    "matematik": {
        "områden": [
            {
                "titel": "Sannolikhetsteori och statistik",
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
            },
            {
                "titel": "Aritmetik",
                "delområden": [
                    {
                        "titel": "Aritmetisk summa",
                        "beskrivning": "Summan för en aritmetisk talföljd",
                        "formler": [
                            {
                                "kommentar": "Summan av en aritmetisk talf\u00F6jd där differens mellan varje tal i talf\u00F6ljden är konstant:",
                                "formler": [
                                    "s_n=a_1+a_2+a_3+...+a_n=\\frac{n(a_1+a_n)}{2}"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Aritmetisk talföljd",
                        "beskrivning": "Generella formler för aritmetisk talföljd",
                        "formler": [
                            {
                                "kommentar": "I en aritmetisk talföljd är differensen mellan varje par av efterföljande tal konstant.",
                                "formler": [
                                    "a_n=a_1+(n-1)d",
                                    "d=a_n-a_{n-1}"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Geometrisk summa",
                        "beskrivning": "Summan för en geometrisk talföljd",
                        "formler": [
                            {
                                "kommentar": "Summan av en geometrisk talföljd där kvoten mellan varje par av efterföljande tal är konstant där \\(, k\\neq1\\)",
                                "formler": [
                                    "s_n=a+ak+ak^2+...+ak^{n-1}=\\frac{a(k^n-1)}{k-1}"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Geometrisk talföljd",
                        "beskrivning": "Generell formell för aritmetisk talföljd",
                        "formler": [
                            {
                                "kommentar": "I en geometrisk talföljd är kvoten mellan varje par av efterföljande tal konstant.",
                                "formler": [
                                    "a_n=a_1\\cdot k^{n-1}"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Logaritmlagar",
                        "beskrivning": "För lösning av exponetialekvationer",
                        "formler": [
                            {
                                "kommentar": "För \\(y > 0\\):",
                                "formler": [
                                    "10^x=y\\Leftrightarrow x=lg\\,y",
                                    "e^x=y \\Leftrightarrow x=ln\\, y"
                                ]
                            },
                            {
                                "kommentar": "För \\(y > 0\\) och \\(x > 0\\):",
                                "formler": [
                                    "lg\\, xy=lg\\, x+lg\\, y",
                                    "lg \\frac{x}{y}=lg\\,x-lg\\, y",
                                    "lg\\, x^p=p\\cdot lg\\, x"
                                ]
                            }
                        ]
                    },
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
            },
            {
                "titel": "Geometri",
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
            },
            {
                "titel": "Algebra",
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
            },
            {
                "titel": "Matematisk analys",
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
            },
            {
                "titel": "Diskret matematik",
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
            },
            {
                "titel": "Numerisk analys",
                "delområden": [
                    {
                        "titel": "Ekvationer",
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
                        "titel": "Integraler",
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
                        "titel": "Ordinära differentialekvationer",
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
                        "titel": "Partiella differentialekvationer",
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
                        "titel": "Felanalys",
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
    "fysik": {
        "områden": [
            {
                "titel": "Klassisk mekanik",
                "delområden": [
                    {
                        "titel": "Position och dess derivator",
                        "beskrivning": "",
                        "formler": [
                            {
                                "kommentar": "",
                                "formler": [
                                    "v = {ds \\over dt}",
                                    "v_m = {\\Delta s \\over \\Delta t}",
                                    "a = {dv \\over dt}",
                                    "a_m = {\\Delta v \\over \\Delta t}"
                                ]
                            }
                        ]
                    },
                    {
                        "titel": "Hello test",
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
                "titel": "Ljud och andra mekaniska vågor",
                "delområden": [
                    {
                        "titel": "Fjädrar",
                        "beskrivning": "där \\(k\\) är fjäderkonstanten [\\(N/m\\)] och \\(\\Delta l\\) är förändringen av fjäderns längd [\\(m\\)].",
                        "formler": [
                            {
                                "kommentar": "Hookes lag",
                                "formler": [
                                    "F = k \\cdot \\Delta l"
                                ]
                            },
                            {
                                "title": "Potentiell energi i en fjäder",
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
    "kemi": {
        "formler": {},
        "tabeller": {}
    }
}""";
