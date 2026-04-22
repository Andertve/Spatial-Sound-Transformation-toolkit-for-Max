{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 59.0, 133.0, 1419.0, 815.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 167.0, 189.0, 1000.0, 759.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 323.0, 129.0, 75.0, 22.0 ],
                                    "text": "4, 1. 15500"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 157.0, 108.0, 75.0, 22.0 ],
                                    "text": "10, 1. 90000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 76.0, 173.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 100.0, 75.0, 22.0 ],
                                    "text": "1, 10. 90000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 157.0, 143.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-96",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-97",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 157.0, 264.486725, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-38", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-97", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-96", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1094.0, 258.0, 69.0, 22.0 ],
                    "text": "p line-ramp"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 586.0, 440.0, 22.0, 22.0 ],
                    "text": "t 1"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 586.0, 383.0, 39.0, 22.0 ],
                    "text": "r start"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "id": "obj-85",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 924.0, 270.0, 154.0, 51.0 ],
                    "text": "Interpolating between 9 presets controlling 3 parameters"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 0.0, 1000.0, 759.2 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 131.5, 236.0, 52.0, 22.0 ],
                                    "text": "$1 4000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 131.5, 268.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 83.0, 204.0, 52.0, 22.0 ],
                                    "text": "$1 4000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 83.0, 236.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 172.0, 52.0, 22.0 ],
                                    "text": "$1 4000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 147.5, 200.0, 129.0, 22.0 ],
                                    "text": "random @range 0.5 3."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 109.0, 172.0, 129.0, 22.0 ],
                                    "text": "random @range 0.5 3."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 50.0, 204.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 135.0, 100.0, 69.0, 22.0 ],
                                    "text": "metro 5500"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 83.0, 146.0, 129.0, 22.0 ],
                                    "text": "random @range 0.5 3."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-76",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 135.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-77",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 350.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-78",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 83.0, 350.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-79",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 131.5, 350.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "order": 2,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "order": 1,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "order": 0,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 0 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 641.0, 461.0, 79.0, 22.0 ],
                    "text": "p randomizer"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 641.0, 425.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1094.0, 218.0, 39.0, 22.0 ],
                    "text": "r start"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 344.5, 24.0, 41.0, 22.0 ],
                    "text": "s start"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-37",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1094.0, 295.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 1094.0, 327.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-42", "number", "float", 45.0, 5, "obj-44", "number", "float", 934.0, 5, "obj-56", "number", "float", 934.0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-42", "number", "float", 299.0, 5, "obj-44", "number", "float", 1172.0, 5, "obj-56", "number", "float", 1043.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-42", "number", "float", 1.2000000476837158, 5, "obj-44", "number", "float", 567.0, 5, "obj-56", "number", "float", 1238.0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-42", "number", "float", 5.300000190734863, 5, "obj-44", "number", "float", 121.0, 5, "obj-56", "number", "float", 796.0 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-42", "number", "float", 9.0, 5, "obj-44", "number", "float", 121.0, 5, "obj-56", "number", "float", 1061.0 ]
                        },
                        {
                            "number": 6,
                            "data": [ 5, "obj-42", "number", "float", 24.0, 5, "obj-44", "number", "float", 378.0, 5, "obj-56", "number", "float", 1061.0 ]
                        },
                        {
                            "number": 7,
                            "data": [ 5, "obj-42", "number", "float", 274.0, 5, "obj-44", "number", "float", 1267.0, 5, "obj-56", "number", "float", 1284.0 ]
                        },
                        {
                            "number": 8,
                            "data": [ 5, "obj-42", "number", "float", 17.0, 5, "obj-44", "number", "float", 714.0, 5, "obj-56", "number", "float", 873.0 ]
                        },
                        {
                            "number": 9,
                            "data": [ 5, "obj-42", "number", "float", 17.0, 5, "obj-44", "number", "float", 486.0, 5, "obj-56", "number", "float", 1442.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-56",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 857.0, 405.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "linecount": 4,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 857.0, 439.0, 108.0, 62.0 ],
                    "text": "prepend /SSTT-example-15/GlobalDecayTime"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.0, 512.5, 150.0, 33.0 ],
                    "text": "Relative Decay times on Low, Mid and High"
                }
            },
            {
                "box": {
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-46",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 541.0, 505.0, 44.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0.5 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[10]",
                            "parameter_mmax": 10.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "trh",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial[6]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-47",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 541.0, 560.0, 42.0, 21.0 ],
                    "text": "/trh $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-44",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 972.0, 405.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-42",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1095.0, 401.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "linecount": 3,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1095.0, 440.0, 99.0, 49.0 ],
                    "text": "prepend /SSTT-example-15/RM_freq"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "linecount": 4,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 978.0, 439.0, 100.0, 62.0 ],
                    "text": "prepend /SSTT-example-15/spDelay/DelayTime/raw"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 998.0, 546.0, 65.0, 22.0 ],
                    "saved_object_attributes": {
                        "outputformat": "osc_packet"
                    },
                    "text": "param.osc"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-16",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 398.0, 12.0, 150.0, 64.0 ],
                    "text": "just a snippet of random pink noise is used as the exiter signal"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-15",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 475.0, 229.0, 150.0, 51.0 ],
                    "text": "A limiter keeping the feedback buildup in check"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.7843137254901961, 0.9058823529411765, 0.7058823529411765, 0.49 ],
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-9",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 665.0, 279.5, 166.0, 100.0 ],
                    "text": "Combining Spatial Delay and Spatial RingMod in feedback with spat5.reverb. This example is static in 5th order Ambisonic"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-4",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Delay.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 229.0, 292.0, 241.0, 75.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 662.77734375, 495.25390625, 241.0, 75.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 223.0, 33.0, 38.0, 22.0 ],
                    "text": "pink~"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-5",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Decoder-Output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 232.0, 671.0, 1131.0, 172.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 787.4453125, 793.91015625, 1005.0, 170.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 303.0, 6.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 303.0, 41.0, 39.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 223.0, 69.0, 55.0, 22.0 ],
                    "text": "sah~ 0.5"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-encode.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 213.0, 103.0, 304.0, 108.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 420.2421875, 87.93359375, 287.0, 108.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 232.0, 859.0, 54.0, 22.0 ],
                    "text": "mc.dac~"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 232.0, 633.0, 106.0, 22.0 ],
                    "text": "mc.+~ @chans 36"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 359.0, 519.0, 46.0, 22.0 ],
                    "text": "/ 1000."
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.248147342932382, 0.389555476390115, 0.57502990756344, 1.0 ],
                    "activefgdialcolor": [ 0.297134484679832, 0.297134407548343, 0.297134427704033, 1.0 ],
                    "activeneedlecolor": [ 0.2, 0.2, 0.2, 1.0 ],
                    "annotation": "",
                    "bordercolor": [ 0.247786024510221, 0.247785958188012, 0.247785975519065, 1.0 ],
                    "dialcolor": [ 0.297134484679832, 0.297134407548343, 0.297134427704033, 1.0 ],
                    "fgdialcolor": [ 0.297134484679832, 0.297134407548343, 0.297134427704033, 1.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "hint": "",
                    "id": "obj-2",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.297134484679832, 0.297134407548343, 0.297134427704033, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "panelcolor": [ 0.736950910211998, 0.736950732249687, 0.736950778673858, 1.0 ],
                    "parameter_enable": 1,
                    "patching_rect": [ 482.0, 505.0, 44.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "dialcolor": {
                            "expression": ""
                        },
                        "fgdialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "needlecolor": {
                            "expression": ""
                        },
                        "panelcolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[6]",
                            "parameter_mmax": 10.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "trm",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [ 0.2, 0.2, 0.2, 1.0 ],
                    "tricolor": [ 0.2, 0.2, 0.2, 1.0 ],
                    "varname": "live.dial[5]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 482.0, 560.0, 45.0, 21.0 ],
                    "text": "/trm $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.248147342932382, 0.389555476390115, 0.57502990756344, 1.0 ],
                    "activefgdialcolor": [ 0.297134484679832, 0.297134407548343, 0.297134427704033, 1.0 ],
                    "activeneedlecolor": [ 0.2, 0.2, 0.2, 1.0 ],
                    "annotation": "",
                    "bordercolor": [ 0.247786024510221, 0.247785958188012, 0.247785975519065, 1.0 ],
                    "dialcolor": [ 0.297134484679832, 0.297134407548343, 0.297134427704033, 1.0 ],
                    "fgdialcolor": [ 0.297134484679832, 0.297134407548343, 0.297134427704033, 1.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "hint": "",
                    "id": "obj-18",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.297134484679832, 0.297134407548343, 0.297134427704033, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "panelcolor": [ 0.736950910211998, 0.736950732249687, 0.736950778673858, 1.0 ],
                    "parameter_enable": 1,
                    "patching_rect": [ 422.0, 505.0, 44.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "dialcolor": {
                            "expression": ""
                        },
                        "fgdialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "needlecolor": {
                            "expression": ""
                        },
                        "panelcolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[7]",
                            "parameter_mmax": 10.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 0,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "trl",
                            "parameter_osc_valuemode": 1,
                            "parameter_shortname": "trl",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [ 0.2, 0.2, 0.2, 1.0 ],
                    "tricolor": [ 0.2, 0.2, 0.2, 1.0 ],
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 422.0, 560.0, 38.0, 21.0 ],
                    "text": "/trl $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.248147342932382, 0.389555476390115, 0.57502990756344, 1.0 ],
                    "activefgdialcolor": [ 0.297134484679832, 0.297134407548343, 0.297134427704033, 1.0 ],
                    "activeneedlecolor": [ 0.2, 0.2, 0.2, 1.0 ],
                    "annotation": "",
                    "bordercolor": [ 0.247786024510221, 0.247785958188012, 0.247785975519065, 1.0 ],
                    "dialcolor": [ 0.297134484679832, 0.297134407548343, 0.297134427704033, 1.0 ],
                    "fgdialcolor": [ 0.297134484679832, 0.297134407548343, 0.297134427704033, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.019608, 0.078431, 0.0 ],
                    "hint": "",
                    "id": "obj-41",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.297134484679832, 0.297134407548343, 0.297134427704033, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "panelcolor": [ 0.736950910211998, 0.736950732249687, 0.736950778673858, 1.0 ],
                    "parameter_enable": 1,
                    "patching_rect": [ 359.0, 461.0, 61.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "dialcolor": {
                            "expression": ""
                        },
                        "fgdialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "needlecolor": {
                            "expression": ""
                        },
                        "panelcolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 1800.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "GlobalDecay",
                            "parameter_mmax": 30000.0,
                            "parameter_mmin": 20.0,
                            "parameter_modmode": 0,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "GlobalDecayTime",
                            "parameter_osc_valuemode": 1,
                            "parameter_shortname": "GlobalDecay",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [ 0.2, 0.2, 0.2, 1.0 ],
                    "tricolor": [ 0.2, 0.2, 0.2, 1.0 ],
                    "varname": "live.dial[1]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-35",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 359.0, 549.0, 42.0, 21.0 ],
                    "text": "/tr0 $1"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "" ],
                    "patching_rect": [ 351.0, 588.0, 204.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.reverb~ @mc 1 @channels 36"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-14",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-RingMod.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 229.0, 383.0, 234.0, 66.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 732.0234375, 803.48828125, 234.0, 66.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 229.0, 240.5, 221.0, 35.0 ],
                    "text": "mc.limi~ @dcblock 1 @chans 36 @threshold -15 @preamp 20."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 0,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 1 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 1,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "order": 0,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 1144.0, 377.23828125, 1220.09765625, 377.23828125, 1210.35546875, 311.16796875, 1144.4375, 286.7109375 ],
                    "source": [ "obj-57", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "order": 0,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "order": 1,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "order": 2,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 241.5, 666.3125, 87.79296875, 666.3125, 87.79296875, 229.0, 238.5, 229.0 ],
                    "order": 0,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-80", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-80", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-98", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-14::obj-20": [ "ShowCh[13]", "showCh", 0 ],
            "obj-14::obj-36": [ "RM_freq", "Frequency", 0 ],
            "obj-14::obj-5": [ "live.tab[3]", "live.tab", 0 ],
            "obj-14::obj-79": [ "ShowCh[14]", "showCh", 0 ],
            "obj-18": [ "live.dial[7]", "trl", 0 ],
            "obj-2": [ "live.dial[6]", "trm", 0 ],
            "obj-3::obj-16": [ "ambiorder[1]", "ambiorder", 0 ],
            "obj-3::obj-20": [ "ShowCh[1]", "showCh", 0 ],
            "obj-3::obj-3": [ "ambiorder", "ambiorder", 0 ],
            "obj-3::obj-57": [ "live.text[15]", "live.text[9]", 0 ],
            "obj-3::obj-79": [ "ShowCh[2]", "showCh", 0 ],
            "obj-41": [ "GlobalDecay", "GlobalDecay", 0 ],
            "obj-46": [ "live.dial[10]", "trh", 0 ],
            "obj-4::obj-12": [ "ShowCh[17]", "showCh", 0 ],
            "obj-4::obj-13": [ "ShowCh[19]", "showCh", 0 ],
            "obj-4::obj-26": [ "DelayTime[2]", "DelayTime", 0 ],
            "obj-4::obj-30": [ "Harmonics[2]", "harmonics", 0 ],
            "obj-4::obj-40": [ "live.dial[5]", "Feedback", 0 ],
            "obj-5::obj-10": [ "Crossover", "Crossover", 0 ],
            "obj-5::obj-103::obj-21": [ "live.menu", "live.menu", 0 ],
            "obj-5::obj-12": [ "live.menu[8]", "live.menu[2]", 0 ],
            "obj-5::obj-14": [ "mc.live.gain~[2]", "loudspeakers", 0 ],
            "obj-5::obj-22::obj-102": [ "live.toggle[436]", "live.toggle", 0 ],
            "obj-5::obj-22::obj-3": [ "live.text[1]", "live.text[9]", 0 ],
            "obj-5::obj-22::obj-57": [ "live.text[9]", "live.text[9]", 0 ],
            "obj-5::obj-22::obj-58": [ "live.text[10]", "live.text[9]", 0 ],
            "obj-5::obj-22::obj-62": [ "live.text[12]", "live.text[9]", 0 ],
            "obj-5::obj-22::obj-72": [ "live.text[14]", "live.text[8]", 0 ],
            "obj-5::obj-25": [ "live.tab[2]", "live.tab[2]", 0 ],
            "obj-5::obj-27": [ "live.menu[9]", "live.menu", 0 ],
            "obj-5::obj-31": [ "Headphones_vol", "headphones", 0 ],
            "obj-5::obj-35": [ "Sub_ch_freq", "freq", 0 ],
            "obj-5::obj-36": [ "live.toggle[20]", "live.toggle[2]", 0 ],
            "obj-5::obj-38": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-5::obj-39": [ "Sub_ch_sel", "Sub_ch_sel", 0 ],
            "obj-5::obj-4": [ "ShowCh[3]", "showCh", 0 ],
            "obj-5::obj-45": [ "live.menu[10]", "live.menu", 0 ],
            "obj-5::obj-46": [ "Sub_ch_vol", "Sub_ch_vol", 0 ],
            "obj-5::obj-55": [ "live.toggle[19]", "live.toggle[2]", 0 ],
            "obj-5::obj-58": [ "live.text[13]", "live.text[9]", 0 ],
            "obj-5::obj-7": [ "live.menu[5]", "live.menu[1]", 0 ],
            "obj-5::obj-79": [ "ShowCh[15]", "showCh", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-3::obj-20": {
                    "parameter_longname": "ShowCh[1]"
                },
                "obj-3::obj-79": {
                    "parameter_longname": "ShowCh[2]"
                },
                "obj-5::obj-4": {
                    "parameter_longname": "ShowCh[3]"
                },
                "obj-5::obj-79": {
                    "parameter_longname": "ShowCh[15]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}