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
        "rect": [ 59.0, 114.0, 1201.0, 759.0 ],
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
                    "patching_rect": [ 35.0, 29.0, 485.0, 30.0 ],
                    "text": "SSTT-SpectrumSplit~",
                    "varname": "autohelp_top_title"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 61.0, 639.0, 60.0 ],
                    "presentation_linecount": 6,
                    "text": "Splits the source sound into frequency multichannel bands 50-band resonance filter with 50 channels. I.e. each channel, one freq band. Accepts  mono,multchannel or ambisonic sources. \nThe Frequency band and corresponding channels are then encoded into ambisonics as as virtual sources. \nThe virtual sources are distributed by Fibonacci spiral.  use Open too see the distribution"
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
                    "id": "obj-4",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-SpectrumSplit~.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 35.0, 287.0, 354.0, 96.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "clipheight": 20.5,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "bsclarinetsAirsnd3.aif",
                                "filename": "bsclarinetsAirsnd3.aif",
                                "filekind": "audiofile",
                                "id": "u353004504",
                                "selection": [ 0.0, 1.0 ],
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "preparert piano 01.wav",
                                "filename": "preparert piano 01.wav",
                                "filekind": "audiofile",
                                "id": "u703014634",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "fontface": 0,
                    "id": "obj-26",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 209.0, 243.0, 43.0 ],
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
                    "fontface": 0,
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 600.0, 58.0, 22.0 ],
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
                    "patching_rect": [ 844.0, 76.0, 305.0, 111.0 ],
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
                    "patching_rect": [ 35.0, 416.0, 1131.0, 172.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 45.83333158493042, 593.749977350235, 1196.874954342842, 179.16665983200073 ],
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-26", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-4", 0 ]
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
            "obj-4::obj-3": [ "gain_spc", "Gain", 0 ],
            "obj-4::obj-58": [ "live.text[22]", "live.text[9]", 0 ],
            "obj-4::obj-7": [ "ShowCh[15]", "showCh", 0 ],
            "obj-4::obj-79": [ "ShowCh[16]", "showCh", 0 ],
            "obj-4::obj-85::obj-40": [ "live.numbox[13]", "live.numbox", 0 ],
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