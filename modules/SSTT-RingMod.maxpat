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
        "rect": [ 134.0, 167.0, 1000.0, 700.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 738.0, 413.0, 91.0, 22.0 ],
                    "text": "r orderCh-show"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 742.0, 348.0, 69.0, 22.0 ],
                    "text": "r orderNum"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-20",
                    "ignoreclick": 1,
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 742.0, 382.0, 39.0, 13.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 197.0, 26.0, 26.0, 13.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "ShowCh[13]",
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
                    "fontsize": 8.0,
                    "id": "obj-79",
                    "ignoreclick": 1,
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 738.0, 455.0, 39.0, 13.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 197.0, 41.0, 26.0, 13.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "ShowCh[14]",
                            "parameter_mmax": 128.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "showCh",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "ShowChbox[1]"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "live.tab",
                    "num_lines_patching": 1,
                    "num_lines_presentation": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 594.0, 254.0, 100.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 72.0, 27.0, 100.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Harm", "Fb" ],
                            "parameter_longname": "live.tab[3]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 135.0, 484.0, 78.0, 22.0 ],
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
                    "patching_rect": [ 135.0, 452.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Bold",
                    "fontsize": 10.0,
                    "id": "obj-60",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 207.0, 594.0, 93.0, 16.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 82.0, 2.0, 80.0, 16.0 ],
                    "text": "Spat-RingMod"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-6",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 390.2809891887837, 292.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-2",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 266.0, 455.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-1",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 337.0, 239.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 0.901961, 0.901961, 0.901961, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.5 ],
                    "id": "obj-39",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 435.0, 404.0, 196.121216, 65.888824 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 232.0, 61.25 ],
                    "proportion": 0.39,
                    "rounded": 18
                }
            },
            {
                "box": {
                    "focusbordercolor": [ 0.0, 0.019608, 0.078431, 0.0 ],
                    "id": "obj-36",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 476.0, 279.0, 77.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ -8.0, 6.0, 77.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 300 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "RM_freq",
                            "parameter_mmax": 1500.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "RM_freq",
                            "parameter_shortname": "Frequency",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "RM_freq"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 332.2809891887837, 345.0, 77.0, 22.0 ],
                    "text": "HOA-RingFx"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 1 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 2 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 1 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-20": [ "ShowCh[13]", "showCh", 0 ],
            "obj-36": [ "RM_freq", "Frequency", 0 ],
            "obj-5": [ "live.tab[3]", "live.tab", 0 ],
            "obj-79": [ "ShowCh[14]", "showCh", 0 ],
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