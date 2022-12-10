{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 268.0, 299.0, 720.0, 364.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"active1" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"bubblesize" : 16,
					"fontsize" : 18.0,
					"id" : "obj-45",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 202.962265729904175, 128.79245337843895, 66.037734270095825, 16.415093243122101 ],
					"presentation" : 1,
					"presentation_rect" : [ 526.569515137672397, 122.169804215431213, 130.653387072086389, 25.471696972846985 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-52", "number", "int", 60 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-52", "number", "int", 120 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-52", "number", "int", 240 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-52", "number", "int", 360 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-52", "number", "int", 480 ]
						}
 ],
					"stored1" : [ 0.082673951983452, 0.363330066204071, 0.824637830257416, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 598.108312325477527, 40.924715621471407, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-43",
					"items" : [ "Two", "Timbres", ",", "One", "Timbre" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 598.11455238103872, 73.944337999820704, 100.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 526.840275080204037, 39.0, 130.338289079666083, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 357.943384647369385, 173.169811189174652, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 372.943384647369385, 250.113202810287476, 32.0, 22.0 ],
					"text" : "+ 30"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 357.943384647369385, 289.830184161663055, 34.0, 22.0 ],
					"text" : "pack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 357.943384647369385, 209.015277404785166, 125.0, 22.0 ],
					"text" : "expr ($i1 -1) * 58 + 40"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 357.943384647369385, 327.264151513576508, 233.0, 22.0 ],
					"text" : "clear, paintrect $1 0 $2 102 255. 0. 226 80"
				}

			}
