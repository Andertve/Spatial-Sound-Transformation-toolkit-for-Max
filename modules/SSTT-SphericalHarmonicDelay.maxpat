{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 3,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 478.0, 155.0, 1000.0, 759.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "fontsize": 9.5,
                    "id": "obj-11",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 382.0, 151.0, 28.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 182.0, 91.0, 214.0, 17.0 ],
                    "text": "Spherical Harmonic Delay and Pitch Processor"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 639.0, 47.0, 100.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 223.0, 70.0, 100.0, 16.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-18", "textedit", "restoretext", "1/1 12/11 11/10 10/9 9/8 8/7 7/6 6/5 5/4 4/3 11/8 3/2 7/4 15/8 2/1 1/2 11/8 2/3 13/11" ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-18", "textedit", "restoretext", "-12 0 2 4 7 1.5 8" ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-18", "textedit", "restoretext", "harmonic 1" ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-18",
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 454.0, 123.0, 232.0, 74.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 9.0, 470.5, 51.0 ],
                    "text": "harmonic 1"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 454.0, 210.0, 59.0, 22.0 ],
                    "text": "route text"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 631.0, 230.0, 86.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 109.0, 66.0, 86.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.dial[1]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Interpolate cents",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial[1]"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 575.0, 230.0, 41.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 53.0, 66.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.dial",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Spread",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 22.0, 147.0, 78.0, 22.0 ],
                    "text": "s SPTT_load"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 22.0, 115.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 220.0, 130.0, 69.0, 22.0 ],
                    "text": "r orderNum"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-35",
                    "ignoreclick": 1,
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 220.0, 164.0, 39.0, 13.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 455.0, 85.0, 26.0, 13.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "ShowCh[19]",
                            "parameter_mmax": 128.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "showCh",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "OrderNum"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 232.0, 290.0, 91.0, 22.0 ],
                    "text": "r orderCh-show"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-82",
                    "ignoreclick": 1,
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 242.0, 336.0, 39.0, 13.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 455.0, 100.0, 26.0, 13.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_linknames": 1,
                            "parameter_longname": "ShowChbox[2]",
                            "parameter_mmax": 128.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "showCh",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "ShowChbox[2]"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-4",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 397.0, 342.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-2",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 319.0, 188.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-163",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 716.0, 175.0, 86.0, 22.0 ],
                    "text": "list harmonic 1"
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 705.0, 118.0, 466.0, 22.0 ],
                    "text": "list 1/1 12/11 11/10 10/9 9/8 8/7 7/6 6/5 5/4 4/3 11/8 3/2 7/4 15/8 2/1 1/2 11/8 2/3 13/11"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 705.0, 142.0, 114.0, 22.0 ],
                    "text": "list -12 0 2 4 7 1.5 8"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 368.0, 148.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 78.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 368.0, 192.0, 55.0, 22.0 ],
                    "text": "s delcalc"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 397.0, 281.0, 95.0, 22.0 ],
                    "text": "HarmDelayPitch"
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 0.901961, 0.901961, 0.901961, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.5 ],
                    "id": "obj-73",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 70.0, 202.0, 196.121216, 65.888824 ],
                    "presentation": 1,
                    "presentation_rect": [ 1.0, 1.0, 492.0, 122.0 ],
                    "proportion": 0.39,
                    "rounded": 18
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
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 2 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 3 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-163", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-22", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-12": [ "live.dial", "Spread", 0 ],
            "obj-13": [ "live.dial[1]", "Interpolate cents", 0 ],
            "obj-35": [ "ShowCh[19]", "showCh", 0 ],
            "obj-82": [ "ShowChbox[2]", "showCh", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}