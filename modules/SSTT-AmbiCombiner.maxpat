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
        "rect": [ 106.0, 167.0, 1372.0, 700.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "fontname": "Helvetica Bold",
                    "fontsize": 11.0,
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 468.0, 461.0, 42.5, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 156.0, 10.0, 33.0, 17.0 ],
                    "text": "V"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Bold",
                    "fontsize": 11.0,
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 467.0, 485.0, 44.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 37.0, 9.0, 25.0, 17.0 ],
                    "text": "H"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Bold",
                    "fontsize": 11.0,
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 86.0, 50.0, 36.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 37.0, 53.0, 30.0, 17.0 ],
                    "text": "H+V"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 72.6315815448761, 559.0, 78.0, 22.0 ],
                    "text": "s SPTT_load"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 72.6315815448761, 527.0, 58.0, 22.0 ],
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
                    "patching_rect": [ 222.0, 609.0, 93.0, 16.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 65.0, 2.0, 86.0, 16.0 ],
                    "text": "Ambi-Combiner"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "leftarrow": 0,
                    "maxclass": "live.arrows",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 38.0, 47.0, 25.5, 21.85714340209961 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 52.0, 25.5, 21.85714340209961 ],
                    "rightarrow": 0,
                    "uparrow": 0
                }
            },
            {
                "box": {
                    "downarrow": 0,
                    "id": "obj-75",
                    "leftarrow": 0,
                    "maxclass": "live.arrows",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 31.0, 84.78195762634277, 25.5, 21.85714340209961 ],
                    "presentation": 1,
                    "presentation_rect": [ 173.0, 6.0, 25.5, 21.85714340209961 ],
                    "rightarrow": 0
                }
            },
            {
                "box": {
                    "downarrow": 0,
                    "id": "obj-18",
                    "leftarrow": 0,
                    "maxclass": "live.arrows",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 55.0, 84.78195762634277, 25.5, 21.85714340209961 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 6.0, 25.5, 21.85714340209961 ],
                    "rightarrow": 0
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "id": "obj-30",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 72.6315815448761, 429.47369956970215, 135.0, 64.0 ],
                    "text": "W = attenuated due to summing to nominal 1 when combining 2D+3D "
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 513.6842288970947, 147.368426322937, 91.0, 22.0 ],
                    "text": "r orderCh-show"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 584.210547208786, 73.6842131614685, 69.0, 22.0 ],
                    "text": "r orderNum"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-24",
                    "ignoreclick": 1,
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 584.210547208786, 108.42105650901794, 39.0, 13.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.0, 43.0, 26.0, 13.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "ShowCh[1]",
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
                    "patching_rect": [ 513.6842288970947, 189.4736909866333, 39.0, 13.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.0, 58.0, 26.0, 13.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "ShowCh[2]",
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
                    "comment": "Vertical Ambisonic components in here",
                    "id": "obj-12",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 360.00001287460327, 215.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Horizontal Ambisonic components in here",
                    "id": "obj-11",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 235.0, 207.5, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 614.7368640899658, 175.789479970932, 113.0, 22.0 ],
                    "text": "setIOFromOrder $1"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 614.7368640899658, 219.0, 153.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "SPTT_RouterManager.js",
                        "parameter_enable": 0
                    },
                    "text": "js SPTT_RouterManager.js"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-32",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 360.00001287460327, 621.0526537895203, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 358.0, 570.0, 398.0, 22.0 ],
                    "text": "mc.pack~ 4",
                    "varname": "HplusE"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 722.0, 383.0, 762.0, 22.0 ],
                    "text": "mc.unpack~ 1",
                    "varname": "ElOnly"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 370.0, 453.0, 410.0, 22.0 ],
                    "text": "mc.unpack~ 2",
                    "varname": "HorisOnly"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 292.6315894126892, 447.36843705177307, 53.0, 22.0 ],
                    "text": "+~",
                    "varname": "W_only"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 362.1052761077881, 402.10527753829956, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 246.3157982826233, 408.421067237854, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 358.0, 333.6842224597931, 92.0, 22.0 ],
                    "text": "mc.separate~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 246.3157982826233, 333.6842224597931, 92.0, 22.0 ],
                    "text": "mc.separate~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 949.4737181663513, 109.47368812561035, 41.0, 22.0 ],
                    "text": "del 50"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "connectAllGroups" ],
                    "patching_rect": [ 913.6842432022095, 135.78947854042053, 110.0, 22.0 ],
                    "text": "t connectAllGroups"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 949.4737181663513, 84.21052932739258, 39.0, 23.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 949.4737181663513, 58.947370529174805, 66.0, 23.0 ],
                    "text": "change +"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1302.1053097248077, 176.8421115875244, 101.0, 22.0 ],
                    "text": "clearConnections"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 761.0526587963104, 129.4736888408661, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1193.6842532157898, 176.8421115875244, 86.0, 22.0 ],
                    "text": "connecthpluse"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 873.684241771698, 176.8421115875244, 82.0, 22.0 ],
                    "text": "connectelonly"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1071.5789856910706, 176.8421115875244, 103.0, 22.0 ],
                    "text": "connectAllGroups"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 966.3158240318298, 176.8421115875244, 91.0, 22.0 ],
                    "text": "connect3Dto2D"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 761.0526587963104, 176.8421115875244, 95.0, 22.0 ],
                    "text": "setambiorder $1"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 761.0526587963104, 258.9473776817322, 191.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "SPTT-Ambi-Splitter-Combiner.js",
                        "parameter_enable": 0
                    },
                    "text": "js SPTT-Ambi-Splitter-Combiner.js",
                    "varname": "SPTT_CombinerJS"
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
                    "patching_rect": [ 851.0, 584.055588, 196.121216, 65.888824 ],
                    "presentation": 1,
                    "presentation_rect": [ 1.0, 2.0, 213.0, 75.0 ],
                    "proportion": 0.39,
                    "rounded": 18
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "order": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 0,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-43", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-44", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 1 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-49", 0 ]
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
                    "destination": [ "obj-61", 3 ],
                    "source": [ "obj-50", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 1 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 2 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 2,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 0,
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
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-24": [ "ShowCh[1]", "showCh", 0 ],
            "obj-79": [ "ShowCh[2]", "showCh", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}