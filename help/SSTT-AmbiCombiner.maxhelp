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
        "rect": [ 59.0, 100.0, 869.0, 759.0 ],
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
                    "patching_rect": [ 36.0, 16.0, 485.0, 30.0 ],
                    "text": "SSTT-AmbiCombiner",
                    "varname": "autohelp_top_title"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 36.0, 48.0, 571.0, 47.0 ],
                    "text": "An Ambisonic signal has horizontal and vertical spherical components. \nAmbi-Combiner sums these components back into H+V if you have split them using The AmbiSplitter (splits the signal into Horizontal and Vertical so you can for examples process them separatly.)."
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-9",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Delay.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 274.0, 359.0, 241.0, 77.0 ],
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
                    "id": "obj-7",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-AmbiCombiner.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 40.0, 450.0, 215.0, 82.49997639656067 ],
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
                    "name": "SSTT-AmbiSplitter.maxpat",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 36.0, 270.0, 257.0, 81.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-14",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 377.0, 182.0, 33.0 ],
                    "text": "Delay the Vertical components"
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
                    "patching_rect": [ 36.0, 110.0, 150.0, 30.0 ],
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
                    "patching_rect": [ 40.0, 728.0, 54.0, 22.0 ],
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
                    "patching_rect": [ 36.0, 157.0, 309.0, 108.0 ],
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
                    "patching_rect": [ 40.0, 545.0, 1134.0, 169.0 ],
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
                    "source": [ "obj-19", 0 ]
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
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 1 ],
                    "source": [ "obj-9", 0 ]
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
            "obj-6::obj-24": [ "ShowCh[29]", "showCh", 0 ],
            "obj-6::obj-79": [ "ShowCh[30]", "showCh", 0 ],
            "obj-7::obj-24": [ "ShowCh[4]", "showCh", 0 ],
            "obj-7::obj-79": [ "ShowCh[3]", "showCh", 0 ],
            "obj-9::obj-12": [ "ShowCh[17]", "showCh", 0 ],
            "obj-9::obj-13": [ "ShowCh[19]", "showCh", 0 ],
            "obj-9::obj-26": [ "DelayTime[2]", "DelayTime", 0 ],
            "obj-9::obj-30": [ "Harmonics[2]", "harmonics", 0 ],
            "obj-9::obj-40": [ "live.dial[5]", "Feedback", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-7::obj-24": {
                    "parameter_longname": "ShowCh[4]"
                },
                "obj-7::obj-79": {
                    "parameter_longname": "ShowCh[3]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}