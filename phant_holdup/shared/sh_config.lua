SharedConfig = {
    LastRobbed = {
        -- ['Fleeca1'] = 0,
        -- ['Kasetka1'] = 0,
        -- ['Kasetka2'] = 0,
        -- ['Kasetka3'] = 0,
        -- ['Kasetka4'] = 0,
        -- ['Kasetka5'] = 0,
        -- ['Kasetka6'] = 0,
        -- ['Kasetka7'] = 0,
        -- ['Kasetka8'] = 0,
        -- ['Kasetka9'] = 0,
        -- ['Kasetka10'] = 0,
        -- ['Kasetka11'] = 0,
        -- ['Kasetka12'] = 0,
        -- ['Kasetka13'] = 0,
        -- ['Kasetka14'] = 0,
        -- ['Kasetka15'] = 0,
        -- ['Kasetka16'] = 0,
        -- ['Fleeca1'] = 0,
        -- ['Fleeca2'] = 0,
        -- ['Fleeca3'] = 0,
        -- ['Fleeca8'] = 0,
        -- ['Fleeca4'] = 0,
        -- ['Fleeca5'] = 0,
        -- ['Fleeca6'] = 0,
        -- ['Fleeca7'] = 0,
        -- ['Jubiler'] = 0,
        -- ['MazeBank'] = 0,
        -- ['DiamondCasino'] = 0,
        -- ['HumaneLabs'] = 0,
        -- ['Magazyn'] = 0,
        -- ['MilitaryBase'] = 0,
    },
    Holdups = {
        -- kasetki

        {
            id = 'Kasetka1',
            name = 'Kasetka',
            police = 1,
            pos = vector3(1126.6281738281, -980.11877441406, 44.415859222412),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka2',
            police = 1,
            name = 'Kasetka',
            pos = vector3(-53.07169342041, -1756.9321289062, 28.437141418457),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka3',
            police = 1,
            name = 'Kasetka',
            pos = vector3(28.810096740723, -1351.1171875, 28.335231781006),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka11',
            police = 1,
            name = 'Kasetka',
            pos = vector3(1159.8234863281, -314.12561035156, 68.205070495605),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka4',
            police = 1,
            name = 'Kasetka',
            pos = vector3(-711.38409423828, -917.55474853516, 18.214267730713),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka5',
            police = 1,
            name = 'Kasetka',
            pos = vector3(-1235.1870117188, -897.52423095703, 11.110486984253),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka6',
            police = 1,
            name = 'Kasetka',
            pos = vector3(-1491.158203125, -384.64868164062, 39.027416229248),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka7',
            police = 1,
            name = 'Kasetka',
            pos = vector3(376.62701416016, 323.15884399414, 102.57280731201),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka9',
            police = 1,
            name = 'Kasetka',
            pos = vector3(-2973.8857421875, 391.35897827148, 14.036021232605),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka10',
            police = 1,
            name = 'Kasetka',
            pos = vector3(-3037.3198242188, 589.60949707031, 6.8131556510925),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            police = 1,
            id = 'Kasetka11',
            name = 'Kasetka',
            pos = vector3(-3239.5512695312, 1004.6520385742, 11.617480278015),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka12',
            police = 1,
            name = 'Kasetka',
            pos = vector3(1698.5053710938, 4929.4418945312, 41.078086853027),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka13',
            police = 1,
            name = 'Kasetka',
            pos = vector3(1965.2712402344, 3740.3972167969, 31.332191467285),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka14',
            police = 1,
            name = 'Kasetka',
            pos = vector3(1393.9384765625, 3599.6110839844, 34.019435882568),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka15',
            police = 1,
            name = 'Kasetka',
            pos = vector3(2682.7951660156, 3282.0219726562, 54.240524291992),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka16',
            police = 1,
            name = 'Kasetka',
            pos = vector3(1166.4611816406, 2703.6740722656, 37.179126739502),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            police = 1,
            id = 'Kasetka17',
            name = 'Kasetka',
            pos = vector3(544.41003417969, 2671.591796875, 41.156463623047),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        {
            id = 'Kasetka18',
            police = 1,
            name = 'Kasetka',
            pos = vector3(-1078.5628662109, -2782.1176757812, 28.424217224121),
            timer = 0.5 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(20000, 100000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_glasshammer',
                            name = 'Wybijak do szyb',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 75,
                            weapon = 'WEAPON_SNSPISTOL',
                            name = 'SNS Pistol',
                            ammo = function()
                                return 50
                            end,
                            count = function()
                                return random(1, 3)
                            end,
                            type = 'weapon'
                        }
                    }
                end
            },
            requiredItems = {},
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na kasetke'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 60
            }
        },
        -- banki
        {
            id = 'Fleeca1',
            name = 'Bank fleeca',
            pos = vector3(147.04908752441, -1044.9448242188, 29.46802482605),
            timer = 2 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_drill',
                            name = 'Specjalne wiertło',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_wytrych',
                    label = 'Wytrych specjalistyczny',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na bank'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 30
            }
        },

        {
            id = 'Fleeca2',
            name = 'Bank fleeca',
            pos = vector3(-2957.6674804688, 481.45776367188, 15.797026252747),
            timer = 2 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_drill',
                            name = 'Specjalne wiertło',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_wytrych',
                    label = 'Wytrych specjalistyczny',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na bank'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 30
            }
        },
        {
            id = 'Fleeca3',
            name = 'Bank fleeca',
            pos = vector3(1648.2958, 4851.5972, 42.0599),
            timer = 2 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_drill',
                            name = 'Specjalne wiertło',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_wytrych',
                    label = 'Wytrych specjalistyczny',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na bank'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 30
            }
        },
        {
            id = 'Fleeca4',
            name = 'Bank fleeca',
            pos = vector3(-107.06505584717, 6474.8012695313, 31.72670135498),
            timer = 2 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_drill',
                            name = 'Specjalne wiertło',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_wytrych',
                    label = 'Wytrych specjalistyczny',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na bank'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 30
            }
        },
        {
            id = 'Fleeca8',
            name = 'Bank fleeca',
            pos = vector3(1176.77, 2711.82, 38.19),
            timer = 2 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_drill',
                            name = 'Specjalne wiertło',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_wytrych',
                    label = 'Wytrych specjalistyczny',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na bank'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 30
            }
        },
        {
            id = 'Fleeca5',
            name = 'Bank fleeca',
            pos = vector3(-1211.88, -336.17, 37.89),
            timer = 2 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_drill',
                            name = 'Specjalne wiertło',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_wytrych',
                    label = 'Wytrych specjalistyczny',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na bank'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 30
            }
        },
        {
            id = 'Fleeca6',
            name = 'Bank fleeca',
            pos = vector3(310.85, -283.32, 54.27),
            timer = 2 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_drill',
                            name = 'Specjalne wiertło',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_wytrych',
                    label = 'Wytrych specjalistyczny',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na bank'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 30
            }
        },
        {
            id = 'Fleeca7',
            name = 'Bank fleeca',
            pos = vector3(-354.32, -54.02, 49.14),
            timer = 2 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_drill',
                            name = 'Specjalne wiertło',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_wytrych',
                    label = 'Wytrych specjalistyczny',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na bank'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 30
            }
        },
        -- JUBILER

        {
            id = 'Jubiler',
            name = 'Jubiler',
            pos = vector3(-354.32, -54.02, 49.14),
            timer = 2 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_wytrych',
                            name = 'Wytrych specjalistyczny',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_glasshammer',
                    label = 'Wybijak do szyb',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na Jubilera'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 45
            }
        },

        -- BLAINE COUNTY
        {
            id = 'BlaineCounty',
            name = 'BlaineCounty',
            pos = vector3(-107.06505584717, 6474.8012695313,  31.72670135498),
            timer = 2 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_drill',
                            name = 'Specialistyczne wiertło',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_drill',
                    label = 'Specjalne Wiertło',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na Blaine County'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'voltlab',
                time = 45
            }
        },

        -- MASE BANK
        {
            id = 'MazeBank',
            name = 'MazeBank',
            pos = vector3(-1310.0148, -810.8741, 17.19),
            timer = 3 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 95,
                            item = 'p_drill2',
                            name = 'Specjalne diamentowe wiertlo',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 45,
                            item = 'p_minismg_parts',
                            name = 'Częsci MINI SMG',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_drill',
                    label = 'Specjalne Wiertło',
                    count = function()
                        return 1
                    end
                },
                {
                    item = 'p_wytrych',
                    label = 'Wytrych specjalistyczny',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na Blaine County'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'otherhack',
                mult = 3
            }
        },
        -- PACIFIC
        {
            id = 'Pacific',
            name = 'Pacific',
            police = 1,
            pos = vector3(254.238, 225.5682, 101.8257),
            timer = 4 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 100,
                            item = 'p_card',
                            name = 'Specjalne diamentowe wiertlo',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 45,
                            item = 'p_machinepistol_parts',
                            name = 'Częsci Machine Pistol',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_drill2',
                    label = 'Specjalne Wiertło',
                    count = function()
                        return 1
                    end
                },
                {
                    item = 'p_wytrych',
                    label = 'Wytrych specjalistyczny',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na Pacific'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'otherhack',
                mult = 4
            }
        },

        -- KASYNO
        {
            id = 'DiamondCasino',
            name = 'Diamond Casino',
            pos = vector3(1000.7908, 66.3221, 59.87),
            timer = 6 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 100,
                            item = 'p_goldcard',
                            name = 'Złota karta dostępu',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 45,
                            item = 'p_carbinerifle_parts',
                            name = 'Częsci Carbine Rifle',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_drill2',
                    label = 'Specjalne Diamentowe Wiertło',
                    count = function()
                        return 1
                    end
                },
                {
                    item = 'p_card',
                    label = 'Karta dostępu',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na DiamondCasino'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'otherhack',
                mult = 5
            }
        },

        -- Humane
        {
            id = 'HumaneLabs',
            name = 'HumaneLabs',
            pos = vector3(3537.7297, 3659.6885, 28.1719),
            timer = 8 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 100,
                            item = 'p_platinumcard',
                            name = 'Platynowa karta dostepu',
                            count = function()
                                return 1
                            end,
                            type = 'item'
                        },
                        {
                            chance = 45,
                            item = 'p_assaultrifle_parts',
                            name = 'Częsci Machine Pistol',
                            count = function()
                                return 2
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_drill2',
                    label = 'Specjalne Diamentowe Wiertło',
                    count = function()
                        return 1
                    end
                },
                {
                    item = 'p_goldcard',
                    label = 'Złota Karta dostępu',
                    count = function()
                        return 1
                    end
                }
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na Humane Labs'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'otherhack',
                mult = 6
            }
        },
        -- MAGAZYN
        {
            id = 'Magazyn',
            name = 'Magazyn',
            pos = vector3(569.08, -3124.75, 18.76),
            timer = 10 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 100,
                            item = 'p_militarycard',
                            name = 'Wojskowa karta dostepu',
                            count = function()
                                return 2
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_platinumcard',
                    label = 'Platynowa karta dostepu',
                    count = function()
                        return 1
                    end
                },
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na Magazyn'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'otherhack',
                mult = 7
            }
        },

        -- BAZA WOJSKOWA
        {
            id = 'MilitaryBase',
            name = 'MilitaryBase',
            pos = vector3(569.08, -3124.75, 18.76),
            timer = 12 * 60 * 1000,
            reward = {
                cash = function()
                    return math.random(1900000, 2500000)
                end,
                chance = function()
                    return 100
                end,
                items = function()
                    return {
                        {
                            chance = 99,
                            item = 'p_specialcarbine_parts',
                            name = 'Części karabinu specialnego',
                            count = function()
                                return math.random(8, 10)
                            end,
                            type = 'item'
                        },
                    }
                end
            },
            requiredItems = {
                {
                    item = 'p_militarycard',
                    label = 'Wojskowa karta dostepu',
                    count = function()
                        return 2
                    end
                },
            },
            blip = {
                id = 500,
                scale = 0.6,
                color = 49,
                label = 'Napad na Magazyn'
            },
            delay = {
                success = 1000,
                failure = 60
            },
            hack = {
                type = 'otherhack',
                mult = 8
            }
        },

    }
}

SharedShopConfig = {
    coords = {
        unmarked = vector3(1275.4235839844, -1710.4445800781, 53.771450042725), -- lester
        marked = vector3(707.40069580078, -965.00994873047, 29.412822723389) -- free
    },
    blip = {
        id = 77,
        scale = 0.6,
        color = 7,
        label = 'Lester' 
    },
    exchange = {
        { item = 'p_specialcarbine_parts', weapon = 'weapon_specialcarbine' },
        { item = 'p_carbinerifle_parts', weapon = 'weapon_carbinerifle' },
        { item = 'p_assaultrifle_parts', weapon = 'weapon_assaultrifle' },
        { item = 'p_minismg_parts', weapon = 'weapon_minismg' },
        { item = 'p_machinepistol_parts', weapon = 'weapon_machinepistol' },
    },
    items = {
        { item = 'p_hack_test_tool' }
    }
}

AdditionalResources = {
    taskbar = 'ney_taskbar'
}
