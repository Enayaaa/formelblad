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