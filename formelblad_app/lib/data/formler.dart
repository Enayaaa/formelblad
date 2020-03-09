import 'dart:convert';

final Map<String, dynamic> data = jsonDecode(jsonData);

const jsonData = r"""{
    "matematik": {
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
