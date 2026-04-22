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
        "rect": [ 330.0, 101.0, 1244.0, 759.0 ],
        "boxes": [
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "Klesbørste.wav",
                                "filename": "Klesbørste.wav",
                                "filekind": "audiofile",
                                "id": "u157011048",
                                "loop": 0,
                                "content_state": {                                }
                            }
                        ]
                    },
                    "id": "obj-6",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 51.0, 126.0, 150.0, 30.0 ],
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
                    "fontface": 3,
                    "fontname": "Arial",
                    "fontsize": 20.871338,
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 50.0, 44.0, 485.0, 30.0 ],
                    "text": "SSTT-record",
                    "varname": "autohelp_top_title"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 50.0, 76.0, 494.0, 20.0 ],
                    "text": "Records any signal, autoupdates to the number of channels detected in its input."
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 466.0, 339.0, 150.0, 47.0 ],
                    "text": "Recording the ambisonic output means recording before decoding part.!"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-15",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-record.maxpat",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 186.0, 326.0, 251.0, 80.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1047.0859375, 492.59765625, 251.0, 80.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 45.0, 622.0, 54.0, 22.0 ],
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
                    "patching_rect": [ 45.0, 201.0, 304.0, 105.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 86.87499725818634, 111.87499630451202, 336.4583204984665, 80.99662685394287 ],
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
                    "patching_rect": [ 45.0, 425.0, 1129.0, 168.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 60.83333158493042, 608.749977350235, 1196.874954342842, 179.16665983200073 ],
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
                    "destination": [ "obj-1", 0 ],
                    "order": 0,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "order": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-15::obj-20": [ "ShowCh[12]", "showCh", 0 ],
            "obj-15::obj-25": [ "live.toggle[9]", "live.toggle", 0 ],
            "obj-15::obj-53": [ "live.tab[8]", "live.tab[8]", 0 ],
            "obj-15::obj-79": [ "ShowCh[11]", "showCh", 0 ],
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