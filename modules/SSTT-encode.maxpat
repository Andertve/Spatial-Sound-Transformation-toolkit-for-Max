{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 151.0, 413.0, 465.0, 257.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "fontsize": 9.5,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 112.0, 71.0, 88.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 37.0, 86.0, 21.0 ],
                    "text": "pan source(s)"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Bold",
                    "fontsize": 14.0,
                    "id": "obj-16",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 604.0, 332.0, 53.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 201.0, 37.0, 41.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "ambiorder[1]",
                            "parameter_mmax": 9.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 3,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "numsource",
                            "parameter_shortname": "ambiorder",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "ambiorder[1]"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-13",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 673.0, 188.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 376.0, 227.0, 386.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.viewer @initwith \"/source/number 1\"",
                    "varname": "viewer_script"
                }
            },
            {
                "box": {
                    "fontsize": 9.5,
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 26.0, 41.0, 96.0, 17.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 244.0, 33.0, 44.0, 28.0 ],
                    "text": "num sources"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "linecount": 3,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 372.0, 120.0, 50.0, 49.0 ],
                    "text": "/window/openorclose"
                }
            },
            {
                "box": {
                    "fontsize": 9.5,
                    "id": "obj-17",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 141.0, 112.0, 28.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 64.0, 16.0, 188.0, 17.0 ],
                    "text": "mono/stereo/multi inputs ->ambisonic out"
                }
            },
            {
                "box": {
                    "hint": "open or close the window",
                    "id": "obj-57",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 377.0, 78.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 116.0, 37.0, 45.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[15]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text[9]",
                            "parameter_type": 2
                        }
                    },
                    "text": "open",
                    "varname": "live.text[1]"
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
                    "patching_rect": [ 0.0, 0.0, 93.0, 16.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 107.0, 7.0, 80.0, 16.0 ],
                    "text": "Encoder"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 189.5, 336.0, 29.5, 22.0 ],
                    "text": "int"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 189.5, 286.0, 76.0, 22.0 ],
                    "text": "r SPTT_load"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.176470588235294, 0.176470588235294, 0.176470588235294, 0.15 ],
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-10",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 679.0, 376.0, 49.0, 20.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "tricolor": [ 0.796078431372549, 0.603921568627451, 0.117647058823529, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 257.0, 324.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 228.0, 413.0, 93.0, 22.0 ],
                    "text": "s orderCh-show"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 228.0, 377.0, 118.0, 22.0 ],
                    "text": "expr pow ($i1 + 1\\, 2)"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 147.0, 378.0, 72.0, 20.0 ],
                    "text": "𝑁=(𝑀+1)2"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 568.0, 417.0, 145.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "sptt-hoa-encodeMain.js",
                        "parameter_enable": 0
                    },
                    "text": "js sptt-hoa-encodeMain.js"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontsize": 9.0,
                    "id": "obj-8",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 510.0, 309.0, 72.0, 31.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 72.0, 66.0, 115.0, 21.0 ],
                    "text": " Ambisonic order: 1-9"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 441.0, 344.0, 54.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Bold",
                    "fontsize": 14.0,
                    "id": "obj-3",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 441.0, 319.0, 53.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 66.0, 41.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 5 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "ambiorder",
                            "parameter_mmax": 9.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 3,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "ambiorder",
                            "parameter_shortname": "ambiorder",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "ambiorder"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 402.0, 71.0, 22.0 ],
                    "text": "s orderNum"
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
                    "patching_rect": [ 376.0, 344.0, 30.0, 30.0 ]
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
                    "patching_rect": [ 245.0, 124.0, 30.0, 30.0 ]
                }
            },
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
                    "id": "obj-5",
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
                    "presentation_rect": [ 261.0, 65.0, 26.0, 13.0 ],
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
                    "presentation_rect": [ 261.0, 80.0, 26.0, 13.0 ],
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
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "" ],
                    "patching_rect": [ 376.0, 286.0, 396.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.hoa.encoder~ @order 5 @inputs 1 @dimension 3 @mc 1",
                    "varname": "encoder_script"
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 0.901961, 0.901961, 0.901961, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.5 ],
                    "id": "obj-90",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 366.0, 455.0, 196.121216, 65.888824 ],
                    "presentation": 1,
                    "presentation_rect": [ 1.0, 1.0, 297.0, 102.0 ],
                    "proportion": 0.39,
                    "rounded": 18
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 1 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "order": 1,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 0,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "order": 1,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "order": 0,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "order": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 0,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-7", 0 ]
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
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-16": [ "ambiorder[1]", "ambiorder", 0 ],
            "obj-20": [ "ShowCh[13]", "showCh", 0 ],
            "obj-3": [ "ambiorder", "ambiorder", 0 ],
            "obj-57": [ "live.text[15]", "live.text[9]", 0 ],
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