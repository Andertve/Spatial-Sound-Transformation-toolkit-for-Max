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
        "rect": [ 74.0, 142.0, 1234.0, 700.0 ],
        "boxes": [
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "Klesbørste.wav",
                                "filename": "Klesbørste.wav",
                                "filekind": "audiofile",
                                "id": "u273001239",
                                "loop": 0,
                                "content_state": {                                }
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
                    "patching_rect": [ 33.0, 29.0, 150.0, 30.0 ],
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
                    "bubble_bgcolor": [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
                    "bubbleside": 2,
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1013.0, 371.5, 156.0, 52.0 ],
                    "text": "Sub bass output dedicated channel"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubble_bgcolor": [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 236.0, 601.0, 154.0, 24.0 ],
                    "text": "channel routing as list"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 76.0, 603.0, 134.0, 22.0 ],
                    "text": "1 3 2 5 6 7 8 9 10 11 12"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubble_bgcolor": [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
                    "bubbleside": 2,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 19.0, 378.0, 201.0, 39.0 ],
                    "text": "Binaural or loudspeaker decoding"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubble_bgcolor": [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
                    "bubbleside": 2,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 558.0, 389.0, 169.0, 39.0 ],
                    "text": "Headphone EQ for binaural"
                }
            },
            {
                "box": {
                    "bubble_bgcolor": [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
                    "id": "obj-23",
                    "linecount": 18,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 604.0, 131.0, 178.0, 248.0 ],
                    "text": "NB\n\nThe bpatcers or modules are based on IRCAM Spat5 for the most although quite a lot  a few custom abstractions was made for this toolkit. \n\nHowever all of the specific functionality when it comes handling the order and channelcount dynamically, custom javascript are vital to this toolkit therefore please leave the js files and these bpatchers in the folder where they are, otherwise it will be broken."
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubble_bgcolor": [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
                    "id": "obj-17",
                    "linecount": 9,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 339.0, 111.0, 237.0, 131.0 ],
                    "text": "Define the ambisonic order by entering order numbe  and all the modules you use from this toolkit are dynamically changed to reflect the order and channel count. This information is displayed in the two small number boxes located in the lower‑right corner. You also define the number of sources, default is 1."
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubble_bgcolor": [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
                    "bubbleside": 2,
                    "id": "obj-16",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 790.0, 382.5, 153.0, 52.0 ],
                    "text": "Define your own loudspeaker setup"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubble_bgcolor": [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
                    "bubbleside": 0,
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 646.0, 586.0, 153.0, 39.0 ],
                    "text": "Decoder settings"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubble_bgcolor": [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
                    "bubbleside": 3,
                    "id": "obj-14",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 519.0, 484.0, 153.0, 37.0 ],
                    "text": "Preexisting Loudpspeaker setups"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubble_bgcolor": [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
                    "id": "obj-13",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 106.0, 634.0, 414.0, 51.0 ],
                    "text": "a DAC object—in this case mc.dac~. Since the output from the Decoder Out module is multichannel, we use mc.dac~. For specific routing and channel selection you can define it with a list."
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 33.0, 657.0, 54.0, 22.0 ],
                    "text": "mc.dac~"
                }
            },
            {
                "box": {
                    "bubble_bgcolor": [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
                    "id": "obj-10",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 147.0, 294.0, 178.0, 60.0 ],
                    "text": "An input to the Encoder module,the Decoder Out  module and a dac~ must be in place connected in  the patch"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubble_bgcolor": [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
                    "id": "obj-7",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 203.0, 23.0, 317.0, 51.0 ],
                    "text": "Any mono/stereo - multi input: Soundfile, live input or generated signal, you can use as many sources as you want as long as this packed as mc. "
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
                    "patching_rect": [ 33.0, 122.0, 304.0, 109.0 ],
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
                    "patching_rect": [ 33.0, 419.0, 1133.0, 168.0 ],
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-9", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-19::obj-16": [ "ambiorder[1]", "ambiorder", 0 ],
            "obj-19::obj-20": [ "ShowCh[13]", "showCh", 0 ],
            "obj-19::obj-3": [ "live.numbox[20]", "ambiorder", 0 ],
            "obj-19::obj-57": [ "live.text[15]", "live.text[9]", 0 ],
            "obj-19::obj-79": [ "ShowCh[14]", "showCh", 0 ],
            "obj-1::obj-10": [ "live.dial", "Crossover", 0 ],
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
            "obj-1::obj-31": [ "mc.live.gain~[9]", "headphones", 0 ],
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
            "parameter_overrides": {
                "obj-19::obj-16": {
                    "parameter_initial": 1,
                    "parameter_longname": "ambiorder[1]",
                    "parameter_osc_name": "numsource"
                },
                "obj-19::obj-3": {
                    "parameter_longname": "live.numbox[20]"
                },
                "obj-19::obj-57": {
                    "parameter_longname": "live.text[15]"
                },
                "obj-1::obj-10": {
                    "parameter_longname": "live.dial"
                },
                "obj-1::obj-103::obj-21": {
                    "parameter_longname": "live.menu"
                },
                "obj-1::obj-31": {
                    "parameter_longname": "mc.live.gain~[9]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "snapshot": {
            "filetype": "C74Snapshot",
            "version": 2,
            "minorversion": 0,
            "name": "snapshotlist",
            "origin": "jpatcher",
            "type": "list",
            "subtype": "Undefined",
            "embed": 1,
            "snapshot": {
                "valuedictionary": {
                    "parameter_values": {
                        "ShowCh[13]": 5.0,
                        "ShowCh[14]": 36.0,
                        "ShowCh[1]": 5.0,
                        "ShowCh[2]": 36.0,
                        "live.dial": 700.0,
                        "live.menu": 14.0,
                        "live.menu[10]": 0.0,
                        "live.menu[5]": 4.0,
                        "live.menu[8]": 3.0,
                        "live.menu[9]": 0.0,
                        "live.numbox[20]": 5.0,
                        "live.numbox[6]": 7.0,
                        "live.tab[2]": 0.0,
                        "live.text[10]": 0.0,
                        "live.text[12]": 0.0,
                        "live.text[13]": 0.0,
                        "live.text[14]": 0.0,
                        "live.text[15]": 0.0,
                        "live.text[1]": 0.0,
                        "live.text[9]": 0.0,
                        "live.toggle[19]": 0.0,
                        "live.toggle[20]": 0.0,
                        "live.toggle[436]": 0.0,
                        "mc.live.gain~[2]": -70.0,
                        "mc.live.gain~[9]": -70.0
                    }
                }
            },
            "snapshotlist": {
                "current_snapshot": 0,
                "entries": [
                    {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "SSTT-example-1",
                        "origin": "SSTT-example-1",
                        "type": "patcher",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "valuedictionary": {
                                "parameter_values": {
                                    "ShowCh[13]": 5.0,
                                    "ShowCh[14]": 36.0,
                                    "ShowCh[1]": 5.0,
                                    "ShowCh[2]": 36.0,
                                    "live.dial": 700.0,
                                    "live.menu": 14.0,
                                    "live.menu[10]": 0.0,
                                    "live.menu[5]": 4.0,
                                    "live.menu[8]": 3.0,
                                    "live.menu[9]": 0.0,
                                    "live.numbox[20]": 5.0,
                                    "live.numbox[6]": 7.0,
                                    "live.tab[2]": 0.0,
                                    "live.text[10]": 0.0,
                                    "live.text[12]": 0.0,
                                    "live.text[13]": 0.0,
                                    "live.text[14]": 0.0,
                                    "live.text[15]": 0.0,
                                    "live.text[1]": 0.0,
                                    "live.text[9]": 0.0,
                                    "live.toggle[19]": 0.0,
                                    "live.toggle[20]": 0.0,
                                    "live.toggle[436]": 0.0,
                                    "mc.live.gain~[2]": -70.0,
                                    "mc.live.gain~[9]": -70.0
                                }
                            }
                        },
                        "fileref": {
                            "name": "SSTT-example-1",
                            "filename": "SSTT-example-1.maxsnap",
                            "filepath": "~/Documents/Max 9/Snapshots",
                            "filepos": -1,
                            "snapshotfileid": "0379bfe9d66b1de29d1e25cb8b57febb"
                        }
                    }
                ]
            }
        },
        "stripecolor": [ 0.227451, 0.247059, 0.266667, 1.0 ],
        "saved_attribute_attributes": {
            "locked_bgcolor": {
                "expression": "themecolor.theme_editing_bgcolor"
            }
        }
    }
}