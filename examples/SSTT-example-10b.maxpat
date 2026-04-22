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
        "rect": [ 44.0, 212.0, 1277.0, 701.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 993.0, 281.0, 93.0, 22.0 ],
                    "text": "round 0.041667"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "int" ],
                    "patching_rect": [ 918.0, 228.0, 40.0, 22.0 ],
                    "text": "t b b i"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 986.0, 257.0, 129.0, 22.0 ],
                    "text": "random @range 0. 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 855.0, 326.0, 157.0, 22.0 ],
                    "text": "sprintf setvalue %ld 14 %.2f"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 908.0, 146.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "int" ],
                    "patching_rect": [ 897.0, 184.0, 41.0, 22.0 ],
                    "text": "uzi 49"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "id": "obj-43",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 343.0, 88.0, 51.0 ],
                    "presentation_linecount": 3,
                    "text": "2 process the t format signal"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-42",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 459.0, 260.5, 109.0, 51.0 ],
                    "presentation_linecount": 3,
                    "text": "3 from T-format\nback to Ambisonic"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "id": "obj-41",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 292.0, 94.0, 37.0 ],
                    "presentation_linecount": 2,
                    "text": "1 T-format output"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 101.0, 351.0, 31.0, 22.0 ],
                    "text": "plug"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "data": {
                        "autosave": 1,
                        "snapshot": {
                            "filetype": "C74Snapshot",
                            "version": 2,
                            "minorversion": 0,
                            "name": "snapshotlist",
                            "origin": "vst~",
                            "type": "list",
                            "subtype": "Undefined",
                            "embed": 1,
                            "snapshot": {
                                "pluginname": "ValhallaSupermassive.vstinfo",
                                "plugindisplayname": "ValhallaSupermassive",
                                "pluginsavedname": "",
                                "pluginsaveduniqueid": 0,
                                "version": 1,
                                "isbank": 0,
                                "isbase64": 1,
                                "blob": "666.CMlaKA....fQPMDZ....ALWSgMG.AL......A........................................HfWVMjLgTk....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVEFanEFarE1T0AWYx0VXyMWZ1UFHvwVcmklaVUlbyk1at0iHw3xLt.iHf.mbkMWYz4TXsUVOhLTZxIWcy0TXp8lbSkmazgVQig1akMmHfzTZ30iHv3RM1XSN4jSN2DCN1XiMvbyMh.BQkwVX4MUdtMVOh.iK0HBHDUFagkmSuQWY8HBLtXyL0jSN4jyM2TCN3XSMyXiHfPTYrEVde0zb8HBLtXyMyLyLyLCM1fCMybSL4TiHfPTYrEVdWElbv0iHv3hMvHSN4jSN3TiLwfCLzfSLh.xPrUVXx0iHw3BLh.hQkUFYhE1Xq0iHv3xM4HSN4jSN3HCNyLCN1HyLh.BQk41boQWd8HBLtLCM4jSN4jSNz.yL4TyL0TiHfbUZjQGZ8HRLt.iHfvza2MTcz0iHv3hLwDSN4jSN4bCM4XiMvPSNh.BRocFZCUGc8HBLtPiLwjSN4jSNvjCMv.SNzHBHM8FYREFck0iHv3hLzLCLv.CLv.yMwTiL0TyMh.RSuQFQkAGcn0iHv3BM3fCLv.CLvTCM3LiMxbyLh.RSuQVY8HBLtHSNwXiM1XSM1byLxTSM4HiHfHUYyUlb1UFYwziHv3hLyfCLv.CLvTCM3LiMxbyLh.hTkMWYxYWYjISOh.iKvHBHRU1bkImckQ1L8HBLt.iHfHUYyUlb1UFYzziHv3BLh.RaogGSuM1Z8HBLh.RcocUZjQGZ8HBNx.iHfTWZHUVZmgFc8HBMyTiHu3C."
                            },
                            "snapshotlist": {
                                "current_snapshot": 0,
                                "entries": [
                                    {
                                        "filetype": "C74Snapshot",
                                        "version": 2,
                                        "minorversion": 0,
                                        "name": "ValhallaSupermassive",
                                        "origin": "ValhallaSupermassive.vstinfo",
                                        "type": "VST",
                                        "subtype": "AudioEffect",
                                        "embed": 0,
                                        "snapshot": {
                                            "pluginname": "ValhallaSupermassive.vstinfo",
                                            "plugindisplayname": "ValhallaSupermassive",
                                            "pluginsavedname": "",
                                            "pluginsaveduniqueid": 0,
                                            "version": 1,
                                            "isbank": 0,
                                            "isbase64": 1,
                                            "blob": "666.CMlaKA....fQPMDZ....ALWSgMG.AL......A........................................HfWVMjLgTk....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVEFanEFarE1T0AWYx0VXyMWZ1UFHvwVcmklaVUlbyk1at0iHw3xLt.iHf.mbkMWYz4TXsUVOhLTZxIWcy0TXp8lbSkmazgVQig1akMmHfzTZ30iHv3RM1XSN4jSN2DCN1XiMvbyMh.BQkwVX4MUdtMVOh.iK0HBHDUFagkmSuQWY8HBLtXyL0jSN4jyM2TCN3XSMyXiHfPTYrEVde0zb8HBLtXyMyLyLyLCM1fCMybSL4TiHfPTYrEVdWElbv0iHv3hMvHSN4jSN3TiLwfCLzfSLh.xPrUVXx0iHw3BLh.hQkUFYhE1Xq0iHv3xM4HSN4jSN3HCNyLCN1HyLh.BQk41boQWd8HBLtLCM4jSN4jSNz.yL4TyL0TiHfbUZjQGZ8HRLt.iHfvza2MTcz0iHv3hLwDSN4jSN4bCM4XiMvPSNh.BRocFZCUGc8HBLtPiLwjSN4jSNvjCMv.SNzHBHM8FYREFck0iHv3hLzLCLv.CLv.yMwTiL0TyMh.RSuQFQkAGcn0iHv3BM3fCLv.CLvTCM3LiMxbyLh.RSuQVY8HBLtHSNwXiM1XSM1byLxTSM4HiHfHUYyUlb1UFYwziHv3hLyfCLv.CLvTCM3LiMxbyLh.hTkMWYxYWYjISOh.iKvHBHRU1bkImckQ1L8HBLt.iHfHUYyUlb1UFYzziHv3BLh.RaogGSuM1Z8HBLh.RcocUZjQGZ8HBNx.iHfTWZHUVZmgFc8HBMyTiHu3C."
                                        },
                                        "fileref": {
                                            "name": "ValhallaSupermassive",
                                            "filename": "ValhallaSupermassive.maxsnap",
                                            "filepath": "~/Documents/Max 9/Snapshots",
                                            "filepos": -1,
                                            "snapshotfileid": "565ff06e55551adeeb8c8cac7591c013"
                                        }
                                    }
                                ]
                            }
                        }
                    },
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-68",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 9,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 134.0, 357.5, 171.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 1,
                        "parameter_mappable": 0
                    },
                    "text": "mc.vst~ ValhallaSupermassive",
                    "varname": "mc.vst~",
                    "viewvisibility": 0
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "linecount": 16,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 608.0, 80.0, 235.0, 221.0 ],
                    "text": "In fact any non-linear sound transformation to ambisonic will trash the ambisonic signal ( but it still might sound great!) however you can use the Re-Encoder which will \n1) decode to a intermediate format called, t-format then 2 do your non-linear processing then 3) go from t-format to ambisonic where it will be a proper ambisonic signal. \n\nIn this example we use an vst plugin (select you own) set in multichannel mode (mc.vst~)  so that it has the number of instances of that plugin according to the t-format channels, in this case 49.."
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-13",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-ReEncoder.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 153.0, 239.0, 300.0, 94.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "EspressoHelling.wav",
                                "filename": "EspressoHelling.wav",
                                "filekind": "audiofile",
                                "id": "u856006565",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-8",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 153.0, 40.0, 150.0, 30.0 ],
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
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 124.0, 627.0, 54.0, 22.0 ],
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
                    "name": "SSTT-encode.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 153.0, 103.0, 322.0, 111.0 ],
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
                    "name": "SSTT-Decoder-Output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 124.0, 433.0, 1135.0, 171.0 ],
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-106", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-106", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 1 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "source": [ "obj-76", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-8", 1 ]
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
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-13::obj-67": [ "live.menu[39]", "live.menu[13]", 0 ],
            "obj-13::obj-79": [ "ShowCh[15]", "showCh", 0 ],
            "obj-13::obj-9": [ "ShowCh[5]", "showCh", 0 ],
            "obj-1::obj-16": [ "ambiorder[1]", "ambiorder", 0 ],
            "obj-1::obj-20": [ "ShowCh[13]", "showCh", 0 ],
            "obj-1::obj-3": [ "ambiorder", "ambiorder", 0 ],
            "obj-1::obj-57": [ "live.text[15]", "live.text[9]", 0 ],
            "obj-1::obj-79": [ "ShowCh[14]", "showCh", 0 ],
            "obj-2::obj-10": [ "Crossover", "Crossover", 0 ],
            "obj-2::obj-103::obj-21": [ "speakersetup", "live.menu", 0 ],
            "obj-2::obj-12": [ "live.menu[8]", "live.menu[2]", 0 ],
            "obj-2::obj-14": [ "mc.live.gain~[2]", "loudspeakers", 0 ],
            "obj-2::obj-22::obj-102": [ "live.toggle[436]", "live.toggle", 0 ],
            "obj-2::obj-22::obj-3": [ "live.text[1]", "live.text[9]", 0 ],
            "obj-2::obj-22::obj-57": [ "live.text[9]", "live.text[9]", 0 ],
            "obj-2::obj-22::obj-58": [ "live.text[10]", "live.text[9]", 0 ],
            "obj-2::obj-22::obj-62": [ "live.text[12]", "live.text[9]", 0 ],
            "obj-2::obj-22::obj-72": [ "live.text[14]", "live.text[8]", 0 ],
            "obj-2::obj-25": [ "live.tab[2]", "live.tab[2]", 0 ],
            "obj-2::obj-27": [ "live.menu[9]", "live.menu", 0 ],
            "obj-2::obj-31": [ "Headphones_vol", "headphones", 0 ],
            "obj-2::obj-35": [ "Sub_ch_freq", "freq", 0 ],
            "obj-2::obj-36": [ "live.toggle[20]", "live.toggle[2]", 0 ],
            "obj-2::obj-38": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-2::obj-39": [ "Sub_ch_sel", "Sub_ch_sel", 0 ],
            "obj-2::obj-4": [ "ShowCh[1]", "showCh", 0 ],
            "obj-2::obj-45": [ "live.menu[10]", "live.menu", 0 ],
            "obj-2::obj-46": [ "Sub_ch_vol", "Sub_ch_vol", 0 ],
            "obj-2::obj-55": [ "live.toggle[19]", "live.toggle[2]", 0 ],
            "obj-2::obj-58": [ "live.text[13]", "live.text[9]", 0 ],
            "obj-2::obj-7": [ "live.menu[5]", "live.menu[1]", 0 ],
            "obj-2::obj-79": [ "ShowCh[2]", "showCh", 0 ],
            "obj-68": [ "vst~[41]", "vst~[41]", 0 ],
            "parameter_overrides": {
                "obj-13::obj-67": {
                    "parameter_longname": "live.menu[39]"
                },
                "obj-2::obj-103::obj-21": {
                    "parameter_linknames": 1,
                    "parameter_longname": "speakersetup",
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "speakersetup"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}