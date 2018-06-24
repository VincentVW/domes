Led[] leds = new Led[]{
  new Led(0, 0, 42.6, 384, 3, 26, 1, 118),
  new Led(1, 1, 50, 325.4, 3, 22, 1, 118),
  new Led(2, 24, 50, 442.6, 3, 30, 1, 118),
  new Led(3, 2, 71.8, 270.5, 4, 19, 1, 118),
  new Led(4, 23, 71.8, 497.5, 4, 34, 1, 118),
  new Led(5, 25, 73.7, 358, 4, 24, 1, 103),
  new Led(6, 49, 73.7, 409.7, 4, 28, 1, 104),
  new Led(7, 26, 86.6, 308, 5, 21, 1, 103),
  new Led(8, 48, 86.6, 459.8, 5, 31, 1, 104),
  new Led(9, 50, 101.5, 383.1, 6, 26, 1, 89),
  new Led(10, 3, 106.5, 222.7, 6, 15, 1, 118),
  new Led(11, 22, 106.5, 545.3, 6, 37, 1, 119),
  new Led(12, 51, 107, 339.2, 6, 23, 1, 89),
  new Led(13, 74, 107, 427.1, 6, 29, 1, 89),
  new Led(14, 27, 111.4, 262.7, 6, 18, 1, 103),
  new Led(15, 47, 111.4, 505.1, 6, 34, 1, 104),
  new Led(16, 52, 123.3, 298, 7, 20, 1, 89),
  new Led(17, 73, 123.3, 468.2, 7, 32, 1, 89),
  new Led(18, 76, 132.1, 365.4, 7, 25, 1, 74),
  new Led(19, 75, 132.1, 402.3, 7, 27, 1, 74),
  new Led(20, 77, 141.3, 329.7, 8, 22, 1, 74),
  new Led(21, 99, 141.3, 438.1, 8, 30, 1, 74),
  new Led(22, 28, 146.8, 225, 8, 15, 1, 103),
  new Led(23, 46, 146.8, 542.7, 8, 37, 1, 104),
  new Led(24, 53, 149.4, 262.2, 8, 18, 1, 89),
  new Led(25, 72, 149.4, 504.1, 8, 34, 1, 89),
  new Led(26, 4, 152, 185.1, 8, 13, 1, 118),
  new Led(27, 21, 152, 582.9, 8, 39, 1, 119),
  new Led(28, 78, 159.1, 297.3, 8, 20, 1, 74),
  new Led(29, 98, 159.1, 470.4, 8, 32, 1, 74),
  new Led(30, 100, 160.4, 383.9, 9, 26, 1, 59),
  new Led(31, 101, 166.2, 347.5, 9, 24, 1, 59),
  new Led(32, 119, 166.2, 420.3, 9, 29, 1, 59),
  new Led(33, 102, 182.9, 314.6, 10, 21, 1, 59),
  new Led(34, 118, 182.9, 453.1, 10, 31, 1, 60),
  new Led(35, 54, 183.5, 233.9, 10, 16, 1, 89),
  new Led(36, 71, 183.5, 532.3, 10, 36, 1, 89),
  new Led(37, 79, 184.4, 270.4, 10, 19, 1, 74),
  new Led(38, 97, 184.4, 497.3, 10, 34, 1, 74),
  new Led(39, 29, 190.5, 197.3, 10, 14, 1, 103),
  new Led(40, 45, 190.5, 570.4, 10, 39, 1, 104),
  new Led(41, 120, 191.8, 365.5, 10, 25, 1, 44),
  new Led(42, 134, 191.8, 402.3, 10, 27, 1, 45),
  new Led(43, 5, 205.4, 159.9, 11, 11, 1, 118),
  new Led(44, 20, 205.4, 608.1, 11, 41, 1, 119),
  new Led(45, 121, 206.8, 331.9, 11, 23, 1, 44),
  new Led(46, 133, 206.8, 435.8, 11, 30, 1, 45),
  new Led(47, 103, 209, 288.6, 11, 20, 1, 59),
  new Led(48, 117, 209, 479.2, 11, 32, 1, 60),
  new Led(49, 80, 215.5, 250.6, 11, 17, 1, 74),
  new Led(50, 96, 215.5, 517.1, 11, 35, 1, 74),
  new Led(51, 144, 219.3, 383.9, 11, 26, 1, 30),
  new Led(52, 55, 223.6, 215.1, 12, 15, 1, 89),
  new Led(53, 70, 223.6, 551.2, 12, 37, 1, 89),
  new Led(54, 135, 230.6, 349.3, 12, 24, 1, 30),
  new Led(55, 143, 230.6, 418.5, 12, 28, 1, 30),
  new Led(56, 122, 234.1, 307.4, 12, 21, 1, 44),
  new Led(57, 132, 234.1, 460.4, 12, 31, 1, 45),
  new Led(58, 30, 239.6, 181.4, 12, 13, 1, 103),
  new Led(59, 44, 239.6, 586.4, 12, 40, 1, 104),
  new Led(60, 104, 241.8, 271.8, 13, 19, 1, 59),
  new Led(61, 116, 241.8, 495.9, 13, 34, 1, 60),
  new Led(62, 81, 250.6, 239.2, 13, 16, 1, 74),
  new Led(63, 95, 250.6, 528.5, 13, 36, 1, 75),
  new Led(64, 145, 254.4, 366.6, 13, 25, 1, 15),
  new Led(65, 149, 254.4, 401.2, 13, 27, 1, 15),
  new Led(66, 136, 260, 327.9, 13, 22, 1, 29),
  new Led(67, 142, 260, 439.9, 13, 30, 1, 30),
  new Led(68, 6, 263.5, 148.9, 14, 10, 1, 118),
  new Led(69, 19, 263.5, 619.1, 14, 42, 1, 119),
  new Led(70, 56, 267.1, 206.8, 14, 14, 1, 89),
  new Led(71, 69, 267.1, 559.5, 14, 38, 1, 89),
  new Led(72, 123, 269, 296, 14, 20, 1, 44),
  new Led(73, 131, 269, 471.8, 14, 32, 1, 45),
  new Led(74, 150, 278, 383, 14, 26, 1, 0),
  new Led(75, 105, 278.2, 266.1, 14, 18, 1, 59),
  new Led(76, 115, 278.2, 501.7, 14, 34, 1, 60),
  new Led(77, 146, 287.3, 355.9, 15, 24, 1, 15),
  new Led(78, 148, 287.3, 411.9, 15, 28, 1, 16),
  new Led(79, 82, 287.5, 236.9, 15, 16, 1, 74),
  new Led(80, 94, 287.5, 530.9, 15, 36, 1, 75),
  new Led(81, 31, 291.2, 178.1, 15, 12, 1, 103),
  new Led(82, 43, 291.2, 589.6, 15, 40, 1, 104),
  new Led(83, 137, 296.4, 327.9, 15, 22, 1, 30),
  new Led(84, 141, 296.4, 439.9, 15, 30, 1, 30),
  new Led(85, 124, 305.5, 299.9, 16, 20, 1, 44),
  new Led(86, 130, 305.5, 467.9, 16, 32, 1, 45),
  new Led(87, 147, 307.7, 383.9, 16, 26, 1, 15),
  new Led(88, 57, 311.3, 209.5, 16, 14, 1, 89),
  new Led(89, 68, 311.3, 556.7, 16, 38, 1, 89),
  new Led(90, 106, 314.6, 271.8, 16, 19, 1, 59),
  new Led(91, 114, 314.6, 495.9, 16, 34, 1, 60),
  new Led(92, 7, 322.4, 152.6, 17, 11, 1, 118),
  new Led(93, 18, 322.4, 615.4, 17, 42, 1, 119),
  new Led(94, 83, 323.7, 243.8, 17, 17, 1, 74),
  new Led(95, 93, 323.7, 523.9, 17, 35, 1, 75),
  new Led(96, 138, 325.9, 349.3, 17, 24, 1, 30),
  new Led(97, 140, 325.9, 418.5, 17, 28, 1, 30),
  new Led(98, 139, 337.1, 383.9, 17, 26, 1, 30),
  new Led(99, 125, 337.4, 318.2, 17, 22, 1, 44),
  new Led(100, 129, 337.4, 449.5, 17, 30, 1, 45),
  new Led(101, 32, 341.9, 187.8, 18, 13, 1, 103),
  new Led(102, 42, 341.9, 580, 18, 39, 1, 104),
  new Led(103, 107, 347.5, 288.6, 18, 20, 1, 59),
  new Led(104, 113, 347.5, 479.2, 18, 32, 1, 60),
  new Led(105, 58, 353.4, 223.2, 18, 15, 1, 89),
  new Led(106, 67, 353.4, 543, 18, 37, 1, 89),
  new Led(107, 84, 357.1, 259.5, 18, 18, 1, 74),
  new Led(108, 92, 357.1, 508.2, 18, 34, 1, 75),
  new Led(109, 126, 359, 347.9, 18, 24, 1, 45),
  new Led(110, 128, 359, 419.8, 18, 28, 1, 45),
  new Led(111, 127, 366.6, 383.9, 19, 26, 1, 45),
  new Led(112, 108, 373.5, 314.6, 19, 21, 1, 59),
  new Led(113, 112, 373.5, 453.1, 19, 31, 1, 60),
  new Led(114, 8, 378.6, 170.8, 19, 12, 1, 118),
  new Led(115, 17, 378.6, 597.2, 19, 40, 1, 119),
  new Led(116, 85, 385.6, 283.1, 20, 19, 1, 74),
  new Led(117, 91, 385.6, 484.7, 20, 33, 1, 75),
  new Led(118, 33, 388.7, 209.8, 20, 14, 1, 103),
  new Led(119, 41, 388.7, 558, 20, 38, 1, 104),
  new Led(120, 109, 390.3, 347.5, 20, 24, 1, 59),
  new Led(121, 111, 390.3, 420.3, 20, 29, 1, 60),
  new Led(122, 59, 390.8, 247, 20, 17, 1, 89),
  new Led(123, 66, 390.8, 519.3, 20, 35, 1, 89),
  new Led(124, 110, 396, 383.9, 20, 26, 1, 60),
  new Led(125, 86, 407.3, 312.9, 21, 21, 1, 74),
  new Led(126, 90, 407.3, 454.8, 21, 31, 1, 74),
  new Led(127, 87, 420.9, 347.3, 22, 24, 1, 74),
  new Led(128, 89, 420.9, 420.5, 22, 29, 1, 74),
  new Led(129, 60, 421.2, 279.3, 22, 19, 1, 89),
  new Led(130, 65, 421.2, 487, 22, 33, 1, 89),
  new Led(131, 88, 425.5, 383.9, 22, 26, 1, 74),
  new Led(132, 9, 428.4, 202.5, 22, 14, 1, 118),
  new Led(133, 16, 428.4, 565.5, 22, 38, 1, 119),
  new Led(134, 34, 428.5, 242.8, 22, 17, 1, 103),
  new Led(135, 40, 428.5, 525, 22, 35, 1, 104),
  new Led(136, 61, 442.5, 318.1, 23, 22, 1, 89),
  new Led(137, 64, 442.5, 448.2, 23, 30, 1, 89),
  new Led(138, 62, 453.5, 361, 23, 25, 1, 89),
  new Led(139, 63, 453.5, 405.3, 23, 28, 1, 89),
  new Led(140, 35, 458.9, 284.6, 23, 19, 1, 103),
  new Led(141, 39, 458.9, 483.2, 23, 33, 1, 104),
  new Led(142, 10, 468.9, 245.5, 24, 17, 1, 118),
  new Led(143, 15, 468.9, 522.5, 24, 35, 1, 119),
  new Led(144, 36, 477.9, 332.6, 24, 23, 1, 104),
  new Led(145, 38, 477.9, 435.2, 24, 30, 1, 104),
  new Led(146, 37, 484.4, 383.9, 25, 26, 1, 104),
  new Led(147, 11, 497.3, 297.3, 25, 20, 1, 118),
  new Led(148, 14, 497.3, 470.7, 25, 32, 1, 119),
  new Led(149, 12, 512, 354.5, 26, 24, 2, 118),
  new Led(150, 13, 512, 413.5, 26, 28, 2, 118),
  new Led(151, 0, 526.7, 297.3, 27, 20, 2, 118),
  new Led(152, 0, 526.7, 470.7, 27, 32, 2, 119),
  new Led(153, 0, 539.6, 384.1, 27, 26, 2, 104),
  new Led(154, 0, 546.1, 332.8, 28, 23, 2, 104),
  new Led(155, 0, 546.1, 435.4, 28, 30, 2, 104),
  new Led(156, 0, 555.1, 245.5, 28, 17, 2, 118),
  new Led(157, 0, 555.1, 522.5, 28, 35, 2, 119),
  new Led(158, 0, 565.1, 284.8, 29, 19, 2, 103),
  new Led(159, 0, 565.1, 483.4, 29, 33, 2, 104),
  new Led(160, 0, 570.5, 362.7, 29, 25, 2, 89),
  new Led(161, 0, 570.5, 407, 29, 28, 2, 89),
  new Led(162, 0, 581.5, 319.8, 30, 22, 2, 89),
  new Led(163, 0, 581.5, 449.9, 30, 30, 2, 89),
  new Led(164, 0, 595.5, 243, 30, 17, 2, 103),
  new Led(165, 0, 595.5, 525.2, 30, 36, 2, 104),
  new Led(166, 0, 595.6, 202.5, 30, 14, 2, 118),
  new Led(167, 0, 595.6, 565.5, 30, 38, 2, 119),
  new Led(168, 0, 598.5, 384.1, 30, 26, 2, 74),
  new Led(169, 0, 602.8, 281, 31, 19, 2, 88),
  new Led(170, 0, 602.8, 488.7, 31, 33, 2, 89),
  new Led(171, 0, 603.1, 347.5, 31, 24, 2, 74),
  new Led(172, 0, 603.1, 420.7, 31, 29, 2, 74),
  new Led(173, 0, 616.7, 313.2, 31, 21, 2, 74),
  new Led(174, 0, 616.7, 455.1, 31, 31, 2, 75),
  new Led(175, 0, 628, 384.1, 32, 26, 2, 60),
  new Led(176, 0, 633.2, 248.7, 32, 17, 2, 88),
  new Led(177, 0, 633.2, 521, 32, 35, 2, 90),
  new Led(178, 0, 633.7, 347.7, 32, 24, 2, 59),
  new Led(179, 0, 633.7, 420.5, 32, 29, 2, 60),
  new Led(180, 0, 635.3, 210, 32, 14, 2, 103),
  new Led(181, 0, 635.3, 558.2, 32, 38, 2, 104),
  new Led(182, 0, 638.4, 283.3, 32, 19, 2, 74),
  new Led(183, 0, 638.4, 484.9, 32, 33, 2, 75),
  new Led(184, 0, 645.4, 170.8, 33, 12, 2, 118),
  new Led(185, 0, 645.4, 597.2, 33, 40, 2, 119),
  new Led(186, 0, 650.5, 314.9, 33, 21, 2, 59),
  new Led(187, 0, 650.5, 453.4, 33, 31, 2, 60),
  new Led(188, 0, 657.4, 384.1, 33, 26, 2, 45),
  new Led(189, 0, 665, 348.2, 34, 24, 2, 45),
  new Led(190, 0, 665, 420.1, 34, 29, 2, 45),
  new Led(191, 0, 666.9, 259.8, 34, 18, 2, 74),
  new Led(192, 0, 666.9, 508.5, 34, 34, 2, 75),
  new Led(193, 0, 670.6, 225, 34, 15, 2, 88),
  new Led(194, 0, 670.6, 544.8, 34, 37, 2, 90),
  new Led(195, 0, 676.5, 288.8, 34, 20, 2, 59),
  new Led(196, 0, 676.5, 479.4, 34, 32, 2, 60),
  new Led(197, 0, 682.1, 188, 35, 13, 2, 103),
  new Led(198, 0, 682.1, 580.2, 35, 39, 2, 104),
  new Led(199, 0, 686.6, 318.5, 35, 22, 2, 44),
  new Led(200, 0, 686.6, 449.8, 35, 30, 2, 45),
  new Led(201, 0, 686.9, 384.1, 35, 26, 2, 30),
  new Led(202, 0, 698.1, 349.5, 35, 24, 2, 30),
  new Led(203, 0, 698.1, 418.7, 35, 28, 2, 30),
  new Led(204, 0, 700.3, 244.1, 36, 17, 2, 74),
  new Led(205, 0, 700.3, 524.2, 36, 35, 2, 75),
  new Led(206, 0, 701.6, 152.6, 36, 11, 2, 118),
  new Led(207, 0, 701.6, 615.4, 36, 42, 2, 119),
  new Led(208, 0, 709.4, 272.1, 36, 19, 2, 59),
  new Led(209, 0, 709.4, 496.2, 36, 34, 2, 60),
  new Led(210, 0, 712.7, 211.3, 36, 15, 2, 88),
  new Led(211, 0, 712.7, 558.5, 36, 38, 2, 90),
  new Led(212, 0, 716.3, 384.1, 36, 26, 2, 15),
  new Led(213, 0, 718.5, 300.1, 36, 21, 2, 44),
  new Led(214, 0, 718.5, 468.1, 36, 32, 2, 45),
  new Led(215, 0, 727.6, 328.1, 37, 22, 2, 29),
  new Led(216, 0, 727.6, 440.1, 37, 30, 2, 30),
  new Led(217, 0, 732.8, 178.4, 37, 12, 2, 103),
  new Led(218, 0, 732.8, 589.9, 37, 40, 2, 104),
  new Led(219, 0, 736.5, 237.1, 37, 16, 2, 74),
  new Led(220, 0, 736.5, 531.1, 37, 36, 2, 75),
  new Led(221, 0, 736.7, 356.1, 37, 24, 2, 15),
  new Led(222, 0, 736.7, 412.1, 37, 28, 2, 16),
  new Led(223, 0, 745.8, 266.3, 38, 18, 2, 59),
  new Led(224, 0, 745.8, 501.9, 38, 34, 2, 60),
  new Led(225, 0, 746, 383, 38, 26, 2, 0),
  new Led(226, 0, 755, 296.2, 38, 20, 2, 44),
  new Led(227, 0, 755, 472, 38, 32, 2, 45),
  new Led(228, 0, 756.9, 208.5, 38, 14, 2, 88),
  new Led(229, 0, 756.9, 561.2, 38, 38, 2, 90),
  new Led(230, 0, 760.5, 148.9, 39, 10, 2, 118),
  new Led(231, 0, 760.5, 619.1, 39, 42, 2, 119),
  new Led(232, 0, 764, 328.1, 39, 22, 2, 29),
  new Led(233, 0, 764, 440.1, 39, 30, 2, 30),
  new Led(234, 0, 769.6, 366.8, 39, 25, 2, 15),
  new Led(235, 0, 769.6, 401.4, 39, 27, 2, 15),
  new Led(236, 0, 773.4, 239.5, 39, 16, 2, 74),
  new Led(237, 0, 773.4, 528.8, 39, 36, 2, 75),
  new Led(238, 0, 782.2, 272.1, 40, 19, 2, 59),
  new Led(239, 0, 782.2, 496.2, 40, 34, 2, 60),
  new Led(240, 0, 784.4, 181.6, 40, 13, 2, 103),
  new Led(241, 0, 784.4, 586.6, 40, 40, 2, 104),
  new Led(242, 0, 789.9, 307.6, 40, 21, 2, 44),
  new Led(243, 0, 789.9, 460.6, 40, 31, 2, 45),
  new Led(244, 0, 793.4, 349.5, 40, 24, 2, 30),
  new Led(245, 0, 793.4, 418.7, 40, 28, 2, 30),
  new Led(246, 0, 800.4, 216.8, 41, 15, 2, 88),
  new Led(247, 0, 800.4, 552.9, 41, 37, 2, 90),
  new Led(248, 0, 804.7, 384.1, 41, 26, 2, 30),
  new Led(249, 0, 808.5, 250.9, 41, 17, 2, 74),
  new Led(250, 0, 808.5, 517.4, 41, 35, 2, 75),
  new Led(251, 0, 815, 288.8, 41, 20, 2, 59),
  new Led(252, 0, 815, 479.4, 41, 32, 2, 60),
  new Led(253, 0, 817.2, 332.2, 41, 23, 2, 44),
  new Led(254, 0, 817.2, 436.1, 41, 30, 2, 45),
  new Led(255, 0, 818.6, 159.9, 41, 11, 2, 118),
  new Led(256, 0, 818.6, 608.1, 41, 41, 2, 119),
  new Led(257, 0, 832.2, 365.7, 42, 25, 2, 44),
  new Led(258, 0, 832.2, 402.5, 42, 27, 2, 45),
  new Led(259, 0, 833.5, 197.6, 42, 14, 2, 103),
  new Led(260, 0, 833.5, 570.7, 42, 39, 2, 104),
  new Led(261, 0, 839.6, 270.7, 42, 19, 2, 74),
  new Led(262, 0, 839.6, 497.6, 42, 34, 2, 74),
  new Led(263, 0, 840.5, 235.7, 43, 16, 2, 88),
  new Led(264, 0, 840.5, 534.1, 43, 36, 2, 90),
  new Led(265, 0, 841.1, 314.9, 43, 21, 2, 59),
  new Led(266, 0, 841.1, 453.4, 43, 31, 2, 60),
  new Led(267, 0, 857.8, 347.7, 43, 24, 2, 59),
  new Led(268, 0, 857.8, 420.5, 43, 29, 2, 59),
  new Led(269, 0, 863.6, 384.1, 44, 26, 2, 59),
  new Led(270, 0, 864.9, 297.6, 44, 20, 2, 74),
  new Led(271, 0, 864.9, 470.7, 44, 32, 2, 74),
  new Led(272, 0, 872, 185.1, 44, 13, 2, 118),
  new Led(273, 0, 872, 582.9, 44, 39, 2, 119),
  new Led(274, 0, 874.6, 263.9, 44, 18, 2, 88),
  new Led(275, 0, 874.6, 505.8, 44, 34, 2, 89),
  new Led(276, 0, 877.2, 225.3, 44, 16, 2, 103),
  new Led(277, 0, 877.2, 543, 44, 37, 2, 104),
  new Led(278, 0, 882.7, 329.9, 45, 22, 2, 74),
  new Led(279, 0, 882.7, 438.3, 45, 30, 2, 74),
  new Led(280, 0, 891.9, 365.7, 45, 25, 2, 74),
  new Led(281, 0, 891.9, 402.6, 45, 27, 2, 74),
  new Led(282, 0, 900.7, 299.8, 46, 20, 2, 88),
  new Led(283, 0, 900.7, 470, 46, 32, 2, 89),
  new Led(284, 0, 912.6, 262.9, 46, 18, 2, 103),
  new Led(285, 0, 912.6, 505.3, 46, 34, 2, 104),
  new Led(286, 0, 917, 340.9, 46, 23, 2, 89),
  new Led(287, 0, 917, 428.8, 46, 29, 2, 89),
  new Led(288, 0, 917.5, 222.7, 46, 15, 2, 118),
  new Led(289, 0, 917.5, 545.3, 46, 37, 2, 119),
  new Led(290, 0, 922.5, 384.9, 47, 26, 2, 89),
  new Led(291, 0, 937.4, 308.2, 47, 21, 2, 103),
  new Led(292, 0, 937.4, 460, 47, 31, 2, 104),
  new Led(293, 0, 950.3, 358.3, 48, 24, 2, 103),
  new Led(294, 0, 950.3, 410, 48, 28, 2, 104),
  new Led(295, 0, 952.2, 270.5, 48, 19, 2, 118),
  new Led(296, 0, 952.2, 497.5, 48, 34, 2, 118),
  new Led(297, 0, 974, 325.4, 49, 22, 2, 118),
  new Led(298, 0, 974, 442.6, 49, 30, 2, 118),
  new Led(299, 0, 981.4, 384, 50, 26, 2, 118)
};
