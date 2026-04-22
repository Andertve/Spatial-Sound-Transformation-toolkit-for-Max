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
        "rect": [ 100.0, 100.0, 1202.0, 759.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-6",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 208.0, 454.0, 214.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 225.0, 406.0, 191.0, 47.0 ],
                    "text": "Use the SSTT-mixer module to mix between original (dry) and delayed  (wet) signal"
                }
            },
            {
                "box": {
                    "fontface": 3,
                    "fontname": "Arial",
                    "fontsize": 20.871338,
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 24.0, 485.0, 30.0 ],
                    "text": "SSTT-Delay",
                    "varname": "autohelp_top_title"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 56.0, 542.0, 33.0 ],
                    "text": "The HOAdelay delays each ambisonic component in the defined HOA order in a selectable harmonic or subharmonic series multiplied by the delay time (in ms) and feedback amount (0.-100)."
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 468.0, 301.0, 363.0, 114.0 ],
                    "presentation": 1,
                    "presentation_linecount": 11,
                    "presentation_rect": [ 1081.041626572609, 307.083322763443, 191.0, 154.0 ],
                    "text": "\nDelayTime: 1/Spherical component * ms\nFeedback 1/Spherical component * fb\n\nExample:\nFor third order:\n1/16, 1/15 1/14 1/13 1/12 1/11 1/10 1/9 1/8 1/7 1/6 1/5 1/4 1/3 1/2 1/1  * parameter value"
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
                    "patching_rect": [ 40.0, 444.0, 155.0, 67.0 ],
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
                    "id": "obj-2",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Delay.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 208.0, 325.0, 241.0, 77.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "hobbyvev.wav",
                                "filename": "hobbyvev.wav",
                                "filekind": "audiofile",
                                "id": "u378011820",
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
                    "patching_rect": [ 40.0, 123.0, 150.0, 30.0 ],
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
                    "patching_rect": [ 40.0, 734.0, 54.0, 22.0 ],
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
                    "patching_rect": [ 40.0, 168.0, 303.0, 105.0 ],
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
                    "patching_rect": [ 40.0, 530.0, 1132.0, 169.0 ],
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
                    "destination": [ "obj-2", 0 ],
                    "order": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 0,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-22", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            }
        ],
        "parameters": {
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
            "obj-2::obj-12": [ "ShowCh[17]", "showCh", 0 ],
            "obj-2::obj-13": [ "ShowCh[19]", "showCh", 0 ],
            "obj-2::obj-26": [ "DelayTime[2]", "DelayTime", 0 ],
            "obj-2::obj-30": [ "Harmonics[2]", "harmonics", 0 ],
            "obj-2::obj-40": [ "live.dial[5]", "Feedback", 0 ],
            "obj-3::obj-35": [ "ShowCh[20]", "showCh", 0 ],
            "obj-3::obj-5": [ "drywet", "drywet", 0 ],
            "obj-3::obj-82": [ "ShowChbox[2]", "showCh", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-3::obj-35": {
                    "parameter_longname": "ShowCh[20]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}