import 'dart:convert';

final Map<String, dynamic> data = jsonDecode(jsonData);

const jsonData = r"""{
    "matematik": {
        "formler": {
            "Algebra": [
                {
                    "titel": "Räknelagar",
                    "body": [
                        {
                            "kommentar": "Kommutativa lagen vid addition och multiplikation",
                            "formler": [
                                "a+b=b+a",
                                "ab=ba"
                            ]
                        },
                        {
                            "kommentar": "Associativa lagen vid addition och multiplikation",
                            "formler": [
                                "(a+b)+c=a+(b+c)",
                                "(ab)\\cdot c = a \\cdot (bc)"
                            ]
                        },
                        {
                            "kommentar": "Distributiva lagen",
                            "formler": [
                                "a(b+c) = ab+ac"
                            ]
                        }
                    ]
                },
                {
                    "titel": "Kvadreringsregler m.m.",
                    "body": [
                        {
                            "kommentar": "Kvadreringsregler",
                            "formler": [
                                "(a+b)^2 = a^2 +2ab + b^2",
                                "(a-b)^2 = a^2 - 2ab + b^2"
                            ]
                        },
                        {
                            "kommentar": "Konjugatregeln",
                            "formler": [
                                "(a+b)(a-b) = a^2-b^2"
                            ]
                        },
                        {
                            "kommentar": "Kuberingsregler",
                            "formler": [
                                "(a+b)^3 = a^3+3a^2b+3ab^2+b^3",
                                "(a-b)^3 = a^3-3a^2b+3ab^2-b^3",
                                "a^3+b^3 = (a+b)(a^2-ab+b^2)",
                                "a^3-b^3 = (a-b)(a^2+ab+b^2)"
                            ]
                        }
                    ]
                },
                {
                    "titel": "Andragradsekvationen",
                    "body": [
                        {
                            "kommentar": "Rötterna till ekvationen \\(x^2+px+q = 0\\)",
                            "formler": [
                                "x_1 = {-{p\\over2}+{\\sqrt{{({p\\over2})^2}-q}}}",
                                "x_2 = {-{p\\over2}-{\\sqrt{{({p\\over2})^2}-q}}}"
                            ]
                        }
                    ]
                },
                {
                    "titel": "Närmevärden",
                    "body": [
                        {
                            "kommentar": "\\(a\\) är ett närmevärde till \\(\\alpha\\) med feluppskattningen \\(f\\)",
                            "formler": [
                                "a-f\\le\\alpha+f",
                                "\\alpha = a\\pm f"
                            ]
                        },
                        {
                            "kommentar": "Närmevärdets relativa fel",
                            "formler": [
                                "{a-\\alpha}\\over a"
                            ]
                        }
                    ]
                },
                {
                    "titel": "Potenslagar",
                    "body": [
                        {
                            "kommentar": "Potenslagarna gäller för reella tal \\(x\\) och \\(y\\) och positiva tal \\(a\\) och \\(b\\)",
                            "formler": [
                                "a^x\\cdot a^y = a^{x+y}",
                                "{a^x\\over{a^y}} = a^{x-y}",
                                "(a^x)^y = a^{xy}",
                                "a^x \\cdot b^x = (ab)^x",
                                "{a^x \\over b^x} = ({a\\over b})^x",
                                "a^{-x} = {1 \\over {a^x}}",
                                "a^0 = 1"
                            ]
                        }
                    ]
                }
            ]
        },
        "tabeller": {}
    },
    "fysik": {
        "formler": {},
        "tabeller": {}
    },
    "kemi": {
        "formler": {},
        "tabeller": {}
    }
}""";
