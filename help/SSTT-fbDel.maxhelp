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
        "rect": [ 248.0, 161.0, 1000.0, 759.0 ],
        "boxes": [
            {
                "box": {
                    "fontface": 3,
                    "fontname": "Arial",
                    "fontsize": 20.871338,
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 44.0, 485.0, 30.0 ],
                    "text": "SSTT-fbDel",
                    "varname": "autohelp_top_title"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 76.0, 732.0, 100.0 ],
                    "text": "Spherical harmonic order–dependent feedback delay\nparameters: \nwet= dry/wet mix 0-1\nfb: 0-1 Base feedback amount.\nfb_scale: Feedback scaling across ambisonic order. if 0,  uniform decay across all orders above 0 -higher orders decay more slowly\nOutgain: Output gain compensation.\nscale::     Low values: subtle widening,     High values: spatial “pull-apart”"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "Norwegian_Hardanger_Fiddle_Music.wav",
                                "filename": "Norwegian_Hardanger_Fiddle_Music.wav",
                                "filekind": "audiofile",
                                "id": "u769012987",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-14",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 54.0, 213.0, 150.0, 30.0 ],
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
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-7",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-encode.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 40.0, 265.0, 307.0, 109.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 714.8359375, 209.7421875, 287.0, 108.0 ],
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
                    "id": "obj-5",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-fbDel.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 238.0, 392.0, 271.0, 80.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 682.140625, 676.66015625, 271.0, 80.0 ],
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
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Mixer.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 40.0, 485.0, 155.0, 67.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 754.0, 54.0, 22.0 ],
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
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Decoder-Output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 40.0, 562.0, 1132.0, 169.0 ],
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
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-14", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-14", 0 ]
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
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "parameters": {
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
            "obj-3::obj-35": [ "ShowCh[19]", "showCh", 0 ],
            "obj-3::obj-5": [ "drywet", "drywet", 0 ],
            "obj-3::obj-82": [ "ShowChbox[2]", "showCh", 0 ],
            "obj-5::obj-11": [ "live.dial[4]", "wet", 0 ],
            "obj-5::obj-12": [ "ShowCh[6]", "showCh", 0 ],
            "obj-5::obj-13": [ "ShowCh[5]", "showCh", 0 ],
            "obj-5::obj-16": [ "live.dial[7]", "scale", 0 ],
            "obj-5::obj-17": [ "live.dial[8]", "fb_scale", 0 ],
            "obj-5::obj-26": [ "live.dial[5]", "Del_time", 0 ],
            "obj-5::obj-28": [ "live.dial[6]", "OutGain", 0 ],
            "obj-5::obj-29": [ "live.dial[1]", "Fb", 0 ],
            "obj-7::obj-16": [ "ambiorder[1]", "ambiorder", 0 ],
            "obj-7::obj-20": [ "ShowCh[13]", "showCh", 0 ],
            "obj-7::obj-3": [ "ambiorder", "ambiorder", 0 ],
            "obj-7::obj-57": [ "live.text[15]", "live.text[9]", 0 ],
            "obj-7::obj-79": [ "ShowCh[14]", "showCh", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-5::obj-11": {
                    "parameter_initial": 1.0,
                    "parameter_longname": "live.dial[4]",
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "wet",
                    "parameter_shortname": "wet"
                },
                "obj-5::obj-12": {
                    "parameter_longname": "ShowCh[6]"
                },
                "obj-5::obj-13": {
                    "parameter_longname": "ShowCh[5]"
                },
                "obj-5::obj-16": {
                    "parameter_longname": "live.dial[7]",
                    "parameter_osc_name": "scale",
                    "parameter_range": [ 0.0, 2.0 ],
                    "parameter_shortname": "scale"
                },
                "obj-5::obj-17": {
                    "parameter_longname": "live.dial[8]",
                    "parameter_osc_name": "fb_scale",
                    "parameter_shortname": "fb_scale"
                },
                "obj-5::obj-28": {
                    "parameter_longname": "live.dial[6]"
                },
                "obj-5::obj-29": {
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "fb"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}