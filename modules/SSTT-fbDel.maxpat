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
        "rect": [ 34.0, 95.0, 956.0, 853.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "format": 6,
                    "id": "obj-22",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 864.0, 223.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 864.0, 191.0, 69.0, 22.0 ],
                    "text": "r orderNum"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 765.0, 210.0, 83.0, 22.0 ],
                    "text": "max_order $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-27",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 287.0, 188.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-24",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 362.8571515083313, 325.0000077486038, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-17",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 292.14286410808563, 331.42857933044434, 36.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 40.57142949104309, 24.0, 36.0, 45.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.818897637795276 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[8]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_osc_name": "fb_scale",
                            "parameter_shortname": "fb_scale",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial[5]"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 292.14286410808563, 415.00000989437103, 70.0, 22.0 ],
                    "text": "fb_scale $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-20",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 292.14286410808563, 389.285723567009, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-16",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 362.8571515083313, 269.0, 36.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 155.00000369548798, 24.0, 36.0, 45.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[7]",
                            "parameter_mmax": 2.0,
                            "parameter_modmode": 3,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "scale",
                            "parameter_shortname": "scale",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial[4]"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 362.8571515083313, 357.42857933044434, 88.0, 22.0 ],
                    "text": "order_scale $1"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-11",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 287.0, 125.0, 36.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.571429491043091, 24.0, 36.0, 45.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[4]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "wet",
                            "parameter_shortname": "wet",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial[1]"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 287.0, 215.0, 44.0, 22.0 ],
                    "text": "wet $1"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 347.0, 244.0, 74.0 ],
                    "text": "Param order_scale(0.6); // how much delay increases with order\nParam fb_scale(0.2);    // feedback increase per order\nParam max_order(7"
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
                    "presentation_rect": [ 86.0, 3.0, 80.0, 16.0 ],
                    "text": "Fb-Delay-noW"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 135.0, 484.0, 78.0, 22.0 ],
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
                    "patching_rect": [ 135.0, 452.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "unpack7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 15,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 556.0, 264.0, 616.0, 22.0 ],
                    "text": "mc.unpack~ 15",
                    "varname": "fromAmbiWaveshapeminusW_fb"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "pack8",
                    "maxclass": "newobj",
                    "numinlets": 16,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 540.0, 388.0, 600.0, 22.0 ],
                    "text": "mc.pack~ 16",
                    "varname": "toAmbiAll_fb"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 596.0, 191.0, 92.0, 22.0 ],
                    "text": "loadmess wet 1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-32",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 199.0, 214.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 199.0, 188.0, 39.0, 22.0 ],
                    "text": "dbtoa"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-29",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 376.0, 21.0, 36.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 116.0, 24.0, 36.0, 45.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.818897637795276 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[1]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_osc_enabled": 1,
                            "parameter_osc_name": "fb",
                            "parameter_shortname": "Fb",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial[3]"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-28",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 199.0, 135.0, 36.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 194.42857575416565, 24.0, 36.0, 45.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[6]",
                            "parameter_mmax": 0.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "OutGain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.dial[2]"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-26",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 400.0, 135.0, 37.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 78.57142949104309, 24.0, 37.0, 45.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 629.9212598425195 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[5]",
                            "parameter_mmax": 4000.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Del_time",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 511.0, 537.0, 150.0, 33.0 ],
                    "text": "fb delay on all SpH exept W (omni)"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 843.0, 514.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 816.0, 557.5, 103.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "multifb.js",
                        "parameter_enable": 0
                    },
                    "text": "js multifb.js"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-19",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 556.0, 458.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "pack7",
                    "maxclass": "newobj",
                    "numinlets": 15,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 556.0, 154.0, 616.0, 22.0 ],
                    "text": "mc.pack~ 15",
                    "varname": "toAmbiWaveshapeminusW_fb"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 709.0, 529.0, 91.0, 22.0 ],
                    "text": "r orderCh-show"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.0, 448.0, 69.0, 22.0 ],
                    "text": "r orderNum"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-13",
                    "ignoreclick": 1,
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 695.0, 562.0, 40.0, 13.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 232.0, 56.0, 31.0, 13.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "ShowCh[5]",
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
                    "fontsize": 8.0,
                    "id": "obj-12",
                    "ignoreclick": 1,
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 875.0, 484.0, 40.0, 13.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 232.0, 37.0, 31.0, 13.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "ShowCh[6]",
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
                    "id": "unpack8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 16,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 517.0, 79.0, 577.0, 22.0 ],
                    "text": "mc.unpack~ 16",
                    "varname": "fromAmbiAll_fb"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 216.0, 49.0, 100.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 181.42857575416565, 7.0, 62.0, 15.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-26", "live.dial", "float", 220.47244262695312, 5, "obj-29", "live.dial", "float", 0.9212598204612732, 5, "obj-28", "live.dial", "float", 0.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-5",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 517.0, 13.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 4,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 84.0, 131.0, 808.0, 370.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 100.0, 239.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-1",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 40.0, 40.0, 30.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "g_in1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 137.0, 321.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "g_out1",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "codebox",
                                        "patching_rect": [ 100.0, 30.0, 611.0, 195.0 ],
                                        "fontname": "<Monospaced>",
                                        "numoutlets": 1,
                                        "fontface": 0,
                                        "outlettype": [ "" ],
                                        "id": "g_code",
                                        "fontsize": 12.0,
                                        "numinlets": 1,
                                        "code": "// Ambisonic-aware spherical feedback delay (Gen Codebox)\n\n// Parameters\nParam fb(0.6);          // base feedback\nParam delay_ms(120);    // base delay\nParam wet(1);\nParam outgain(1);\n\n// New controls\nParam order_scale(0.6); // how much delay increases with order\nParam fb_scale(0.2);    // feedback increase per order\nParam max_order(7);     // safety cap\n\nDelay dl(192000);\n\n// Runtime\nsr = samplerate;\n\n// --- Channel → Ambisonic order (ACN) ---\nacn = mc_channel() - 1;\norder = floor(sqrt(acn));\norder = min(order, max_order);\n\n// --- Order-dependent scaling ---\norder_norm = order / max(1, max_order);\n\n// Delay grows with order\ndelay_sec = (delay_ms * 0.001) * (1 + order_scale * order_norm);\n\n// Feedback slightly increases with order\nfb_ch = clamp(fb * (1 + fb_scale * order_norm), 0, 0.99);\n\n// --- Delay ---\nx  = in1;\nxd = dl.read(delay_sec * sr);\n\n// Feedback comb\ny = x + fb_ch * xd;\n\n// Write\ndl.write(y);\n\n// Mix\nout1 = mix(x, y, clamp(wet, 0, 1)) * outgain;"
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "g_in1", 0 ],
                                        "destination": [ "g_code", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "g_code", 0 ],
                                        "destination": [ "obj-1", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "genfb",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 556.0, 223.0, 128.0, 22.0 ],
                    "text": "mc.gen~ @title multifb",
                    "varname": "multifb",
                    "wrapper_uniquekey": "u456010300"
                }
            },
            {
                "box": {
                    "id": "msgFb",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 376.0, 105.0, 60.0, 22.0 ],
                    "text": "fb $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "numFb",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 376.0, 79.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "msgDel",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 400.0, 215.0, 90.0, 22.0 ],
                    "text": "delay_ms $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "numDel",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 400.0, 191.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "msgOG",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 248.0, 282.0, 80.0, 22.0 ],
                    "text": "outgain $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "numOG",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 248.0, 256.0, 50.0, 22.0 ]
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
                    "patching_rect": [ 285.0, 505.5, 156.0, 69.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 1.0, 268.0, 78.0 ],
                    "proportion": 0.39,
                    "rounded": 18
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "unpack7", 0 ],
                    "source": [ "genfb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "genfb", 0 ],
                    "source": [ "msgDel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "genfb", 0 ],
                    "source": [ "msgFb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "genfb", 0 ],
                    "source": [ "msgOG", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "msgDel", 0 ],
                    "source": [ "numDel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "msgFb", 0 ],
                    "source": [ "numFb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "msgOG", 0 ],
                    "source": [ "numOG", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "genfb", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "genfb", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "numDel", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "numFb", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "numOG", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "genfb", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "unpack8", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "genfb", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "order": 4,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "order": 2,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "order": 3,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "order": 5,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "order": 0,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "order": 1,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "genfb", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "genfb", 0 ],
                    "source": [ "pack7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "pack8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 15 ],
                    "source": [ "unpack7", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 14 ],
                    "source": [ "unpack7", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 13 ],
                    "source": [ "unpack7", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 12 ],
                    "source": [ "unpack7", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 11 ],
                    "source": [ "unpack7", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 10 ],
                    "source": [ "unpack7", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 9 ],
                    "source": [ "unpack7", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 8 ],
                    "source": [ "unpack7", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 7 ],
                    "source": [ "unpack7", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 6 ],
                    "source": [ "unpack7", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 5 ],
                    "source": [ "unpack7", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 4 ],
                    "source": [ "unpack7", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 3 ],
                    "source": [ "unpack7", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 2 ],
                    "source": [ "unpack7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 1 ],
                    "source": [ "unpack7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 14 ],
                    "source": [ "unpack8", 15 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 13 ],
                    "source": [ "unpack8", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 12 ],
                    "source": [ "unpack8", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 11 ],
                    "source": [ "unpack8", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 10 ],
                    "source": [ "unpack8", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 9 ],
                    "source": [ "unpack8", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 8 ],
                    "source": [ "unpack8", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 7 ],
                    "source": [ "unpack8", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 6 ],
                    "source": [ "unpack8", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 5 ],
                    "source": [ "unpack8", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 4 ],
                    "source": [ "unpack8", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 3 ],
                    "source": [ "unpack8", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 2 ],
                    "source": [ "unpack8", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 1 ],
                    "source": [ "unpack8", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack7", 0 ],
                    "source": [ "unpack8", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack8", 0 ],
                    "source": [ "unpack8", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-11": [ "live.dial[4]", "wet", 0 ],
            "obj-12": [ "ShowCh[6]", "showCh", 0 ],
            "obj-13": [ "ShowCh[5]", "showCh", 0 ],
            "obj-16": [ "live.dial[7]", "scale", 0 ],
            "obj-17": [ "live.dial[8]", "fb_scale", 0 ],
            "obj-26": [ "live.dial[5]", "Del_time", 0 ],
            "obj-28": [ "live.dial[6]", "OutGain", 0 ],
            "obj-29": [ "live.dial[1]", "Fb", 0 ],
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