, 			{
				"box" : 				{
					"bgtransparent" : 1,
					"id" : "obj-32",
					"maxclass" : "lcd",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "list", "list", "int", "" ],
					"patching_rect" : [ 357.943384647369385, 365.830184161663055, 397.0, 102.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 78.924529135227203, 193.490557134151459, 397.0, 102.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 367.0, 79.0, 22.0 ],
					"text" : "s Illution-stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 106.0, 367.0, 87.0, 22.0 ],
					"text" : "s Illution-metro"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 16.0,
					"id" : "obj-3",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 43.0, 58.5, 371.0, 38.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 78.924529135227203, 70.773585081100464, 275.075459241867065, 54.0 ],
					"text" : "Press the button to start and stop. Use the number box or presets to control bpm",
					"textcolor" : [ 0.552941176470588, 0.545098039215686, 0.545098039215686, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Bold Oblique",
					"fontsize" : 22.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 43.0, 41.0, 414.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 78.924529135227203, 39.0, 207.075461566448212, 28.0 ],
					"text" : "Wessel's illusion"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 11.0,
					"id" : "obj-15",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 786.537727296352386, 107.0, 109.0, 50.0 ],
					"text" : "to prove the illution works, you can click on this button to stop or restart it",
					"textcolor" : [ 0.0, 0.0, 0.043137254901961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 598.11455238103872, 138.452829837799072, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 598.11455238103872, 107.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 598.11455238103872, 162.452829837799072, 75.0, 22.0 ],
					"text" : "s endillusion"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 106.0, 1324.0, 690.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 644.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 712.0, 248.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 638.0, 248.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 675.0, 248.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 601.0, 248.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 564.0, 248.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 527.0, 248.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 7,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 527.0, 203.0, 241.000000000000057, 22.0 ],
									"text" : "sel 1 2 3 4 5 6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.5, 64.0, 73.0, 22.0 ],
									"text" : "r endillusion"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 155.0, 96.0, 22.0 ],
									"text" : "gate 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 267.5, 58.0, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-121",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 858.0, 644.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1222.666666666666288, 388.0, 73.0, 22.0 ],
									"text" : "set illution-g"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1085.999999999999773, 389.0, 72.0, 22.0 ],
									"text" : "set illution-c"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-118",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 926.333333333333258, 388.0, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-116",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 767.0, 393.0, 31.0, 22.0 ],
									"text" : "sig~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 767.0, 357.0, 70.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 858.166666666666742, 469.0, 100.0, 22.0 ],
									"text" : "groove~ illution-c"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 959.666666666666515, 388.0, 73.0, 22.0 ],
									"text" : "set illution-e"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 858.0, 306.0, 22.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 945.333333333333258, 528.0, 34.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 945.333333333333258, 504.0, 39.0, 22.0 ],
									"text" : "$1 30"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 858.0, 556.0, 106.333333333333258, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1131.0, 306.0, 22.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 994.666666666666515, 306.0, 22.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "bang" ],
									"patching_rect" : [ 1199.666666666666288, 306.0, 42.0, 22.0 ],
									"text" : "t b 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "bang" ],
									"patching_rect" : [ 1062.999999999999773, 306.0, 42.0, 22.0 ],
									"text" : "t b 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 235.000000000000028, 248.0, 22.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 161.0, 248.0, 22.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 198.000000000000028, 248.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 124.0, 248.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 87.0, 248.0, 22.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "bang" ],
									"patching_rect" : [ 926.333333333333258, 306.0, 52.333333333333258, 22.0 ],
									"text" : "t b 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 7,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 858.0, 270.0, 428.999999999999545, 22.0 ],
									"text" : "sel 1 2 3 4 5 6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 728.0, 112.0, 271.0, 22.0 ],
									"text" : "buffer~ illution-g WesselIllusion_Marimba-sol.wav"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 728.0, 85.0, 268.0, 22.0 ],
									"text" : "buffer~ illution-e WesselIllusion_Marimba-mi.wav"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 728.0, 58.0, 269.0, 22.0 ],
									"text" : "buffer~ illution-c WesselIllusion_Marimba-do.wav"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 439.5, 33.0, 22.0 ],
									"text" : "* 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 50.0, 504.0, 34.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 480.0, 39.0, 22.0 ],
									"text" : "$1 30"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 401.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 50.0, 248.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 7,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 203.0, 241.000000000000057, 22.0 ],
									"text" : "sel 1 2 3 4 5 6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 266.0, 575.0, 40.0, 22.0 ],
									"text" : "*~ 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 1,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 106.0, 674.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-39",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 89.0, 60.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-38",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 89.0, 411.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 583.0, 181.0, 33.0, 22.0 ],
													"text" : "* 19."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 583.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.001"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 583.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 524.0, 181.0, 33.0, 22.0 ],
													"text" : "* 17."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 524.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.003"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 524.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 466.0, 181.0, 33.0, 22.0 ],
													"text" : "* 15."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 466.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.007"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 466.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 408.0, 181.0, 33.0, 22.0 ],
													"text" : "* 13."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 408.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.016"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 408.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 350.0, 181.0, 32.0, 22.0 ],
													"text" : "* 11."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 350.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.031"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 350.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 294.0, 181.0, 29.5, 22.0 ],
													"text" : "* 9."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 294.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.063"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 294.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 236.0, 181.0, 29.5, 22.0 ],
													"text" : "* 7."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 236.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.125"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 236.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 183.0, 181.0, 29.5, 22.0 ],
													"text" : "* 5."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 183.0, 264.0, 47.0, 22.0 ],
													"text" : "*~ 0.25"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 183.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 136.0, 181.0, 29.5, 22.0 ],
													"text" : "* 3."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 136.0, 264.0, 40.0, 22.0 ],
													"text" : "*~ 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 136.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 89.0, 181.0, 29.5, 22.0 ],
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 89.0, 124.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 89.0, 316.0, 87.5, 22.0 ],
													"text" : "+~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 89.0, 264.0, 34.0, 22.0 ],
													"text" : "*~ 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 89.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"midpoints" : [ 98.5, 163.0, 145.5, 163.0 ],
													"order" : 8,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"midpoints" : [ 98.5, 163.0, 192.5, 163.0 ],
													"order" : 7,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"midpoints" : [ 98.5, 163.0, 245.5, 163.0 ],
													"order" : 6,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"midpoints" : [ 98.5, 163.0, 303.5, 163.0 ],
													"order" : 5,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 98.5, 163.0, 359.5, 163.0 ],
													"order" : 4,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"midpoints" : [ 98.5, 163.0, 417.5, 163.0 ],
													"order" : 3,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"midpoints" : [ 98.5, 163.0, 475.5, 163.0 ],
													"order" : 2,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"midpoints" : [ 98.5, 163.0, 533.5, 163.0 ],
													"order" : 1,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"midpoints" : [ 98.5, 163.0, 592.5, 163.0 ],
													"order" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"order" : 9,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 266.0, 479.0, 83.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p cycle-timbre"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 233.5, 58.0, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 233.5, 25.0, 80.0, 22.0 ],
									"text" : "r Illusion-stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 266.0, 398.0, 32.0, 22.0 ],
									"text" : "mtof"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 366.0, 283.0, 65.0, 22.0 ],
									"text" : "unpack i i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 376.0, 360.0, 29.5, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 321.0, 360.0, 29.5, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 266.0, 360.0, 29.5, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 127.0, 104.0, 69.0, 22.0 ],
									"text" : "counter 1 6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.0, 64.0, 88.0, 22.0 ],
									"text" : "r Illusion-metro"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 266.0, 434.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-78",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 366.5, 64.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-79",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 266.0, 644.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"midpoints" : [ 969.166666666666515, 439.5, 867.666666666666742, 439.5 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-11", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-11", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-11", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-11", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"midpoints" : [ 935.833333333333258, 439.0, 867.666666666666742, 439.0 ],
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"midpoints" : [ 1095.499999999999773, 439.5, 867.666666666666742, 439.5 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 72.5, 314.5, 275.5, 314.5 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"midpoints" : [ 1232.166666666666288, 439.5, 867.666666666666742, 439.5 ],
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 59.5, 538.5, 296.5, 538.5 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-19", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-24", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-24", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-24", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-24", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-24", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"midpoints" : [ 136.5, 189.5, 536.5, 189.5 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"midpoints" : [ 59.5, 195.5, 867.5, 195.5 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"order" : 1,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-41", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-41", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-41", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-41", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-41", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 2 ],
									"midpoints" : [ 243.0, 96.5, 161.5, 96.5 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-46", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 952.499999999999886, 436.0, 954.833333333333258, 436.0 ],
									"source" : [ "obj-46", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"midpoints" : [ 146.5, 314.5, 385.5, 314.5 ],
									"source" : [ "obj-50", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"midpoints" : [ 220.500000000000028, 314.5, 330.5, 314.5 ],
									"source" : [ "obj-51", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"order" : 0,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"midpoints" : [ 136.5, 143.5, 17.5, 143.5 ],
									"order" : 1,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"source" : [ "obj-62", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 1083.999999999999773, 436.0, 954.833333333333258, 436.0 ],
									"source" : [ "obj-62", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"midpoints" : [ 275.5, 389.5, 275.5, 389.5 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"midpoints" : [ 330.5, 389.5, 275.5, 389.5 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"midpoints" : [ 385.5, 389.5, 275.5, 389.5 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 1 ],
									"midpoints" : [ 375.5, 332.0, 286.0, 332.0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 1 ],
									"midpoints" : [ 398.5, 332.0, 341.0, 332.0 ],
									"source" : [ "obj-67", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 1 ],
									"midpoints" : [ 421.5, 332.0, 396.0, 332.0 ],
									"source" : [ "obj-67", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-120", 0 ],
									"source" : [ "obj-70", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 1220.666666666666288, 436.0, 954.833333333333258, 436.0 ],
									"source" : [ "obj-70", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 1004.166666666666515, 436.0, 954.833333333333258, 436.0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 1140.5, 436.0, 954.833333333333258, 436.0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 1 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 867.5, 436.0, 954.833333333333258, 436.0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 478.0, 134.0, 65.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p arpeggio"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 162.0, 268.0, 107.0, 22.0 ],
					"text" : "expr 1000/($f1/60)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 39.0, 430.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 790.283039569854736, 258.943391621112823, 81.0, 22.0 ],
					"text" : "loadmess -70"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 106.0, 126.0, 87.0, 22.0 ],
					"text" : "loadmess 0 60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 478.0, 41.0, 110.0, 22.0 ],
					"text" : "loadmess 60 64 67"
				}

			}
, 			{
				"box" : 				{
					"coldcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontname" : "Helvetica",
					"fontsize" : 24.0,
					"hotcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-14",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"overloadcolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 790.283039569854736, 316.0, 191.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 549.509419620037079, 179.490557134151459, 85.0, 142.0 ],
					"saved_attribute_attributes" : 					{
						"tribordercolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"trioncolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"tribordercolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"tricolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"trioncolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"varname" : "live.gain~[1]",
					"warmcolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"checkedcolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 106.0, 206.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 526.569515137672397, 72.207547783851624, 38.0, 38.0 ],
					"uncheckedcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 106.0, 161.0, 75.0, 22.0 ],
					"text" : "unpack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 336.0, 82.0, 22.0 ],
					"text" : "s Illusion-stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 22.0, 272.0, 34.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 106.0, 298.0, 75.0, 22.0 ],
					"text" : "metro 3000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 106.0, 336.0, 90.0, 22.0 ],
					"text" : "s Illusion-metro"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 30.0,
					"hint" : "bpm",
					"htricolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"id" : "obj-52",
					"maxclass" : "number",
					"maximum" : 1000,
					"minimum" : 60,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 162.0, 211.0, 101.0, 38.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 574.367244808673831, 72.207547783851624, 83.0, 38.0 ],
					"tricolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 39.0, 496.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 39.0, 463.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 790.283039569854736, 477.037736594676971, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"data" : [ 6660, "png", "IBkSG0fBZn....PCIgDQRA..AzH...fYHX....vMS0LI....DLmPIQEBHf.B7g.YHB..YraRDEDU3wY6cmGcTTk1GG+6spt5tShx99txNAADUDw8cOHiiKvKBnfBHKJ3HJNJnCvHut.upy3LfhhBHt.HprnIBHHnhnIrJCPVHKDVBIDx9d2c006ezIQhRfvvRnKd9bNdNdpt6btW5p6mtt2e08p76OWKDBgPHpFzpoa.BgPHBdHEMDBgPTsIEMDBgPTsIEMDBgPTsIEMDBgPTsIEMDBgPTsIEMDBgPTsIEMDBgPTsIEMDBgPTsIEMDBgPTsIEMDBgPTsIEMDBgPTsIEMDBgPTsIEMDBgPTsIEMDBgPTscFqngR4Dkx0Yp+bBgPHNOzYjhFJkAaXCeGQDwJQoz.TmI9yJDBg37Lm1EMTJ27ge3B4Nuy6i90uAxG+wKVthCgPHroTmNa2qJkAae6aia615GYkUN.PaZSqXSa56noMsIXYYdFqgJDBgnl2owUZnvzzOScpubEEL.Xe6a+r7k+U.Fm9sNgPHDmW4+5hFJkA6ZW+Jqe8+..bIWRqYXCavzfFTeVwJ9Z4pLDmUDHvENpoaFBwoDkJv+YGbZbkFZrt088TPAERqacKYkqbIrfE7ILko7bDSLwQVYcDTJ8ybsTg.M17lihDSLA.4bKQvASSX8qWQVYUS2RNy3znngEadyaC.l1zlLcsqWIfGBO7tPt4lG4jSNHonRbljRoybm6BXcq66Qojg+Tb9OkB75El9z0H4jU1hq1nJuNekxIUcMEEfhDRHIZUqZI8u+2aYGyIwGeBTbwkfllNPHnTdOy2pEWfxfvBKLBMzP.bZK9.nv9ysa3htHSBIj.+Pmf8yaqhhFZrgM7cjd5Yft9wqvgBe97RpodXpW8pKqYMeO986AGNbx69te.ZZJhHhUQSa5Nk41PbFiRoSrwFOd73gPB4hwxxSMcSRHNo73QmCdvdSDQrahIlrvxJ3dg333VzPozHlXhi3iOAb3338TT30qGJpnhnoMswDUTQittNQDw2vN24tnEsn4jRJGhTR4.mka9hKjnT5jd5GA.BKrnwxxWMbKRHN474yA4jSmXW6ZOjQFGLnunQUdeZD3FzSG338vZ.kRW65Ux.Fv8wTm5KyO8Sqk92+GhzRKcF9veX9fOXg.xPSctS4iwuc9eyMXBSXbbkW4kyPFxHvd2WuPgAfe.68HRbO2iIyXF5z4Nq33+cpAOpx4zvxpzp7EoTJ.cb4xId85knh56YfCbnjVZoiCGN3Aev9CThL7AmynyV25OSHg3ltzkvwt9APkxG974COd7.3AKqRpoaRhSCVVVr90+iDd3chF23lPfhG1KJETbwfooNkThW.KrBtqY7eW5orrr.bxkbIsgksruh6+9GDG5PGF.t1qs2bC2v0CHCcv4JJkC9zOco7MeyZjTEIBJnTJrrr3Mdi+EwDSbx8dSPjSR5opprvqQ94mI4jStrm8DaEGsd0qtLyYNcb4pt.dJ6JRDm8YPXgEJgFZnDHUQ10+c2.GNbfSmFXu6mWHPgttuxRCWn.tss2WWgDhE559wkKCff+X2VEEMzYsqcMb3CmN55G6ajV3vgAJkFevGr.V251PkdUgGdmIojN.Ijv7Nq0fE+QJkC14N2Eojx9ot08ivxxdNV+JkN6YOwRQEULZZtrs8yKTXYYQJorehHhUSRIseaZRKsviGcNvAtNV9x2I+5uZaSOkhjRJERHgDqT5oz0cxd2a7rjk7E+gWSe66cvUcUWE6bm+5YuVq33RozIiLNJEUTwr6cua762dNzfJkFYlYVXXXXq6mWnvxxh7xKeRN48gookssngOeFje98fDSLYJrvChkUv8UTcbKZXY4iQMpQwuM7TV.FjUVGf69tef+vy+9tu9whVzBwkqZy4WSlUf1c.dw9dGp6foLkmml1zFwXG6Si8c9jbPQEcromxt1OK+7VKBzGsim2p.7QBIjDie7ild0qaF676mwFqISbhgWV5oBtUsROkR4fLyLcdfGXv7K+xlq330oN0F.5d2uLb45hwxpfyhM0+any12dT32uethq3Jv9lpHW30qW73wK14TEoTFWfjdJEqaceCsu8skV0p1fc77VkRgooIlllTRIkhcMskWfldJE974iwO9Iv2+8arhi1xV1bV1xVL8su2IQG8137qqvH.kxAe0WEIKaYekjpHQPAkRgRo3se64x129NkTEINuyIH8TtHPMECVzhdOVzh97Jdrdzitwm8YKj129tyV1xVY9y+iHPZotHN+5WEEXsJxvvK16z1DHUQFF18TEUd5obh8seFXccKrvBivBKT.WksEJa2nPW2Dcccb4xE16zSA55l31sMO8TqZUQPpolFNb3foO8YToG8Ntiagst0ekcri8vAO3gHkTNHybl+CZTiZLNc5.GNbPokVJll0rEPzzLHpn1B97YxBW37vue62k+BkuCJ9qjTR0hK5hry8SGrqcsaxO+7wzTYK6mkWHLgDRhHi7aI0TOpsLkXJkB+98SxIuOVwJhfXiMQa4xBiREXsmJkTtIV5R2Nst0YhkUvcUipL8TolZZjTRGjsu8sQBIjD.TqZcwLlwLBpcsqKadyagEsnkxgObZ.vy8bSohWeCZP8YPCZ.zfFz.LMq4NQPSSmrxJaLMMI4jS11l1FkRmbyMW74yt2O0H2bymLxHSac+DTTPAER5oeDRN4jsooJJP5oJrvh3vGNMb5zsMseFH8TEUTQbnCkJ98mp8M8TCe3i.vEiabiphiOoI8L77O+TA7vvG9HpXwi62KyLyh8t2D40ds+NgFZColaHqbvq+5uLd73kIO4og8McFNvuee1zzSEXIqob4lat17zSEX3oRN4j3ge3Ayse62C129oIwDSbL1wNBae5o18tM4odptbgP5o7w11Vf66h111KkQMpGAvj+w+3MX9y+iqx+nVVVrpU8sLgI77Lm4LapoVX4JOUQd8Z2SUj8K8TAFGeCJrvbXe6KExImboKcoKD3lkx9ldp.COkBe9LozRKEnzS35.WvJ6X5o14NUz91aQngREIjRof3hCNxQzK6ym13zSoTZTTQEPAETH.bW20sQ8pWKH+7OBycteXEOu69tuK5d26JctycfW4UlJcnCsshGawK9yI932ijbIwoDkRiRK0Cyd1yhK+xuV5cuuEtkaoezqdci7y+bzkMg+Bw4OrrfW+0ULfAnyQNxusmfGYjJ5ae04.G.zCtGUpJbBxymSBKLGDRHtAf9zmdAnSN4jCYjwQQSSioO8WfIO4Wh+0+5+iYO62iIMoIwnF0iw8e+Cje3G9IxKu7YW6JF5XGuhZnnCZfggQYU1sqosABzOsKomJvM80Dm3yvrl06UoGIgDRjDR.dtmaBD72OqJAtRi.oJxIR5oBNnTv68dvXFiN2+8ax69tEyF2nNyblgvTmpEewWnPW2Ofk8M8Te8WuBRM0iPt4lG.7i+3ln3h8SZoc.JrvB4hu3KB2tCg4Mu2mcu6XX+6+.LiY7Zz3F2RBO7NwO7C+D.rjk7kjSNEVijzEMMC1zlhBSSS9fO3cskosABjdpsrksSspUsvkqvBp6mZZNHojRhYO64VkOm0stumLyLOaaph.H93SfUtxugTR4v119oe+9IwDSlu3KVA+m+SrA8omRWGtgavO6XGsgK+xuKLMOJiXDeD986kzRSikrDKZQKB9GdppL8TYkU1b3CmNgGdmIt31KwF6doUspMXYoQiZTCI6rykbxIWJoDuDZngfooe10thASSEMu4Mil0rlRpodX74yGomd50HIcQSSmBJnPLMMqwZCmKnT5TXgEgRoB56mZZN3G9gMV1xuekYXXv3G+XnwMtQjVZGB64xqQ.kTRojSN4R5omtMMUQAl6yRKsTxN6rI8zORPe+zv.RKMeru8cIz0tpX+62fsrkB4RuzrYfCTQIknHszpoakm9pxzSMzgNL.Wjbx6hUu50A.SZRSBvAMtw0iQMp+BcrisigLjQRAEjFKcoKmq65tFF8n+K.EvhW7mSpodXlzjdZtpq5lnlYxvMvoyxSO0TpgZCmIU9aW+9hBF3ymGZXCqOO9i+zDb2OMHrvbwF23uToi51sal9zeQl3DetxNRP9OWqJoAnH93imG9gGTYomJX98yikh.8uxGtMuryctKdrG6QJK8TA28yjRRwvFlN2685kYMqRX6aOTF6XeJJn.ESe59QorGmydRROUobIWR63IexQyq9puIyZV+SF23dZdrGaDjbx6mwO9mkCbfCwy+7Sjl1zlPzQuUF8ngu8a+N1ydhi65ttMtrKqa.4eb+kimsoT9sQomRiDSb23vgAsoMsqhD0nTNI2byjXhINpW8tZB16mJkGF3.6OQG8VY8q+GwoSC5YO6AO4SNVtoa5lvxpXruELruomJv7UnQVYkAIjPR3ymO5Tm5..A8omp74nXxSVid2aXFyvOZZAFppksrhXHCQidzC+z+9G7OzTvIbhvKmOlxTdA16dSjm7I+qbzilEOwSLZdkW40YPCZ.ru8kBfa5ZW6BwE2dY6a+WXri8ond0qtLiYLcb6Nzf1SFNehRYvO9i+Lu7K++wG9guKW60dS.Vr28FCCe3ikXhIdt4a9Fpoalm1rrLoIMoI7IexGPN4jKZZJpUspMANUUNOJXTfE7zL4Mdi2h4O+OlryNa762h1291hKWNqz1uPvnxKDL245mK9hq7w5PGrXiazD+9wVTv.Noq8T5.V31cnrjk7QLyY9l7Fuw+lO4SVBCe3OLWy0za5TmZO6ZW6.CCc17l2F21s0WZSaZMKdwKft0sdC3EkJjyYcnJyNkdJEO5iNJ750GCaXilW60dIZRSZLidzim92+6i9zmdU1x1Rvd+rbJpScBsr+eqx9uPB5SdxI2wldJWD7mdJMJt3b4gdngypV0Zqzirm8DKNc5jvBKLB1SOEPEEL.pz4otbctusb1jxu+b+C0+TJcV9xWIG3.GphctOMMMb3vfMu4svRW5xI6rythiCV32ef+LcricfG4QFLMnAMnraBqZNZZN3a9lUiooI8qe2M98GbOloJkBCC27se62xm8YeI.b8WeeXnCcnDQDeMgFZnbcW20EzmBkKjE3KaTLu48QbUWUO4xtrtET+9ollAQGcTU4MCra2t4oe5wQKZQKC5mH7KTTkWoQQEUL4me9+ts6UEcrismW5kdA762Olll32ue.MN5Qyf27MmE8oO8BGNbQlYl4Y+V+IgllC73oT74yj7yO+f9hF55NvmubYqacGzl1zZBKrPYO6IN129Rja8VuY73oTxKurqoalhSKA9Ipd85khKNvmACVKZDXYdWiMsonNtOd8pWc4oe5wia2tIu7x4bbqS7eqpH8TlL3AODJe3oprics.p7eYfNEWbF7oe5mQm6bGYhS74olKIDZbrqUQJkEd73km8YmTMXa5LAMJnfLYLi4IoYMqIrfE7tTqZUaF6XGOabi+LezG89zxV1dN+ZooWbhYPf8gli88LEfChIlXYvCd.b629elf2yaCzWRLwjHt31akdjF23Fw6+9yh90u9i8cMmxdpZsy8UNkRGSSur28lDfEcnCsCMMcrr7SHgbQzzl1D1wN1If2xR4x4NAFGemje9Yvd2ahbnCkJcqacGSSSaQ5oTJ27IexhHu7xiksrkP8qeC.7yG+wymm4YdNd0W804se6+sD5ffDJkFQG8OQKZQynYMqUU79lR4ljSdWkkvHSB1SOkR4fm8Y+Kjc1YyF23uPCZP83FuwqmwMtQQG5PmvxJ+Z5ln3TT0N1BJkNokV5LhQ73rgM7C.v.Fv8wa+1uUYK0H5zl1zZ1+9OHfIJk5bVLaUJM74yGyYNyh25sdaNvANDd73g5Uu5RyadyXvCt+mSZGmMYYUJCaXClQNxggttQEeIiKWFLqY8lTXgEJELBp3fHibMrzktLVzhlOcqaWA.r10tJd7GeBjat4EzmpHHv87UaaaaYIKYAjWdEfggCBIjKl.KbeAqWA0E1NEhkgAyYNykHib0TTQESQEULe3G9or0st0JVPBaTiZHEVXg32+4leQuR4.kxMfKl1zdEF+3mHIjPRTZokhkkEYlYVryctKb3n70jIWAwIKxB2tcittdklvPKq.qmMA1k2DACB74EMl1zlBOzC8f7.OvPXMqIRVvBlGibjOAu3K9bbq25MVVZ3bgR4rltIeZIv4qJpUspEgDRHDXjHjgjJX0ovOkwhnhZq+giFe7Iv0e82L.je94iCGFnTFm0SBQfKuOZhKtD3vG9v75u9+5397b61EG3.GjO9imOVV9nu881o90uAk8ksAWppqbql3FmTbpq7kC70t1UQ5oeDz0cP6aeaom8r6bm248B.icrijPCML.H5n2BYjQ1DRHFbO2SewoSmAsuWGncGb11EU1oz0+Vm5TqJ+hcnSW5RGAT3wSADUTagd1ydfR47r9bZXYAgDhapScpKQEUzkc2y9GM4I+Lz6deMTRIEhkEk8K0Oq1zDhiKKKKTp.6+20t10FmNcQVYkI6XG+G5UutBxImbK6dc5lYji7QnjRJAe97hKWtOmNbuBwIxw89z339DUt3y9rEy.G3i..csqcgIO4IxfFzvvmuh30dsYve6u8+x5V2J4Vtka+bx3qGX4VOT95udo7m9S+OU5wLLL3Eew+JSYJuHAFEtx6ldjO7IpQEX3oLXe6Kdd3Gdjz7l2Tdm24eSt4lCOxiLZpacqMu+6+NT+52DBjtJKY9pDm2PepScRSq58T8SG5PGHmbxlsrksSG6X6ogMrwDYjeEuvKLU9huXk7RuzeigNzgbNb7J8C3gV1xVfCG5jQFGk5TmZyce22Iu4a9ZLrg8v.9Jq8XhDGUw4G7iRowq7JuFMnAMf4Lm+MWzEEF0oN0k6699SDQDqhryNK5cuulxRNkbdq37GU6qz.BLOBVV9Ysqc8r7k+0jbx6GkBBO7NwfFz+CW9k2yx9B5ys+R9.StsdYCAkEgDRXD3d0viLTThyaUZodvs6.axYkOGaJUffN3wiGb5L3dBvE1SUYQieasm526XWZi8eLGCp4uIcJOYTRkBgPHNanJ1DlbvBVv7IwDSFGNzQSSCWtbSwEWDYkUNjWd4ie+lT25VGBMzvnV05hQoJeINt7uvV9BbgPHraphkQDKZTiZH974CGNLH+7ymYNy+IG7fGhvCuyz0t1YNxQNJKbgKphWyMdiWGO5iNrJVemb4xUEQLziGOAw2eDBgPHJWUD4VS5ae6GAFdJcF6XGIJErhUrD5aeuCb3HvXs9ke4x4QezwRd4kGacq6fG5gdPF4HeB.OLu489r0stCFyXFAW1k0Kp4G5JgPHDmtNgSDtR4hku7ujG3AFBe4W9o7m+yOHA9x+Rn782fwMtmfYO62C.BMzPYyadCXX3jt0sqlRJoTti63VY0qNhf50OGgPHDAbRWFQ9jO4y.TL24t.t26seLiY7JTRIkei6YR+6+eFCi.KiHEUTQ7NuyGPiZT8oCcn8XXXTwV5nPHDhfemfctuP.7QxIuO762OQDwpAfUrhHvzzjIO4+NfEWwUzCZYKaNIkz9.fe7G+IpcsqCaXCQRhIlLW4Ud4.NB52UtDBgPbBRO06+9uGwFarksGfWYyYNyiBKrzx1qJJk7xqfJdrTR4.7TO0ek5Tm5htthUrhHJKC5xDgKDBQvtpL8TspUs.WtBkq9pimHibMU5wCKrPoyctinTl.5T2590bzidTf.wtsYMqozt10Nrr7iOe9vqWOHEMDBgH32I4l6yEwF61ne8q+jXhICDXA+adya1LzgNZBLo3lb0WceH5n2F.z7l2L1119QVyZ9N13F2DiYLijdziqAI8TBgPD76jry8UJcpSclUu5kyJWYjTPAEPe5yUysdq2LVV4gRoQ94mOEVXQU75pe8qGG5Pox3G+DImbxkDSbe7se62HomRHDBafS5RitkkWZaaaGSXBOCAhYq0wT.PizS+HbjibzJd9WxkzZtzKscDd3clsssekt0svO6zxEBgPbN2IH8Tku1ScrKKHJ.qxRVEDX4cd+jQF+VQiANv6mZW6lvpV0xHkT1OgGd3DH8TmBaRfBgPHNuTUldp4Lm2g3iOwS39TrttAQEUTU5XqcsafcricilF3vgC75cw32ur9SIDBgcPUldpN1w1SsqcsQWuptBAcxLyLXVy521BXepm5w45ttqGSSY9KDBgvN5DjdJmT4gm52yIu0aMSlvDddrrr3ZtldwZW6WSngVOjMMFgPHrmNk1Dlp3Eobwd1yN4lto9RFYbTZcqaEQF4WPW5RWkskRgPHrwNkmcZkxfLyLCdrGa7jQFGkl27lxG9guGcoKcSJXHDBgM2II8T+9ZJ5jUVoxvG9nYSaJJ5YO6AKbgykvC+JA7dLopRHDBgczwc3oTJGLqY8NDWb6EGNbfRovkKm3yme9tua8rss8q3zoS5W+tKZaaaG97UprWbKDBwE.phzS4mt28tRSaZiwkKW32uhO+y+B9nOZwzvF1.d0W8uS26d2wzzCd8JKOHBgPbghSR5oL3PGJQl1zdEhLx0v.Fv8wDlv3o0stsH682BgPbgmSvxHhIYmcFLzg9XTqZUKhHhOmdziq.vDKqhq5WlPHDBaqSXja84yGol5goUspknTNkzQIDBwE3pF2be5H2rdBgPHfSvZO0+7e9VDarwigwIcgvUHDBwEHphqzPinhJJxHiLOAq8TBgPHtPyIY3ozPRIkPHDhxcB149jI8VHDBQkIi8jPHDhpMongPHDhpMongPHDhpMongPHDhpMongPHDhpMongPHDhpMongPHDhpMongPHDhpMongPHDhpMongPHDhpMongPHDhpMongPHDhpMongPHDhps+eT4mBp48jm74.....jTQNQjqBAlf" ],
					"embed" : 1,
					"id" : "obj-12",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 357.943384647369385, 365.830184161663055, 397.0, 102.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 78.924529135227203, 193.490557134151459, 397.0, 102.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"order" : 1,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 115.5, 262.5, 31.5, 262.5 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-80", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-80", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-14" : [ "live.gain~[1]", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
