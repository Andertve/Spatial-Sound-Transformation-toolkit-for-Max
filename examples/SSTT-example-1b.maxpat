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
        "rect": [ 103.0, 188.0, 1198.0, 760.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-15",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 416.0, 353.0, 150.0, 47.0 ],
                    "text": "Basic ambisonic transformation rotation wapring and focus"
                }
            },
            {
                "box": {
                    "args": [ "STTMix" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-8",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-HOA_Focus.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 38.0, 454.0, 197.0, 87.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-6",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-warp.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 38.0, 366.0, 241.0, 77.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 570.51953125, 948.8828125, 241.0, 77.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-12",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Rotation.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 38.0, 251.0, 322.0, 100.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 491.92578125, 739.28125, 322.0, 100.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 544.0, 138.0, 189.0, 114.0 ],
                    "text": "But can also be a multichannel file or input. This way you can also convert a static multichannel format to the dynamic format of ambisonic, For example a quadrophonic work to ambisonic using a virtual quadrophinc setup ( use open in the encoder)"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "Bari multi M8 pitched_01 (1).wav",
                                "filename": "Bari multi M8 pitched_01 (1).wav",
                                "filekind": "audiofile",
                                "id": "u005000650",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-9",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 515.0, 22.0, 150.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "Klesbørste.wav",
                                "filename": "Klesbørste.wav",
                                "filekind": "audiofile",
                                "id": "u508011141",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-7",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 351.0, 22.0, 150.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "preparert piano 01.wav",
                                "filename": "preparert piano 01.wav",
                                "filekind": "audiofile",
                                "id": "u780011117",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-5",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 195.0, 22.0, 150.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontface": 0,
                    "id": "obj-3",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 365.0, 73.0, 208.0, 64.0 ],
                    "text": "single inputs must be packed to a multichannel object, as mc.pack~ in order to use multiple sources in SST-encoder"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 38.0, 88.0, 184.0, 22.0 ],
                    "text": "mc.pack~ 4"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontface": 0,
                    "id": "obj-14",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 171.0, 108.0, 37.0 ],
                    "text": "Define number of sources"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "BassClar.20_4.MEL_15.wav",
                                "filename": "BassClar.20_4.MEL_15.wav",
                                "filekind": "audiofile",
                                "id": "u732009114",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-22",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 38.0, 22.0, 150.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 38.0, 736.0, 54.0, 22.0 ],
                    "text": "mc.dac~"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-19",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-encode.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 38.0, 132.0, 304.0, 105.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 71.87499725818634, 96.87499630451202, 336.4583204984665, 80.99662685394287 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Decoder-Output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 38.0, 559.0, 1129.0, 168.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 45.83333158493042, 593.749977350235, 1196.874954342842, 179.16665983200073 ],
                    "viewvisibility": 1
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
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 2 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 3 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-12::obj-14": [ "live.toggle[5]", "yawonoff", 0 ],
            "obj-12::obj-15": [ "live.toggle[6]", "live.toggle", 0 ],
            "obj-12::obj-16": [ "live.toggle[10]", "live.toggle", 0 ],
            "obj-12::obj-2": [ "counter-rot", "counter-rot", 0 ],
            "obj-12::obj-20": [ "ShowCh[3]", "showCh", 0 ],
            "obj-12::obj-26": [ "live.toggle[7]", "autorotate", 0 ],
            "obj-12::obj-38::obj-10": [ "live.numbox[2]", "live.numbox", 0 ],
            "obj-12::obj-38::obj-15": [ "live.numbox[1]", "live.numbox", 0 ],
            "obj-12::obj-38::obj-19": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-12::obj-38::obj-3": [ "live.tab", "live.tab", 0 ],
            "obj-12::obj-38::obj-7": [ "live.numbox", "live.numbox", 0 ],
            "obj-12::obj-58": [ "live.numbox[4]", "live.numbox[4]", 0 ],
            "obj-12::obj-61": [ "live.numbox[5]", "live.numbox[4]", 0 ],
            "obj-12::obj-64": [ "live.numbox[7]", "live.numbox[4]", 0 ],
            "obj-12::obj-79": [ "ShowCh[4]", "showCh", 0 ],
            "obj-12::obj-91": [ "live.dial[4]", "roll", 0 ],
            "obj-12::obj-92": [ "rot-pitch", "pitch", 0 ],
            "obj-12::obj-93": [ "rot-yaw", "yaw", 0 ],
            "obj-19::obj-16": [ "ambiorder[1]", "ambiorder", 0 ],
            "obj-19::obj-20": [ "ShowCh[13]", "showCh", 0 ],
            "obj-19::obj-3": [ "ambiorder", "ambiorder", 0 ],
            "obj-19::obj-57": [ "live.text[15]", "live.text[9]", 0 ],
            "obj-19::obj-79": [ "ShowCh[14]", "showCh", 0 ],
            "obj-1::obj-10": [ "Crossover", "Crossover", 0 ],
            "obj-1::obj-103::obj-21": [ "live.menu", "live.menu", 0 ],
            "obj-1::obj-12": [ "live.menu[8]", "live.menu[2]", 0 ],
            "obj-1::obj-14": [ "mc.live.gain~[2]", "loudspeakers", 0 ],
            "obj-1::obj-22::obj-102": [ "live.toggle[436]", "live.toggle", 0 ],
            "obj-1::obj-22::obj-3": [ "live.text[1]", "live.text[9]", 0 ],
            "obj-1::obj-22::obj-57": [ "live.text[9]", "live.text[9]", 0 ],
            "obj-1::obj-22::obj-58": [ "live.text[10]", "live.text[9]", 0 ],
            "obj-1::obj-22::obj-62": [ "live.text[12]", "live.text[9]", 0 ],
            "obj-1::obj-22::obj-72": [ "live.text[14]", "live.text[8]", 0 ],
            "obj-1::obj-25": [ "live.tab[2]", "live.tab[2]", 0 ],
            "obj-1::obj-27": [ "live.menu[9]", "live.menu", 0 ],
            "obj-1::obj-31": [ "Headphones_vol", "headphones", 0 ],
            "obj-1::obj-35": [ "Sub_ch_freq", "freq", 0 ],
            "obj-1::obj-36": [ "live.toggle[20]", "live.toggle[2]", 0 ],
            "obj-1::obj-38": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-1::obj-39": [ "Sub_ch_sel", "Sub_ch_sel", 0 ],
            "obj-1::obj-4": [ "ShowCh[1]", "showCh", 0 ],
            "obj-1::obj-45": [ "live.menu[10]", "live.menu", 0 ],
            "obj-1::obj-46": [ "Sub_ch_vol", "Sub_ch_vol", 0 ],
            "obj-1::obj-55": [ "live.toggle[19]", "live.toggle[2]", 0 ],
            "obj-1::obj-58": [ "live.text[13]", "live.text[9]", 0 ],
            "obj-1::obj-7": [ "live.menu[5]", "live.menu[1]", 0 ],
            "obj-1::obj-79": [ "ShowCh[2]", "showCh", 0 ],
            "obj-6::obj-18": [ "live.tab[1]", "live.tab", 0 ],
            "obj-6::obj-3": [ "ShowCh[23]", "showCh", 0 ],
            "obj-6::obj-36": [ "live.dial[3]", "Warp", 0 ],
            "obj-6::obj-79": [ "ShowCh[15]", "showCh", 0 ],
            "obj-8::obj-57": [ "live.text[2]", "live.text[9]", 0 ],
            "obj-8::obj-7": [ "ShowCh[24]", "showCh", 0 ],
            "obj-8::obj-79": [ "ShowCh[6]", "showCh", 0 ],
            "obj-8::obj-81": [ "live.dial[7]", "el", 0 ],
            "obj-8::obj-82": [ "live.dial[12]", "az", 0 ],
            "obj-8::obj-9": [ "live.dial[13]", "selectivity", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-12::obj-16": {
                    "parameter_longname": "live.toggle[10]"
                },
                "obj-12::obj-64": {
                    "parameter_longname": "live.numbox[7]"
                },
                "obj-19::obj-3": {
                    "parameter_linknames": 1,
                    "parameter_longname": "ambiorder",
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "ambiorder",
                    "parameter_shortname": "ambiorder"
                },
                "obj-1::obj-10": {
                    "parameter_longname": "Crossover",
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "Crossover",
                    "parameter_shortname": "Crossover"
                },
                "obj-1::obj-103::obj-21": {
                    "parameter_longname": "live.menu"
                },
                "obj-1::obj-14": {
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "Loudspeaker_vol"
                },
                "obj-1::obj-31": {
                    "parameter_initial": -70.0,
                    "parameter_initial_enable": 1,
                    "parameter_linknames": 1,
                    "parameter_longname": "Headphones_vol",
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "headphones_vol"
                },
                "obj-6::obj-3": {
                    "parameter_longname": "ShowCh[23]"
                },
                "obj-6::obj-79": {
                    "parameter_longname": "ShowCh[15]"
                },
                "obj-8::obj-79": {
                    "parameter_longname": "ShowCh[6]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}