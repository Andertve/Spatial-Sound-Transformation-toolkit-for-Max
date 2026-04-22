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
        "rect": [ 159.0, 95.0, 956.0, 853.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-73",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 611.0, 223.5, 109.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 280.0, 16.0, 34.0, 15.0 ],
                    "text": "init deg"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-72",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 496.0, 254.0, 108.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 218.0, 16.0, 60.0, 15.0 ],
                    "text": "grain size ms"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-71",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 345.0, 235.0, 106.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 167.0, 16.0, 56.0, 15.0 ],
                    "text": "speed deg/s"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 718.0, 29.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 269.0, 28.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.numbox[6]",
                            "parameter_mmax": 360.0,
                            "parameter_mmin": -360.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.numbox[4]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.numbox[2]"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 724.0, 61.0, 44.0, 22.0 ],
                    "text": "/init $1"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 649.0, 33.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 223.0, 28.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 50.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.numbox[5]",
                            "parameter_mmax": 1000.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.numbox[4]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.numbox[1]"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 649.0, 61.0, 71.0, 22.0 ],
                    "text": "/grain int $1"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 573.0, 33.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 174.0, 28.5, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 50.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.numbox[4]",
                            "parameter_mmax": 360.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.numbox[4]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.numbox"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 576.0, 61.0, 61.0, 22.0 ],
                    "text": "/speed $1"
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
                    "presentation_rect": [ 108.0, 5.0, 105.0, 16.0 ],
                    "text": "SSTT-Rotation"
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
                    "id": "obj-6",
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
                    "id": "obj-103",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 520.0, 514.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 520.0, 545.0, 111.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "sptt-hoa-rotate.js",
                        "parameter_enable": 0
                    },
                    "text": "js sptt-hoa-rotate.js"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 402.0, 545.0, 91.0, 22.0 ],
                    "text": "r orderCh-show"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 406.0, 480.0, 69.0, 22.0 ],
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
                    "patching_rect": [ 406.0, 514.0, 39.0, 13.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 286.0, 62.0, 26.0, 13.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "ShowCh[3]",
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
                    "patching_rect": [ 402.0, 587.0, 39.0, 13.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 286.0, 77.0, 26.0, 13.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "ShowCh[4]",
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
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 426.0, 63.0, 76.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 196.0, 46.0, 53.225808799266815, 20.0 ],
                    "text": "autoRot"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 317.0, 79.0, 76.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 196.0, 72.0, 71.50537949800491, 20.0 ],
                    "text": "counter-rot"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 255.0, 136.0, 19.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 137.0, 28.0, 16.0, 16.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[9]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle[4]"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 198.0, 136.0, 19.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 28.0, 16.0, 16.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[6]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle[3]"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 141.0, 136.0, 19.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 23.0, 28.0, 16.0, 16.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[5]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "rot-yaw_onoff",
                            "parameter_shortname": "yawonoff",
                            "parameter_type": 2
                        }
                    },
                    "varname": "rot-yaw_onoff"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 255.0, 175.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 198.0, 175.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 141.0, 175.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-10",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 278.0, 491.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-8",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 454.0, 364.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 324.0, 135.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 324.0, 108.0, 19.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.0, 74.0, 15.0, 15.25 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "counter-rot",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "counter-rot",
                            "parameter_shortname": "counter-rot",
                            "parameter_type": 2
                        }
                    },
                    "varname": "counter-rot"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 324.0, 175.0, 62.0, 22.0 ],
                    "text": "switch 2 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 404.0, 142.0, 32.5, 21.0 ],
                    "text": "* -1."
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 404.0, 73.0, 15.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.0, 49.0, 15.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[7]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "autorotate",
                            "parameter_shortname": "autorotate",
                            "parameter_type": 2
                        }
                    },
                    "varname": "autorotate"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 404.0, 100.0, 73.0, 21.0 ],
                    "text": "spat5.around"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-95",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 255.0, 267.0, 44.0, 21.0 ],
                    "text": "/roll $1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-96",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 198.0, 267.0, 52.0, 21.0 ],
                    "text": "/pitch $1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-97",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 141.0, 267.0, 48.0, 21.0 ],
                    "text": "/yaw $1"
                }
            },
            {
                "box": {
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-91",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 255.0, 207.0, 44.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 126.0, 44.0, 44.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_longname": "live.dial[4]",
                            "parameter_mmax": 360.0,
                            "parameter_mmin": -360.0,
                            "parameter_modmode": 0,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "rot-roll",
                            "parameter_shortname": "roll",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "rot-roll"
                }
            },
            {
                "box": {
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-92",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 198.0, 207.0, 44.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 68.0, 44.0, 44.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_linknames": 1,
                            "parameter_longname": "rot-pitch",
                            "parameter_mmax": 360.0,
                            "parameter_mmin": -360.0,
                            "parameter_modmode": 0,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "rot-pitch",
                            "parameter_shortname": "pitch",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "rot-pitch"
                }
            },
            {
                "box": {
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-93",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 141.0, 207.0, 44.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 44.0, 44.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_linknames": 1,
                            "parameter_longname": "rot-yaw",
                            "parameter_mmax": 360.0,
                            "parameter_mmin": -360.0,
                            "parameter_modmode": 0,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "rot-yaw",
                            "parameter_shortname": "yaw",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "rot-yaw"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "" ],
                    "patching_rect": [ 278.0, 434.0, 298.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.hoa.rotate~ @order 5 @dimension 3 @mc 1",
                    "varname": "rotate_script"
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 0.901961, 0.901961, 0.901961, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.5 ],
                    "id": "obj-94",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 649.0, 393.0, 156.0, 69.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1.0, 1.0, 319.0, 97.0 ],
                    "proportion": 0.39,
                    "rounded": 18
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-11", 1 ],
                    "order": 2,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-28", 0 ]
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
                    "destination": [ "obj-1", 2 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "order": 1,
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "order": 0,
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-97", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-14": [ "live.toggle[5]", "yawonoff", 0 ],
            "obj-15": [ "live.toggle[6]", "live.toggle", 0 ],
            "obj-16": [ "live.toggle[9]", "live.toggle", 0 ],
            "obj-2": [ "counter-rot", "counter-rot", 0 ],
            "obj-20": [ "ShowCh[3]", "showCh", 0 ],
            "obj-26": [ "live.toggle[7]", "autorotate", 0 ],
            "obj-38::obj-10": [ "live.numbox[2]", "live.numbox", 0 ],
            "obj-38::obj-15": [ "live.numbox[1]", "live.numbox", 0 ],
            "obj-38::obj-19": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-38::obj-3": [ "live.tab", "live.tab", 0 ],
            "obj-38::obj-7": [ "live.numbox", "live.numbox", 0 ],
            "obj-58": [ "live.numbox[4]", "live.numbox[4]", 0 ],
            "obj-61": [ "live.numbox[5]", "live.numbox[4]", 0 ],
            "obj-64": [ "live.numbox[6]", "live.numbox[4]", 0 ],
            "obj-79": [ "ShowCh[4]", "showCh", 0 ],
            "obj-91": [ "live.dial[4]", "roll", 0 ],
            "obj-92": [ "rot-pitch", "pitch", 0 ],
            "obj-93": [ "rot-yaw", "yaw", 0 ],
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