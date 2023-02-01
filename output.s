	.section	.text
	.globl	f_getcount_1
	.p2align	2
	.type	f_getcount_1,@function
f_getcount_1:
.func_begin_block_1:
	addi	sp,	sp,	-96
	sw		s0,	0(sp)
	addi	s0,	sp,	96
	sw		ra,	4(sp)
	mv		t0,	a0
	sw		t0,	16(sp)
	mv		t0,	s1
	sw		t0,	20(sp)
	mv		t0,	s2
	sw		t0,	24(sp)
	mv		t0,	s3
	sw		t0,	28(sp)
	mv		t0,	s4
	sw		t0,	32(sp)
	mv		t0,	s5
	sw		t0,	36(sp)
	mv		t0,	s6
	sw		t0,	40(sp)
	mv		t0,	s7
	sw		t0,	44(sp)
	mv		t0,	s8
	sw		t0,	48(sp)
	mv		t0,	s9
	sw		t0,	52(sp)
	mv		t0,	s10
	sw		t0,	56(sp)
	mv		t0,	s11
	sw		t0,	60(sp)
	addi	t0,	sp,	8
	sw		t0,	64(sp)
	addi	t0,	sp,	12
	sw		t0,	68(sp)
	j		.normal_block_1
.func_end_block_1:
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	mv		a0,	t1
	lw		t1,	20(sp)
	mv		s1,	t1
	lw		t1,	24(sp)
	mv		s2,	t1
	lw		t1,	28(sp)
	mv		s3,	t1
	lw		t1,	32(sp)
	mv		s4,	t1
	lw		t1,	36(sp)
	mv		s5,	t1
	lw		t1,	40(sp)
	mv		s6,	t1
	lw		t1,	44(sp)
	mv		s7,	t1
	lw		t1,	48(sp)
	mv		s8,	t1
	lw		t1,	52(sp)
	mv		s9,	t1
	lw		t1,	56(sp)
	mv		s10,	t1
	lw		t1,	60(sp)
	mv		s11,	t1
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	96
	ret
.normal_block_1:
	lw		t1,	16(sp)
	lw		t2,	68(sp)
	sw		t1,	0(t2)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	addi	t0,	t1,	0
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	84(sp)
	li		t0,	1
	sw		t0,	88(sp)
	lw		t1,	84(sp)
	lw		t2,	88(sp)
	add		t0,	t1,	t2
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	lw		t1,	92(sp)
	lw		t2,	64(sp)
	sw		t1,	0(t2)
	j		.func_end_block_1
.normal_block_2:
	j		.func_end_block_1
	.size	f_getcount_1,	.-f_getcount_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_2:
	li		t0,	-15488
	add		sp,	sp,	t0
	sw		s0,	0(sp)
	li		t0,	15488
	add		s0,	sp,	t0
	sw		ra,	4(sp)
	mv		t0,	s1
	sw		t0,	1036(sp)
	mv		t0,	s2
	sw		t0,	1040(sp)
	mv		t0,	s3
	sw		t0,	1044(sp)
	mv		t0,	s4
	sw		t0,	1048(sp)
	mv		t0,	s5
	sw		t0,	1052(sp)
	mv		t0,	s6
	sw		t0,	1056(sp)
	mv		t0,	s7
	sw		t0,	1060(sp)
	mv		t0,	s8
	sw		t0,	1064(sp)
	mv		t0,	s9
	sw		t0,	1068(sp)
	mv		t0,	s10
	sw		t0,	1072(sp)
	mv		t0,	s11
	sw		t0,	1076(sp)
	addi	t0,	sp,	8
	sw		t0,	1080(sp)
	addi	t0,	sp,	12
	sw		t0,	1084(sp)
	addi	t0,	sp,	16
	sw		t0,	1088(sp)
	addi	t0,	sp,	20
	sw		t0,	1092(sp)
	addi	t0,	sp,	24
	sw		t0,	1096(sp)
	addi	t0,	sp,	28
	sw		t0,	1100(sp)
	addi	t0,	sp,	32
	sw		t0,	1104(sp)
	addi	t0,	sp,	36
	sw		t0,	1108(sp)
	addi	t0,	sp,	40
	sw		t0,	1112(sp)
	addi	t0,	sp,	44
	sw		t0,	1116(sp)
	addi	t0,	sp,	48
	sw		t0,	1120(sp)
	addi	t0,	sp,	52
	sw		t0,	1124(sp)
	addi	t0,	sp,	56
	sw		t0,	1128(sp)
	addi	t0,	sp,	60
	sw		t0,	1132(sp)
	addi	t0,	sp,	64
	sw		t0,	1136(sp)
	addi	t0,	sp,	68
	sw		t0,	1140(sp)
	addi	t0,	sp,	72
	sw		t0,	1144(sp)
	addi	t0,	sp,	76
	sw		t0,	1148(sp)
	addi	t0,	sp,	80
	sw		t0,	1152(sp)
	addi	t0,	sp,	84
	sw		t0,	1156(sp)
	addi	t0,	sp,	88
	sw		t0,	1160(sp)
	addi	t0,	sp,	92
	sw		t0,	1164(sp)
	addi	t0,	sp,	96
	sw		t0,	1168(sp)
	addi	t0,	sp,	100
	sw		t0,	1172(sp)
	addi	t0,	sp,	104
	sw		t0,	1176(sp)
	addi	t0,	sp,	108
	sw		t0,	1180(sp)
	addi	t0,	sp,	112
	sw		t0,	1184(sp)
	addi	t0,	sp,	116
	sw		t0,	1188(sp)
	addi	t0,	sp,	120
	sw		t0,	1192(sp)
	addi	t0,	sp,	124
	sw		t0,	1196(sp)
	addi	t0,	sp,	128
	sw		t0,	1200(sp)
	addi	t0,	sp,	132
	sw		t0,	1204(sp)
	addi	t0,	sp,	136
	sw		t0,	1208(sp)
	addi	t0,	sp,	140
	sw		t0,	1212(sp)
	addi	t0,	sp,	144
	sw		t0,	1216(sp)
	addi	t0,	sp,	148
	sw		t0,	1220(sp)
	addi	t0,	sp,	152
	sw		t0,	1224(sp)
	addi	t0,	sp,	156
	sw		t0,	1228(sp)
	addi	t0,	sp,	160
	sw		t0,	1232(sp)
	addi	t0,	sp,	164
	sw		t0,	1236(sp)
	addi	t0,	sp,	168
	sw		t0,	1240(sp)
	addi	t0,	sp,	172
	sw		t0,	1244(sp)
	addi	t0,	sp,	176
	sw		t0,	1248(sp)
	addi	t0,	sp,	180
	sw		t0,	1252(sp)
	addi	t0,	sp,	184
	sw		t0,	1256(sp)
	addi	t0,	sp,	188
	sw		t0,	1260(sp)
	addi	t0,	sp,	192
	sw		t0,	1264(sp)
	addi	t0,	sp,	196
	sw		t0,	1268(sp)
	addi	t0,	sp,	200
	sw		t0,	1272(sp)
	addi	t0,	sp,	204
	sw		t0,	1276(sp)
	addi	t0,	sp,	208
	sw		t0,	1280(sp)
	addi	t0,	sp,	212
	sw		t0,	1284(sp)
	addi	t0,	sp,	216
	sw		t0,	1288(sp)
	addi	t0,	sp,	220
	sw		t0,	1292(sp)
	addi	t0,	sp,	224
	sw		t0,	1296(sp)
	addi	t0,	sp,	228
	sw		t0,	1300(sp)
	addi	t0,	sp,	232
	sw		t0,	1304(sp)
	addi	t0,	sp,	236
	sw		t0,	1308(sp)
	addi	t0,	sp,	240
	sw		t0,	1312(sp)
	addi	t0,	sp,	244
	sw		t0,	1316(sp)
	addi	t0,	sp,	248
	sw		t0,	1320(sp)
	addi	t0,	sp,	252
	sw		t0,	1324(sp)
	addi	t0,	sp,	256
	sw		t0,	1328(sp)
	addi	t0,	sp,	260
	sw		t0,	1332(sp)
	addi	t0,	sp,	264
	sw		t0,	1336(sp)
	addi	t0,	sp,	268
	sw		t0,	1340(sp)
	addi	t0,	sp,	272
	sw		t0,	1344(sp)
	addi	t0,	sp,	276
	sw		t0,	1348(sp)
	addi	t0,	sp,	280
	sw		t0,	1352(sp)
	addi	t0,	sp,	284
	sw		t0,	1356(sp)
	addi	t0,	sp,	288
	sw		t0,	1360(sp)
	addi	t0,	sp,	292
	sw		t0,	1364(sp)
	addi	t0,	sp,	296
	sw		t0,	1368(sp)
	addi	t0,	sp,	300
	sw		t0,	1372(sp)
	addi	t0,	sp,	304
	sw		t0,	1376(sp)
	addi	t0,	sp,	308
	sw		t0,	1380(sp)
	addi	t0,	sp,	312
	sw		t0,	1384(sp)
	addi	t0,	sp,	316
	sw		t0,	1388(sp)
	addi	t0,	sp,	320
	sw		t0,	1392(sp)
	addi	t0,	sp,	324
	sw		t0,	1396(sp)
	addi	t0,	sp,	328
	sw		t0,	1400(sp)
	addi	t0,	sp,	332
	sw		t0,	1404(sp)
	addi	t0,	sp,	336
	sw		t0,	1408(sp)
	addi	t0,	sp,	340
	sw		t0,	1412(sp)
	addi	t0,	sp,	344
	sw		t0,	1416(sp)
	addi	t0,	sp,	348
	sw		t0,	1420(sp)
	addi	t0,	sp,	352
	sw		t0,	1424(sp)
	addi	t0,	sp,	356
	sw		t0,	1428(sp)
	addi	t0,	sp,	360
	sw		t0,	1432(sp)
	addi	t0,	sp,	364
	sw		t0,	1436(sp)
	addi	t0,	sp,	368
	sw		t0,	1440(sp)
	addi	t0,	sp,	372
	sw		t0,	1444(sp)
	addi	t0,	sp,	376
	sw		t0,	1448(sp)
	addi	t0,	sp,	380
	sw		t0,	1452(sp)
	addi	t0,	sp,	384
	sw		t0,	1456(sp)
	addi	t0,	sp,	388
	sw		t0,	1460(sp)
	addi	t0,	sp,	392
	sw		t0,	1464(sp)
	addi	t0,	sp,	396
	sw		t0,	1468(sp)
	addi	t0,	sp,	400
	sw		t0,	1472(sp)
	addi	t0,	sp,	404
	sw		t0,	1476(sp)
	addi	t0,	sp,	408
	sw		t0,	1480(sp)
	addi	t0,	sp,	412
	sw		t0,	1484(sp)
	addi	t0,	sp,	416
	sw		t0,	1488(sp)
	addi	t0,	sp,	420
	sw		t0,	1492(sp)
	addi	t0,	sp,	424
	sw		t0,	1496(sp)
	addi	t0,	sp,	428
	sw		t0,	1500(sp)
	addi	t0,	sp,	432
	sw		t0,	1504(sp)
	addi	t0,	sp,	436
	sw		t0,	1508(sp)
	addi	t0,	sp,	440
	sw		t0,	1512(sp)
	addi	t0,	sp,	444
	sw		t0,	1516(sp)
	addi	t0,	sp,	448
	sw		t0,	1520(sp)
	addi	t0,	sp,	452
	sw		t0,	1524(sp)
	addi	t0,	sp,	456
	sw		t0,	1528(sp)
	addi	t0,	sp,	460
	sw		t0,	1532(sp)
	addi	t0,	sp,	464
	sw		t0,	1536(sp)
	addi	t0,	sp,	468
	sw		t0,	1540(sp)
	addi	t0,	sp,	472
	sw		t0,	1544(sp)
	addi	t0,	sp,	476
	sw		t0,	1548(sp)
	addi	t0,	sp,	480
	sw		t0,	1552(sp)
	addi	t0,	sp,	484
	sw		t0,	1556(sp)
	addi	t0,	sp,	488
	sw		t0,	1560(sp)
	addi	t0,	sp,	492
	sw		t0,	1564(sp)
	addi	t0,	sp,	496
	sw		t0,	1568(sp)
	addi	t0,	sp,	500
	sw		t0,	1572(sp)
	addi	t0,	sp,	504
	sw		t0,	1576(sp)
	addi	t0,	sp,	508
	sw		t0,	1580(sp)
	addi	t0,	sp,	512
	sw		t0,	1584(sp)
	addi	t0,	sp,	516
	sw		t0,	1588(sp)
	addi	t0,	sp,	520
	sw		t0,	1592(sp)
	addi	t0,	sp,	524
	sw		t0,	1596(sp)
	addi	t0,	sp,	528
	sw		t0,	1600(sp)
	addi	t0,	sp,	532
	sw		t0,	1604(sp)
	addi	t0,	sp,	536
	sw		t0,	1608(sp)
	addi	t0,	sp,	540
	sw		t0,	1612(sp)
	addi	t0,	sp,	544
	sw		t0,	1616(sp)
	addi	t0,	sp,	548
	sw		t0,	1620(sp)
	addi	t0,	sp,	552
	sw		t0,	1624(sp)
	addi	t0,	sp,	556
	sw		t0,	1628(sp)
	addi	t0,	sp,	560
	sw		t0,	1632(sp)
	addi	t0,	sp,	564
	sw		t0,	1636(sp)
	addi	t0,	sp,	568
	sw		t0,	1640(sp)
	addi	t0,	sp,	572
	sw		t0,	1644(sp)
	addi	t0,	sp,	576
	sw		t0,	1648(sp)
	addi	t0,	sp,	580
	sw		t0,	1652(sp)
	addi	t0,	sp,	584
	sw		t0,	1656(sp)
	addi	t0,	sp,	588
	sw		t0,	1660(sp)
	addi	t0,	sp,	592
	sw		t0,	1664(sp)
	addi	t0,	sp,	596
	sw		t0,	1668(sp)
	addi	t0,	sp,	600
	sw		t0,	1672(sp)
	addi	t0,	sp,	604
	sw		t0,	1676(sp)
	addi	t0,	sp,	608
	sw		t0,	1680(sp)
	addi	t0,	sp,	612
	sw		t0,	1684(sp)
	addi	t0,	sp,	616
	sw		t0,	1688(sp)
	addi	t0,	sp,	620
	sw		t0,	1692(sp)
	addi	t0,	sp,	624
	sw		t0,	1696(sp)
	addi	t0,	sp,	628
	sw		t0,	1700(sp)
	addi	t0,	sp,	632
	sw		t0,	1704(sp)
	addi	t0,	sp,	636
	sw		t0,	1708(sp)
	addi	t0,	sp,	640
	sw		t0,	1712(sp)
	addi	t0,	sp,	644
	sw		t0,	1716(sp)
	addi	t0,	sp,	648
	sw		t0,	1720(sp)
	addi	t0,	sp,	652
	sw		t0,	1724(sp)
	addi	t0,	sp,	656
	sw		t0,	1728(sp)
	addi	t0,	sp,	660
	sw		t0,	1732(sp)
	addi	t0,	sp,	664
	sw		t0,	1736(sp)
	addi	t0,	sp,	668
	sw		t0,	1740(sp)
	addi	t0,	sp,	672
	sw		t0,	1744(sp)
	addi	t0,	sp,	676
	sw		t0,	1748(sp)
	addi	t0,	sp,	680
	sw		t0,	1752(sp)
	addi	t0,	sp,	684
	sw		t0,	1756(sp)
	addi	t0,	sp,	688
	sw		t0,	1760(sp)
	addi	t0,	sp,	692
	sw		t0,	1764(sp)
	addi	t0,	sp,	696
	sw		t0,	1768(sp)
	addi	t0,	sp,	700
	sw		t0,	1772(sp)
	addi	t0,	sp,	704
	sw		t0,	1776(sp)
	addi	t0,	sp,	708
	sw		t0,	1780(sp)
	addi	t0,	sp,	712
	sw		t0,	1784(sp)
	addi	t0,	sp,	716
	sw		t0,	1788(sp)
	addi	t0,	sp,	720
	sw		t0,	1792(sp)
	addi	t0,	sp,	724
	sw		t0,	1796(sp)
	addi	t0,	sp,	728
	sw		t0,	1800(sp)
	addi	t0,	sp,	732
	sw		t0,	1804(sp)
	addi	t0,	sp,	736
	sw		t0,	1808(sp)
	addi	t0,	sp,	740
	sw		t0,	1812(sp)
	addi	t0,	sp,	744
	sw		t0,	1816(sp)
	addi	t0,	sp,	748
	sw		t0,	1820(sp)
	addi	t0,	sp,	752
	sw		t0,	1824(sp)
	addi	t0,	sp,	756
	sw		t0,	1828(sp)
	addi	t0,	sp,	760
	sw		t0,	1832(sp)
	addi	t0,	sp,	764
	sw		t0,	1836(sp)
	addi	t0,	sp,	768
	sw		t0,	1840(sp)
	addi	t0,	sp,	772
	sw		t0,	1844(sp)
	addi	t0,	sp,	776
	sw		t0,	1848(sp)
	addi	t0,	sp,	780
	sw		t0,	1852(sp)
	addi	t0,	sp,	784
	sw		t0,	1856(sp)
	addi	t0,	sp,	788
	sw		t0,	1860(sp)
	addi	t0,	sp,	792
	sw		t0,	1864(sp)
	addi	t0,	sp,	796
	sw		t0,	1868(sp)
	addi	t0,	sp,	800
	sw		t0,	1872(sp)
	addi	t0,	sp,	804
	sw		t0,	1876(sp)
	addi	t0,	sp,	808
	sw		t0,	1880(sp)
	addi	t0,	sp,	812
	sw		t0,	1884(sp)
	addi	t0,	sp,	816
	sw		t0,	1888(sp)
	addi	t0,	sp,	820
	sw		t0,	1892(sp)
	addi	t0,	sp,	824
	sw		t0,	1896(sp)
	addi	t0,	sp,	828
	sw		t0,	1900(sp)
	addi	t0,	sp,	832
	sw		t0,	1904(sp)
	addi	t0,	sp,	836
	sw		t0,	1908(sp)
	addi	t0,	sp,	840
	sw		t0,	1912(sp)
	addi	t0,	sp,	844
	sw		t0,	1916(sp)
	addi	t0,	sp,	848
	sw		t0,	1920(sp)
	addi	t0,	sp,	852
	sw		t0,	1924(sp)
	addi	t0,	sp,	856
	sw		t0,	1928(sp)
	addi	t0,	sp,	860
	sw		t0,	1932(sp)
	addi	t0,	sp,	864
	sw		t0,	1936(sp)
	addi	t0,	sp,	868
	sw		t0,	1940(sp)
	addi	t0,	sp,	872
	sw		t0,	1944(sp)
	addi	t0,	sp,	876
	sw		t0,	1948(sp)
	addi	t0,	sp,	880
	sw		t0,	1952(sp)
	addi	t0,	sp,	884
	sw		t0,	1956(sp)
	addi	t0,	sp,	888
	sw		t0,	1960(sp)
	addi	t0,	sp,	892
	sw		t0,	1964(sp)
	addi	t0,	sp,	896
	sw		t0,	1968(sp)
	addi	t0,	sp,	900
	sw		t0,	1972(sp)
	addi	t0,	sp,	904
	sw		t0,	1976(sp)
	addi	t0,	sp,	908
	sw		t0,	1980(sp)
	addi	t0,	sp,	912
	sw		t0,	1984(sp)
	addi	t0,	sp,	916
	sw		t0,	1988(sp)
	addi	t0,	sp,	920
	sw		t0,	1992(sp)
	addi	t0,	sp,	924
	sw		t0,	1996(sp)
	addi	t0,	sp,	928
	sw		t0,	2000(sp)
	addi	t0,	sp,	932
	sw		t0,	2004(sp)
	addi	t0,	sp,	936
	sw		t0,	2008(sp)
	addi	t0,	sp,	940
	sw		t0,	2012(sp)
	addi	t0,	sp,	944
	sw		t0,	2016(sp)
	addi	t0,	sp,	948
	sw		t0,	2020(sp)
	addi	t0,	sp,	952
	sw		t0,	2024(sp)
	addi	t0,	sp,	956
	sw		t0,	2028(sp)
	addi	t0,	sp,	960
	sw		t0,	2032(sp)
	addi	t0,	sp,	964
	sw		t0,	2036(sp)
	addi	t0,	sp,	968
	sw		t0,	2040(sp)
	addi	t0,	sp,	972
	sw		t0,	2044(sp)
	addi	t0,	sp,	976
	li		t3,	2048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	980
	li		t3,	2052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	984
	li		t3,	2056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	988
	li		t3,	2060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	992
	li		t3,	2064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	996
	li		t3,	2068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	1000
	li		t3,	2072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	1004
	li		t3,	2076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	1008
	li		t3,	2080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	1012
	li		t3,	2084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	1016
	li		t3,	2088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	1020
	li		t3,	2092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	1024
	li		t3,	2096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	1028
	li		t3,	2100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	addi	t0,	sp,	1032
	li		t3,	2104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	j		.normal_block_3
.func_end_block_2:
	lw		t1,	1080(sp)
	lw		t0,	0(t1)
	li		t3,	2108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	lw		t1,	1036(sp)
	mv		s1,	t1
	lw		t1,	1040(sp)
	mv		s2,	t1
	lw		t1,	1044(sp)
	mv		s3,	t1
	lw		t1,	1048(sp)
	mv		s4,	t1
	lw		t1,	1052(sp)
	mv		s5,	t1
	lw		t1,	1056(sp)
	mv		s6,	t1
	lw		t1,	1060(sp)
	mv		s7,	t1
	lw		t1,	1064(sp)
	mv		s8,	t1
	lw		t1,	1068(sp)
	mv		s9,	t1
	lw		t1,	1072(sp)
	mv		s10,	t1
	lw		t1,	1076(sp)
	mv		s11,	t1
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	li		t0,	15488
	add		sp,	sp,	t0
	ret
.normal_block_3:
	call	_main_initial_1
	li		t0,	8
	li		t3,	2112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	_heap_malloc_1
	mv		t0,	a0
	li		t3,	2116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		t0,	t1
	li		t3,	2120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t0,	1
	li		t3,	2124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2120
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	li		t3,	2120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	4
	li		t3,	2128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		t0,	t1
	li		t3,	2132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	count_addr_1
	li		t3,	2136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2136
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	2148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t0,	0
	li		t3,	2152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2148
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1084(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1088(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1092(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1096(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1100(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1104(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1108(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1112(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1116(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1120(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1124(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1128(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1132(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1136(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1140(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1144(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1148(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1152(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1156(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1160(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1164(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1168(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1172(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1176(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1180(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1184(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1188(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1192(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1196(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1200(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1204(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1208(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1212(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1216(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1220(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1224(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1228(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1232(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1236(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1240(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1244(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1248(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1252(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1256(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1260(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1264(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1268(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1272(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1276(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1280(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1284(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1288(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1292(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1296(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1300(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1304(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1308(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1312(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1316(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1320(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1324(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1328(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1332(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1336(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1340(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1344(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1348(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1352(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1356(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	2992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1360(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	2996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	2996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1364(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1368(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1372(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1376(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1380(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1384(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1388(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1392(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1396(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1400(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1404(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1408(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1412(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1416(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1420(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1424(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1428(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1432(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1436(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1440(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1444(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1448(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1452(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1456(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1460(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1464(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1468(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1472(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1476(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1480(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1484(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1488(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1492(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1496(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1500(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1504(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1508(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1512(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1516(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1520(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1524(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1528(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1532(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1536(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1540(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1544(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1548(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1552(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1556(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1560(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1564(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1568(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1572(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1576(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1580(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1584(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1588(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1592(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1596(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1600(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1604(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1608(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1612(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1616(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1620(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1624(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1628(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1632(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1636(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1640(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1644(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1648(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1652(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1656(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1660(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1664(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1668(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1672(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1676(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1680(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1684(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1688(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	3988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1692(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	3992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	3996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	3996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1696(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1700(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1704(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1708(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1712(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1716(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1720(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1724(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1728(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1732(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1736(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1740(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1744(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1748(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1752(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1756(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1760(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1764(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1768(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1772(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1776(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1780(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1784(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1788(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1792(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1796(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1800(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1804(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1808(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1812(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1816(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1820(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1824(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1828(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1832(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1836(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1840(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1844(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1848(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1852(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1856(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1860(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1864(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1868(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1872(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1876(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1880(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1884(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1888(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1892(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1896(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1900(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1904(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1908(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1912(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1916(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1920(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1924(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1928(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1932(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1936(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1940(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1944(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1948(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1952(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1956(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1960(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1964(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1968(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1972(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1976(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1980(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1984(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1988(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1992(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1996(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	2000(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	2004(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	2008(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	2012(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	2016(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	2020(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	2024(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	4988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	4992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	4996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	4996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	2028(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	2032(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	2036(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	2040(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	2044(sp)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2048
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2052
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2056
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2060
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2064
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2068
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2072
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2076
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2080
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2084
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2088
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2092
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2096
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2100
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	la		t0,	count_addr_1
	li		t3,	5216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	5220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_getcount_1
	mv		t0,	a0
	li		t3,	5224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	li		t3,	2104
	add		t3,	sp,	t3
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	lw		t1,	1084(sp)
	lw		t0,	0(t1)
	li		t3,	5228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_1
	li		t3,	5236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1088(sp)
	lw		t0,	0(t1)
	li		t3,	5248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_2
	li		t3,	5256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1092(sp)
	lw		t0,	0(t1)
	li		t3,	5268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_3
	li		t3,	5276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1096(sp)
	lw		t0,	0(t1)
	li		t3,	5288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_4
	li		t3,	5296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1100(sp)
	lw		t0,	0(t1)
	li		t3,	5308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_5
	li		t3,	5316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1104(sp)
	lw		t0,	0(t1)
	li		t3,	5328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_6
	li		t3,	5336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1108(sp)
	lw		t0,	0(t1)
	li		t3,	5348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_7
	li		t3,	5356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1112(sp)
	lw		t0,	0(t1)
	li		t3,	5368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_8
	li		t3,	5376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1116(sp)
	lw		t0,	0(t1)
	li		t3,	5388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_9
	li		t3,	5396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1120(sp)
	lw		t0,	0(t1)
	li		t3,	5408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_10
	li		t3,	5416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1124(sp)
	lw		t0,	0(t1)
	li		t3,	5428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_11
	li		t3,	5436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1128(sp)
	lw		t0,	0(t1)
	li		t3,	5448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_12
	li		t3,	5456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1132(sp)
	lw		t0,	0(t1)
	li		t3,	5468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_13
	li		t3,	5476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1136(sp)
	lw		t0,	0(t1)
	li		t3,	5488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_14
	li		t3,	5496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1140(sp)
	lw		t0,	0(t1)
	li		t3,	5508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_15
	li		t3,	5516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1144(sp)
	lw		t0,	0(t1)
	li		t3,	5528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_16
	li		t3,	5536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1148(sp)
	lw		t0,	0(t1)
	li		t3,	5548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_17
	li		t3,	5556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1152(sp)
	lw		t0,	0(t1)
	li		t3,	5568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_18
	li		t3,	5576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1156(sp)
	lw		t0,	0(t1)
	li		t3,	5588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_19
	li		t3,	5596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1160(sp)
	lw		t0,	0(t1)
	li		t3,	5608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_20
	li		t3,	5616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1164(sp)
	lw		t0,	0(t1)
	li		t3,	5628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_21
	li		t3,	5636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1168(sp)
	lw		t0,	0(t1)
	li		t3,	5648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_22
	li		t3,	5656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1172(sp)
	lw		t0,	0(t1)
	li		t3,	5668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_23
	li		t3,	5676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1176(sp)
	lw		t0,	0(t1)
	li		t3,	5688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_24
	li		t3,	5696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1180(sp)
	lw		t0,	0(t1)
	li		t3,	5708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_25
	li		t3,	5716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1184(sp)
	lw		t0,	0(t1)
	li		t3,	5728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_26
	li		t3,	5736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1188(sp)
	lw		t0,	0(t1)
	li		t3,	5748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_27
	li		t3,	5756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1192(sp)
	lw		t0,	0(t1)
	li		t3,	5768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_28
	li		t3,	5776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1196(sp)
	lw		t0,	0(t1)
	li		t3,	5788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_29
	li		t3,	5796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1200(sp)
	lw		t0,	0(t1)
	li		t3,	5808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_30
	li		t3,	5816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1204(sp)
	lw		t0,	0(t1)
	li		t3,	5828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_31
	li		t3,	5836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1208(sp)
	lw		t0,	0(t1)
	li		t3,	5848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_32
	li		t3,	5856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1212(sp)
	lw		t0,	0(t1)
	li		t3,	5868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_33
	li		t3,	5876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1216(sp)
	lw		t0,	0(t1)
	li		t3,	5888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_34
	li		t3,	5896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1220(sp)
	lw		t0,	0(t1)
	li		t3,	5908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_35
	li		t3,	5916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1224(sp)
	lw		t0,	0(t1)
	li		t3,	5928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_36
	li		t3,	5936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1228(sp)
	lw		t0,	0(t1)
	li		t3,	5948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_37
	li		t3,	5956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1232(sp)
	lw		t0,	0(t1)
	li		t3,	5968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_38
	li		t3,	5976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	5980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	5980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	5984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1236(sp)
	lw		t0,	0(t1)
	li		t3,	5988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	5992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_39
	li		t3,	5996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	5992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1240(sp)
	lw		t0,	0(t1)
	li		t3,	6008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_40
	li		t3,	6016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1244(sp)
	lw		t0,	0(t1)
	li		t3,	6028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_41
	li		t3,	6036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1248(sp)
	lw		t0,	0(t1)
	li		t3,	6048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_42
	li		t3,	6056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1252(sp)
	lw		t0,	0(t1)
	li		t3,	6068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_43
	li		t3,	6076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1256(sp)
	lw		t0,	0(t1)
	li		t3,	6088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_44
	li		t3,	6096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1260(sp)
	lw		t0,	0(t1)
	li		t3,	6108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_45
	li		t3,	6116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1264(sp)
	lw		t0,	0(t1)
	li		t3,	6128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_46
	li		t3,	6136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1268(sp)
	lw		t0,	0(t1)
	li		t3,	6148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_47
	li		t3,	6156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1272(sp)
	lw		t0,	0(t1)
	li		t3,	6168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_48
	li		t3,	6176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1276(sp)
	lw		t0,	0(t1)
	li		t3,	6188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_49
	li		t3,	6196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1280(sp)
	lw		t0,	0(t1)
	li		t3,	6208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_50
	li		t3,	6216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1284(sp)
	lw		t0,	0(t1)
	li		t3,	6228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_51
	li		t3,	6236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1288(sp)
	lw		t0,	0(t1)
	li		t3,	6248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_52
	li		t3,	6256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1292(sp)
	lw		t0,	0(t1)
	li		t3,	6268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_53
	li		t3,	6276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1296(sp)
	lw		t0,	0(t1)
	li		t3,	6288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_54
	li		t3,	6296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1300(sp)
	lw		t0,	0(t1)
	li		t3,	6308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_55
	li		t3,	6316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1304(sp)
	lw		t0,	0(t1)
	li		t3,	6328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_56
	li		t3,	6336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1308(sp)
	lw		t0,	0(t1)
	li		t3,	6348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_57
	li		t3,	6356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1312(sp)
	lw		t0,	0(t1)
	li		t3,	6368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_58
	li		t3,	6376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1316(sp)
	lw		t0,	0(t1)
	li		t3,	6388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_59
	li		t3,	6396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1320(sp)
	lw		t0,	0(t1)
	li		t3,	6408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_60
	li		t3,	6416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1324(sp)
	lw		t0,	0(t1)
	li		t3,	6428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_61
	li		t3,	6436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1328(sp)
	lw		t0,	0(t1)
	li		t3,	6448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_62
	li		t3,	6456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1332(sp)
	lw		t0,	0(t1)
	li		t3,	6468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_63
	li		t3,	6476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1336(sp)
	lw		t0,	0(t1)
	li		t3,	6488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_64
	li		t3,	6496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1340(sp)
	lw		t0,	0(t1)
	li		t3,	6508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_65
	li		t3,	6516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1344(sp)
	lw		t0,	0(t1)
	li		t3,	6528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_66
	li		t3,	6536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1348(sp)
	lw		t0,	0(t1)
	li		t3,	6548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_67
	li		t3,	6556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1352(sp)
	lw		t0,	0(t1)
	li		t3,	6568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_68
	li		t3,	6576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1356(sp)
	lw		t0,	0(t1)
	li		t3,	6588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_69
	li		t3,	6596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1360(sp)
	lw		t0,	0(t1)
	li		t3,	6608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_70
	li		t3,	6616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1364(sp)
	lw		t0,	0(t1)
	li		t3,	6628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_71
	li		t3,	6636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1368(sp)
	lw		t0,	0(t1)
	li		t3,	6648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_72
	li		t3,	6656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1372(sp)
	lw		t0,	0(t1)
	li		t3,	6668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_73
	li		t3,	6676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1376(sp)
	lw		t0,	0(t1)
	li		t3,	6688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_74
	li		t3,	6696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1380(sp)
	lw		t0,	0(t1)
	li		t3,	6708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_75
	li		t3,	6716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1384(sp)
	lw		t0,	0(t1)
	li		t3,	6728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_76
	li		t3,	6736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1388(sp)
	lw		t0,	0(t1)
	li		t3,	6748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_77
	li		t3,	6756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1392(sp)
	lw		t0,	0(t1)
	li		t3,	6768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_78
	li		t3,	6776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1396(sp)
	lw		t0,	0(t1)
	li		t3,	6788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_79
	li		t3,	6796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1400(sp)
	lw		t0,	0(t1)
	li		t3,	6808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_80
	li		t3,	6816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1404(sp)
	lw		t0,	0(t1)
	li		t3,	6828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_81
	li		t3,	6836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1408(sp)
	lw		t0,	0(t1)
	li		t3,	6848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_82
	li		t3,	6856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1412(sp)
	lw		t0,	0(t1)
	li		t3,	6868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_83
	li		t3,	6876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1416(sp)
	lw		t0,	0(t1)
	li		t3,	6888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_84
	li		t3,	6896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1420(sp)
	lw		t0,	0(t1)
	li		t3,	6908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_85
	li		t3,	6916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1424(sp)
	lw		t0,	0(t1)
	li		t3,	6928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_86
	li		t3,	6936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1428(sp)
	lw		t0,	0(t1)
	li		t3,	6948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_87
	li		t3,	6956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1432(sp)
	lw		t0,	0(t1)
	li		t3,	6968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_88
	li		t3,	6976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	6980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	6980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	6984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1436(sp)
	lw		t0,	0(t1)
	li		t3,	6988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	6992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_89
	li		t3,	6996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	6992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1440(sp)
	lw		t0,	0(t1)
	li		t3,	7008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_90
	li		t3,	7016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1444(sp)
	lw		t0,	0(t1)
	li		t3,	7028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_91
	li		t3,	7036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1448(sp)
	lw		t0,	0(t1)
	li		t3,	7048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_92
	li		t3,	7056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1452(sp)
	lw		t0,	0(t1)
	li		t3,	7068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_93
	li		t3,	7076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1456(sp)
	lw		t0,	0(t1)
	li		t3,	7088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_94
	li		t3,	7096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1460(sp)
	lw		t0,	0(t1)
	li		t3,	7108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_95
	li		t3,	7116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1464(sp)
	lw		t0,	0(t1)
	li		t3,	7128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_96
	li		t3,	7136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1468(sp)
	lw		t0,	0(t1)
	li		t3,	7148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_97
	li		t3,	7156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1472(sp)
	lw		t0,	0(t1)
	li		t3,	7168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_98
	li		t3,	7176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1476(sp)
	lw		t0,	0(t1)
	li		t3,	7188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_99
	li		t3,	7196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1480(sp)
	lw		t0,	0(t1)
	li		t3,	7208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_100
	li		t3,	7216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1484(sp)
	lw		t0,	0(t1)
	li		t3,	7228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_101
	li		t3,	7236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1488(sp)
	lw		t0,	0(t1)
	li		t3,	7248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_102
	li		t3,	7256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1492(sp)
	lw		t0,	0(t1)
	li		t3,	7268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_103
	li		t3,	7276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1496(sp)
	lw		t0,	0(t1)
	li		t3,	7288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_104
	li		t3,	7296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1500(sp)
	lw		t0,	0(t1)
	li		t3,	7308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_105
	li		t3,	7316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1504(sp)
	lw		t0,	0(t1)
	li		t3,	7328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_106
	li		t3,	7336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1508(sp)
	lw		t0,	0(t1)
	li		t3,	7348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_107
	li		t3,	7356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1512(sp)
	lw		t0,	0(t1)
	li		t3,	7368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_108
	li		t3,	7376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1516(sp)
	lw		t0,	0(t1)
	li		t3,	7388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_109
	li		t3,	7396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1520(sp)
	lw		t0,	0(t1)
	li		t3,	7408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_110
	li		t3,	7416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1524(sp)
	lw		t0,	0(t1)
	li		t3,	7428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_111
	li		t3,	7436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1528(sp)
	lw		t0,	0(t1)
	li		t3,	7448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_112
	li		t3,	7456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1532(sp)
	lw		t0,	0(t1)
	li		t3,	7468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_113
	li		t3,	7476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1536(sp)
	lw		t0,	0(t1)
	li		t3,	7488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_114
	li		t3,	7496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1540(sp)
	lw		t0,	0(t1)
	li		t3,	7508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_115
	li		t3,	7516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1544(sp)
	lw		t0,	0(t1)
	li		t3,	7528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_116
	li		t3,	7536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1548(sp)
	lw		t0,	0(t1)
	li		t3,	7548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_117
	li		t3,	7556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1552(sp)
	lw		t0,	0(t1)
	li		t3,	7568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_118
	li		t3,	7576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1556(sp)
	lw		t0,	0(t1)
	li		t3,	7588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_119
	li		t3,	7596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1560(sp)
	lw		t0,	0(t1)
	li		t3,	7608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_120
	li		t3,	7616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1564(sp)
	lw		t0,	0(t1)
	li		t3,	7628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_121
	li		t3,	7636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1568(sp)
	lw		t0,	0(t1)
	li		t3,	7648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_122
	li		t3,	7656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1572(sp)
	lw		t0,	0(t1)
	li		t3,	7668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_123
	li		t3,	7676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1576(sp)
	lw		t0,	0(t1)
	li		t3,	7688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_124
	li		t3,	7696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1580(sp)
	lw		t0,	0(t1)
	li		t3,	7708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_125
	li		t3,	7716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1584(sp)
	lw		t0,	0(t1)
	li		t3,	7728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_126
	li		t3,	7736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1588(sp)
	lw		t0,	0(t1)
	li		t3,	7748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_127
	li		t3,	7756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1592(sp)
	lw		t0,	0(t1)
	li		t3,	7768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_128
	li		t3,	7776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1596(sp)
	lw		t0,	0(t1)
	li		t3,	7788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_129
	li		t3,	7796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1600(sp)
	lw		t0,	0(t1)
	li		t3,	7808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_130
	li		t3,	7816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1604(sp)
	lw		t0,	0(t1)
	li		t3,	7828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_131
	li		t3,	7836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1608(sp)
	lw		t0,	0(t1)
	li		t3,	7848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_132
	li		t3,	7856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1612(sp)
	lw		t0,	0(t1)
	li		t3,	7868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_133
	li		t3,	7876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1616(sp)
	lw		t0,	0(t1)
	li		t3,	7888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_134
	li		t3,	7896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1620(sp)
	lw		t0,	0(t1)
	li		t3,	7908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_135
	li		t3,	7916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1624(sp)
	lw		t0,	0(t1)
	li		t3,	7928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_136
	li		t3,	7936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1628(sp)
	lw		t0,	0(t1)
	li		t3,	7948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_137
	li		t3,	7956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1632(sp)
	lw		t0,	0(t1)
	li		t3,	7968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_138
	li		t3,	7976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	7980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	7980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	7984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1636(sp)
	lw		t0,	0(t1)
	li		t3,	7988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	7992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_139
	li		t3,	7996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	7992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1640(sp)
	lw		t0,	0(t1)
	li		t3,	8008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_140
	li		t3,	8016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1644(sp)
	lw		t0,	0(t1)
	li		t3,	8028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_141
	li		t3,	8036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1648(sp)
	lw		t0,	0(t1)
	li		t3,	8048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_142
	li		t3,	8056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1652(sp)
	lw		t0,	0(t1)
	li		t3,	8068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_143
	li		t3,	8076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1656(sp)
	lw		t0,	0(t1)
	li		t3,	8088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_144
	li		t3,	8096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1660(sp)
	lw		t0,	0(t1)
	li		t3,	8108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_145
	li		t3,	8116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1664(sp)
	lw		t0,	0(t1)
	li		t3,	8128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_146
	li		t3,	8136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1668(sp)
	lw		t0,	0(t1)
	li		t3,	8148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_147
	li		t3,	8156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1672(sp)
	lw		t0,	0(t1)
	li		t3,	8168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_148
	li		t3,	8176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1676(sp)
	lw		t0,	0(t1)
	li		t3,	8188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_149
	li		t3,	8196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1680(sp)
	lw		t0,	0(t1)
	li		t3,	8208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_150
	li		t3,	8216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1684(sp)
	lw		t0,	0(t1)
	li		t3,	8228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_151
	li		t3,	8236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1688(sp)
	lw		t0,	0(t1)
	li		t3,	8248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_152
	li		t3,	8256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1692(sp)
	lw		t0,	0(t1)
	li		t3,	8268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_153
	li		t3,	8276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1696(sp)
	lw		t0,	0(t1)
	li		t3,	8288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_154
	li		t3,	8296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1700(sp)
	lw		t0,	0(t1)
	li		t3,	8308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_155
	li		t3,	8316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1704(sp)
	lw		t0,	0(t1)
	li		t3,	8328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_156
	li		t3,	8336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1708(sp)
	lw		t0,	0(t1)
	li		t3,	8348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_157
	li		t3,	8356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1712(sp)
	lw		t0,	0(t1)
	li		t3,	8368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_158
	li		t3,	8376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1716(sp)
	lw		t0,	0(t1)
	li		t3,	8388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_159
	li		t3,	8396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1720(sp)
	lw		t0,	0(t1)
	li		t3,	8408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_160
	li		t3,	8416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1724(sp)
	lw		t0,	0(t1)
	li		t3,	8428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_161
	li		t3,	8436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1728(sp)
	lw		t0,	0(t1)
	li		t3,	8448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_162
	li		t3,	8456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1732(sp)
	lw		t0,	0(t1)
	li		t3,	8468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_163
	li		t3,	8476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1736(sp)
	lw		t0,	0(t1)
	li		t3,	8488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_164
	li		t3,	8496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1740(sp)
	lw		t0,	0(t1)
	li		t3,	8508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_165
	li		t3,	8516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1744(sp)
	lw		t0,	0(t1)
	li		t3,	8528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_166
	li		t3,	8536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1748(sp)
	lw		t0,	0(t1)
	li		t3,	8548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_167
	li		t3,	8556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1752(sp)
	lw		t0,	0(t1)
	li		t3,	8568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_168
	li		t3,	8576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1756(sp)
	lw		t0,	0(t1)
	li		t3,	8588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_169
	li		t3,	8596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1760(sp)
	lw		t0,	0(t1)
	li		t3,	8608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_170
	li		t3,	8616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1764(sp)
	lw		t0,	0(t1)
	li		t3,	8628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_171
	li		t3,	8636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1768(sp)
	lw		t0,	0(t1)
	li		t3,	8648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_172
	li		t3,	8656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1772(sp)
	lw		t0,	0(t1)
	li		t3,	8668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_173
	li		t3,	8676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1776(sp)
	lw		t0,	0(t1)
	li		t3,	8688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_174
	li		t3,	8696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1780(sp)
	lw		t0,	0(t1)
	li		t3,	8708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_175
	li		t3,	8716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1784(sp)
	lw		t0,	0(t1)
	li		t3,	8728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_176
	li		t3,	8736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1788(sp)
	lw		t0,	0(t1)
	li		t3,	8748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_177
	li		t3,	8756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1792(sp)
	lw		t0,	0(t1)
	li		t3,	8768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_178
	li		t3,	8776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1796(sp)
	lw		t0,	0(t1)
	li		t3,	8788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_179
	li		t3,	8796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1800(sp)
	lw		t0,	0(t1)
	li		t3,	8808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_180
	li		t3,	8816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1804(sp)
	lw		t0,	0(t1)
	li		t3,	8828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_181
	li		t3,	8836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1808(sp)
	lw		t0,	0(t1)
	li		t3,	8848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_182
	li		t3,	8856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1812(sp)
	lw		t0,	0(t1)
	li		t3,	8868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_183
	li		t3,	8876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1816(sp)
	lw		t0,	0(t1)
	li		t3,	8888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_184
	li		t3,	8896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1820(sp)
	lw		t0,	0(t1)
	li		t3,	8908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_185
	li		t3,	8916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1824(sp)
	lw		t0,	0(t1)
	li		t3,	8928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_186
	li		t3,	8936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1828(sp)
	lw		t0,	0(t1)
	li		t3,	8948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_187
	li		t3,	8956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1832(sp)
	lw		t0,	0(t1)
	li		t3,	8968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_188
	li		t3,	8976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	8980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	8980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	8984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1836(sp)
	lw		t0,	0(t1)
	li		t3,	8988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	8992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_189
	li		t3,	8996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	8992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1840(sp)
	lw		t0,	0(t1)
	li		t3,	9008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_190
	li		t3,	9016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1844(sp)
	lw		t0,	0(t1)
	li		t3,	9028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_191
	li		t3,	9036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1848(sp)
	lw		t0,	0(t1)
	li		t3,	9048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_192
	li		t3,	9056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1852(sp)
	lw		t0,	0(t1)
	li		t3,	9068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_193
	li		t3,	9076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1856(sp)
	lw		t0,	0(t1)
	li		t3,	9088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_194
	li		t3,	9096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1860(sp)
	lw		t0,	0(t1)
	li		t3,	9108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_195
	li		t3,	9116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1864(sp)
	lw		t0,	0(t1)
	li		t3,	9128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_196
	li		t3,	9136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1868(sp)
	lw		t0,	0(t1)
	li		t3,	9148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_197
	li		t3,	9156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1872(sp)
	lw		t0,	0(t1)
	li		t3,	9168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_198
	li		t3,	9176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1876(sp)
	lw		t0,	0(t1)
	li		t3,	9188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_199
	li		t3,	9196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1880(sp)
	lw		t0,	0(t1)
	li		t3,	9208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_200
	li		t3,	9216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1884(sp)
	lw		t0,	0(t1)
	li		t3,	9228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_201
	li		t3,	9236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1888(sp)
	lw		t0,	0(t1)
	li		t3,	9248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_202
	li		t3,	9256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1892(sp)
	lw		t0,	0(t1)
	li		t3,	9268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_203
	li		t3,	9276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1896(sp)
	lw		t0,	0(t1)
	li		t3,	9288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_204
	li		t3,	9296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1900(sp)
	lw		t0,	0(t1)
	li		t3,	9308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_205
	li		t3,	9316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1904(sp)
	lw		t0,	0(t1)
	li		t3,	9328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_206
	li		t3,	9336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1908(sp)
	lw		t0,	0(t1)
	li		t3,	9348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_207
	li		t3,	9356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1912(sp)
	lw		t0,	0(t1)
	li		t3,	9368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_208
	li		t3,	9376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1916(sp)
	lw		t0,	0(t1)
	li		t3,	9388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_209
	li		t3,	9396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1920(sp)
	lw		t0,	0(t1)
	li		t3,	9408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_210
	li		t3,	9416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1924(sp)
	lw		t0,	0(t1)
	li		t3,	9428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_211
	li		t3,	9436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1928(sp)
	lw		t0,	0(t1)
	li		t3,	9448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_212
	li		t3,	9456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1932(sp)
	lw		t0,	0(t1)
	li		t3,	9468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_213
	li		t3,	9476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1936(sp)
	lw		t0,	0(t1)
	li		t3,	9488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_214
	li		t3,	9496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1940(sp)
	lw		t0,	0(t1)
	li		t3,	9508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_215
	li		t3,	9516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1944(sp)
	lw		t0,	0(t1)
	li		t3,	9528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_216
	li		t3,	9536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1948(sp)
	lw		t0,	0(t1)
	li		t3,	9548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_217
	li		t3,	9556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1952(sp)
	lw		t0,	0(t1)
	li		t3,	9568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_218
	li		t3,	9576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1956(sp)
	lw		t0,	0(t1)
	li		t3,	9588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_219
	li		t3,	9596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1960(sp)
	lw		t0,	0(t1)
	li		t3,	9608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_220
	li		t3,	9616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1964(sp)
	lw		t0,	0(t1)
	li		t3,	9628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_221
	li		t3,	9636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1968(sp)
	lw		t0,	0(t1)
	li		t3,	9648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_222
	li		t3,	9656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1972(sp)
	lw		t0,	0(t1)
	li		t3,	9668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_223
	li		t3,	9676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1976(sp)
	lw		t0,	0(t1)
	li		t3,	9688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_224
	li		t3,	9696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1980(sp)
	lw		t0,	0(t1)
	li		t3,	9708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_225
	li		t3,	9716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1984(sp)
	lw		t0,	0(t1)
	li		t3,	9728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_226
	li		t3,	9736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1988(sp)
	lw		t0,	0(t1)
	li		t3,	9748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_227
	li		t3,	9756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1992(sp)
	lw		t0,	0(t1)
	li		t3,	9768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_228
	li		t3,	9776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1996(sp)
	lw		t0,	0(t1)
	li		t3,	9788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_229
	li		t3,	9796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2000(sp)
	lw		t0,	0(t1)
	li		t3,	9808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_230
	li		t3,	9816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2004(sp)
	lw		t0,	0(t1)
	li		t3,	9828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_231
	li		t3,	9836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2008(sp)
	lw		t0,	0(t1)
	li		t3,	9848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_232
	li		t3,	9856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2012(sp)
	lw		t0,	0(t1)
	li		t3,	9868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_233
	li		t3,	9876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2016(sp)
	lw		t0,	0(t1)
	li		t3,	9888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_234
	li		t3,	9896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2020(sp)
	lw		t0,	0(t1)
	li		t3,	9908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_235
	li		t3,	9916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2024(sp)
	lw		t0,	0(t1)
	li		t3,	9928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_236
	li		t3,	9936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2028(sp)
	lw		t0,	0(t1)
	li		t3,	9948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_237
	li		t3,	9956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2032(sp)
	lw		t0,	0(t1)
	li		t3,	9968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_238
	li		t3,	9976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	9980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	9980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	9984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2036(sp)
	lw		t0,	0(t1)
	li		t3,	9988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	9992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_239
	li		t3,	9996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	9992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2040(sp)
	lw		t0,	0(t1)
	li		t3,	10008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_240
	li		t3,	10016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2044(sp)
	lw		t0,	0(t1)
	li		t3,	10028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_241
	li		t3,	10036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_242
	li		t3,	10056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_243
	li		t3,	10076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_244
	li		t3,	10096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_245
	li		t3,	10116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_246
	li		t3,	10136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_247
	li		t3,	10156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_248
	li		t3,	10176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_249
	li		t3,	10196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_250
	li		t3,	10216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_251
	li		t3,	10236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_252
	li		t3,	10256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_253
	li		t3,	10276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_254
	li		t3,	10296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_255
	li		t3,	10316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	10328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_256
	li		t3,	10336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	la		t0,	const_string_257
	li		t3,	10348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_println_1
	lw		t1,	1084(sp)
	lw		t0,	0(t1)
	li		t3,	10356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_258
	li		t3,	10364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1088(sp)
	lw		t0,	0(t1)
	li		t3,	10376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_259
	li		t3,	10384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1092(sp)
	lw		t0,	0(t1)
	li		t3,	10396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_260
	li		t3,	10404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1096(sp)
	lw		t0,	0(t1)
	li		t3,	10416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_261
	li		t3,	10424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1100(sp)
	lw		t0,	0(t1)
	li		t3,	10436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_262
	li		t3,	10444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1104(sp)
	lw		t0,	0(t1)
	li		t3,	10456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_263
	li		t3,	10464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1108(sp)
	lw		t0,	0(t1)
	li		t3,	10476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_264
	li		t3,	10484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1112(sp)
	lw		t0,	0(t1)
	li		t3,	10496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_265
	li		t3,	10504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1116(sp)
	lw		t0,	0(t1)
	li		t3,	10516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_266
	li		t3,	10524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1120(sp)
	lw		t0,	0(t1)
	li		t3,	10536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_267
	li		t3,	10544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1124(sp)
	lw		t0,	0(t1)
	li		t3,	10556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_268
	li		t3,	10564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1128(sp)
	lw		t0,	0(t1)
	li		t3,	10576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_269
	li		t3,	10584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1132(sp)
	lw		t0,	0(t1)
	li		t3,	10596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_270
	li		t3,	10604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1136(sp)
	lw		t0,	0(t1)
	li		t3,	10616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_271
	li		t3,	10624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1140(sp)
	lw		t0,	0(t1)
	li		t3,	10636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_272
	li		t3,	10644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1144(sp)
	lw		t0,	0(t1)
	li		t3,	10656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_273
	li		t3,	10664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1148(sp)
	lw		t0,	0(t1)
	li		t3,	10676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_274
	li		t3,	10684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1152(sp)
	lw		t0,	0(t1)
	li		t3,	10696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_275
	li		t3,	10704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1156(sp)
	lw		t0,	0(t1)
	li		t3,	10716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_276
	li		t3,	10724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1160(sp)
	lw		t0,	0(t1)
	li		t3,	10736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_277
	li		t3,	10744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1164(sp)
	lw		t0,	0(t1)
	li		t3,	10756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_278
	li		t3,	10764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1168(sp)
	lw		t0,	0(t1)
	li		t3,	10776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_279
	li		t3,	10784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1172(sp)
	lw		t0,	0(t1)
	li		t3,	10796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_280
	li		t3,	10804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1176(sp)
	lw		t0,	0(t1)
	li		t3,	10816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_281
	li		t3,	10824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1180(sp)
	lw		t0,	0(t1)
	li		t3,	10836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_282
	li		t3,	10844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1184(sp)
	lw		t0,	0(t1)
	li		t3,	10856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_283
	li		t3,	10864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1188(sp)
	lw		t0,	0(t1)
	li		t3,	10876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_284
	li		t3,	10884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1192(sp)
	lw		t0,	0(t1)
	li		t3,	10896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_285
	li		t3,	10904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1196(sp)
	lw		t0,	0(t1)
	li		t3,	10916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_286
	li		t3,	10924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1200(sp)
	lw		t0,	0(t1)
	li		t3,	10936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_287
	li		t3,	10944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1204(sp)
	lw		t0,	0(t1)
	li		t3,	10956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_288
	li		t3,	10964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1208(sp)
	lw		t0,	0(t1)
	li		t3,	10976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	10980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_289
	li		t3,	10984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	10988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	10988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	10992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1212(sp)
	lw		t0,	0(t1)
	li		t3,	10996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	10996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_290
	li		t3,	11004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1216(sp)
	lw		t0,	0(t1)
	li		t3,	11016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_291
	li		t3,	11024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1220(sp)
	lw		t0,	0(t1)
	li		t3,	11036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_292
	li		t3,	11044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1224(sp)
	lw		t0,	0(t1)
	li		t3,	11056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_293
	li		t3,	11064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1228(sp)
	lw		t0,	0(t1)
	li		t3,	11076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_294
	li		t3,	11084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1232(sp)
	lw		t0,	0(t1)
	li		t3,	11096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_295
	li		t3,	11104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1236(sp)
	lw		t0,	0(t1)
	li		t3,	11116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_296
	li		t3,	11124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1240(sp)
	lw		t0,	0(t1)
	li		t3,	11136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_297
	li		t3,	11144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1244(sp)
	lw		t0,	0(t1)
	li		t3,	11156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_298
	li		t3,	11164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1248(sp)
	lw		t0,	0(t1)
	li		t3,	11176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_299
	li		t3,	11184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1252(sp)
	lw		t0,	0(t1)
	li		t3,	11196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_300
	li		t3,	11204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1256(sp)
	lw		t0,	0(t1)
	li		t3,	11216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_301
	li		t3,	11224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1260(sp)
	lw		t0,	0(t1)
	li		t3,	11236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_302
	li		t3,	11244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1264(sp)
	lw		t0,	0(t1)
	li		t3,	11256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_303
	li		t3,	11264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1268(sp)
	lw		t0,	0(t1)
	li		t3,	11276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_304
	li		t3,	11284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1272(sp)
	lw		t0,	0(t1)
	li		t3,	11296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_305
	li		t3,	11304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1276(sp)
	lw		t0,	0(t1)
	li		t3,	11316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_306
	li		t3,	11324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1280(sp)
	lw		t0,	0(t1)
	li		t3,	11336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_307
	li		t3,	11344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1284(sp)
	lw		t0,	0(t1)
	li		t3,	11356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_308
	li		t3,	11364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1288(sp)
	lw		t0,	0(t1)
	li		t3,	11376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_309
	li		t3,	11384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1292(sp)
	lw		t0,	0(t1)
	li		t3,	11396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_310
	li		t3,	11404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1296(sp)
	lw		t0,	0(t1)
	li		t3,	11416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_311
	li		t3,	11424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1300(sp)
	lw		t0,	0(t1)
	li		t3,	11436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_312
	li		t3,	11444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1304(sp)
	lw		t0,	0(t1)
	li		t3,	11456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_313
	li		t3,	11464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1308(sp)
	lw		t0,	0(t1)
	li		t3,	11476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_314
	li		t3,	11484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1312(sp)
	lw		t0,	0(t1)
	li		t3,	11496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_315
	li		t3,	11504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1316(sp)
	lw		t0,	0(t1)
	li		t3,	11516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_316
	li		t3,	11524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1320(sp)
	lw		t0,	0(t1)
	li		t3,	11536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_317
	li		t3,	11544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1324(sp)
	lw		t0,	0(t1)
	li		t3,	11556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_318
	li		t3,	11564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1328(sp)
	lw		t0,	0(t1)
	li		t3,	11576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_319
	li		t3,	11584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1332(sp)
	lw		t0,	0(t1)
	li		t3,	11596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_320
	li		t3,	11604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1336(sp)
	lw		t0,	0(t1)
	li		t3,	11616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_321
	li		t3,	11624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1340(sp)
	lw		t0,	0(t1)
	li		t3,	11636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_322
	li		t3,	11644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1344(sp)
	lw		t0,	0(t1)
	li		t3,	11656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_323
	li		t3,	11664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1348(sp)
	lw		t0,	0(t1)
	li		t3,	11676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_324
	li		t3,	11684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1352(sp)
	lw		t0,	0(t1)
	li		t3,	11696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_325
	li		t3,	11704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1356(sp)
	lw		t0,	0(t1)
	li		t3,	11716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_326
	li		t3,	11724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1360(sp)
	lw		t0,	0(t1)
	li		t3,	11736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_327
	li		t3,	11744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1364(sp)
	lw		t0,	0(t1)
	li		t3,	11756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_328
	li		t3,	11764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1368(sp)
	lw		t0,	0(t1)
	li		t3,	11776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_329
	li		t3,	11784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1372(sp)
	lw		t0,	0(t1)
	li		t3,	11796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_330
	li		t3,	11804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1376(sp)
	lw		t0,	0(t1)
	li		t3,	11816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_331
	li		t3,	11824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1380(sp)
	lw		t0,	0(t1)
	li		t3,	11836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_332
	li		t3,	11844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1384(sp)
	lw		t0,	0(t1)
	li		t3,	11856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_333
	li		t3,	11864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1388(sp)
	lw		t0,	0(t1)
	li		t3,	11876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_334
	li		t3,	11884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1392(sp)
	lw		t0,	0(t1)
	li		t3,	11896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_335
	li		t3,	11904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1396(sp)
	lw		t0,	0(t1)
	li		t3,	11916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_336
	li		t3,	11924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1400(sp)
	lw		t0,	0(t1)
	li		t3,	11936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_337
	li		t3,	11944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1404(sp)
	lw		t0,	0(t1)
	li		t3,	11956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_338
	li		t3,	11964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1408(sp)
	lw		t0,	0(t1)
	li		t3,	11976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	11980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_339
	li		t3,	11984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	11988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	11988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	11992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1412(sp)
	lw		t0,	0(t1)
	li		t3,	11996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	11996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_340
	li		t3,	12004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1416(sp)
	lw		t0,	0(t1)
	li		t3,	12016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_341
	li		t3,	12024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1420(sp)
	lw		t0,	0(t1)
	li		t3,	12036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_342
	li		t3,	12044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1424(sp)
	lw		t0,	0(t1)
	li		t3,	12056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_343
	li		t3,	12064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1428(sp)
	lw		t0,	0(t1)
	li		t3,	12076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_344
	li		t3,	12084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1432(sp)
	lw		t0,	0(t1)
	li		t3,	12096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_345
	li		t3,	12104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1436(sp)
	lw		t0,	0(t1)
	li		t3,	12116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_346
	li		t3,	12124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1440(sp)
	lw		t0,	0(t1)
	li		t3,	12136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_347
	li		t3,	12144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1444(sp)
	lw		t0,	0(t1)
	li		t3,	12156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_348
	li		t3,	12164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1448(sp)
	lw		t0,	0(t1)
	li		t3,	12176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_349
	li		t3,	12184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1452(sp)
	lw		t0,	0(t1)
	li		t3,	12196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_350
	li		t3,	12204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1456(sp)
	lw		t0,	0(t1)
	li		t3,	12216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_351
	li		t3,	12224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1460(sp)
	lw		t0,	0(t1)
	li		t3,	12236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_352
	li		t3,	12244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1464(sp)
	lw		t0,	0(t1)
	li		t3,	12256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_353
	li		t3,	12264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1468(sp)
	lw		t0,	0(t1)
	li		t3,	12276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_354
	li		t3,	12284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1472(sp)
	lw		t0,	0(t1)
	li		t3,	12296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_355
	li		t3,	12304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1476(sp)
	lw		t0,	0(t1)
	li		t3,	12316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_356
	li		t3,	12324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1480(sp)
	lw		t0,	0(t1)
	li		t3,	12336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_357
	li		t3,	12344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1484(sp)
	lw		t0,	0(t1)
	li		t3,	12356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_358
	li		t3,	12364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1488(sp)
	lw		t0,	0(t1)
	li		t3,	12376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_359
	li		t3,	12384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1492(sp)
	lw		t0,	0(t1)
	li		t3,	12396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_360
	li		t3,	12404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1496(sp)
	lw		t0,	0(t1)
	li		t3,	12416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_361
	li		t3,	12424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1500(sp)
	lw		t0,	0(t1)
	li		t3,	12436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_362
	li		t3,	12444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1504(sp)
	lw		t0,	0(t1)
	li		t3,	12456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_363
	li		t3,	12464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1508(sp)
	lw		t0,	0(t1)
	li		t3,	12476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_364
	li		t3,	12484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1512(sp)
	lw		t0,	0(t1)
	li		t3,	12496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_365
	li		t3,	12504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1516(sp)
	lw		t0,	0(t1)
	li		t3,	12516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_366
	li		t3,	12524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1520(sp)
	lw		t0,	0(t1)
	li		t3,	12536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_367
	li		t3,	12544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1524(sp)
	lw		t0,	0(t1)
	li		t3,	12556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_368
	li		t3,	12564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1528(sp)
	lw		t0,	0(t1)
	li		t3,	12576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_369
	li		t3,	12584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1532(sp)
	lw		t0,	0(t1)
	li		t3,	12596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_370
	li		t3,	12604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1536(sp)
	lw		t0,	0(t1)
	li		t3,	12616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_371
	li		t3,	12624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1540(sp)
	lw		t0,	0(t1)
	li		t3,	12636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_372
	li		t3,	12644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1544(sp)
	lw		t0,	0(t1)
	li		t3,	12656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_373
	li		t3,	12664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1548(sp)
	lw		t0,	0(t1)
	li		t3,	12676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_374
	li		t3,	12684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1552(sp)
	lw		t0,	0(t1)
	li		t3,	12696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_375
	li		t3,	12704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1556(sp)
	lw		t0,	0(t1)
	li		t3,	12716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_376
	li		t3,	12724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1560(sp)
	lw		t0,	0(t1)
	li		t3,	12736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_377
	li		t3,	12744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1564(sp)
	lw		t0,	0(t1)
	li		t3,	12756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_378
	li		t3,	12764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1568(sp)
	lw		t0,	0(t1)
	li		t3,	12776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_379
	li		t3,	12784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1572(sp)
	lw		t0,	0(t1)
	li		t3,	12796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_380
	li		t3,	12804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1576(sp)
	lw		t0,	0(t1)
	li		t3,	12816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_381
	li		t3,	12824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1580(sp)
	lw		t0,	0(t1)
	li		t3,	12836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_382
	li		t3,	12844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1584(sp)
	lw		t0,	0(t1)
	li		t3,	12856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_383
	li		t3,	12864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1588(sp)
	lw		t0,	0(t1)
	li		t3,	12876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_384
	li		t3,	12884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1592(sp)
	lw		t0,	0(t1)
	li		t3,	12896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_385
	li		t3,	12904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1596(sp)
	lw		t0,	0(t1)
	li		t3,	12916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_386
	li		t3,	12924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1600(sp)
	lw		t0,	0(t1)
	li		t3,	12936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_387
	li		t3,	12944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1604(sp)
	lw		t0,	0(t1)
	li		t3,	12956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_388
	li		t3,	12964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1608(sp)
	lw		t0,	0(t1)
	li		t3,	12976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	12980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_389
	li		t3,	12984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	12988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	12988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	12992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1612(sp)
	lw		t0,	0(t1)
	li		t3,	12996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	12996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_390
	li		t3,	13004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1616(sp)
	lw		t0,	0(t1)
	li		t3,	13016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_391
	li		t3,	13024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1620(sp)
	lw		t0,	0(t1)
	li		t3,	13036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_392
	li		t3,	13044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1624(sp)
	lw		t0,	0(t1)
	li		t3,	13056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_393
	li		t3,	13064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1628(sp)
	lw		t0,	0(t1)
	li		t3,	13076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_394
	li		t3,	13084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1632(sp)
	lw		t0,	0(t1)
	li		t3,	13096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_395
	li		t3,	13104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1636(sp)
	lw		t0,	0(t1)
	li		t3,	13116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_396
	li		t3,	13124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1640(sp)
	lw		t0,	0(t1)
	li		t3,	13136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_397
	li		t3,	13144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1644(sp)
	lw		t0,	0(t1)
	li		t3,	13156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_398
	li		t3,	13164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1648(sp)
	lw		t0,	0(t1)
	li		t3,	13176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_399
	li		t3,	13184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1652(sp)
	lw		t0,	0(t1)
	li		t3,	13196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_400
	li		t3,	13204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1656(sp)
	lw		t0,	0(t1)
	li		t3,	13216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_401
	li		t3,	13224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1660(sp)
	lw		t0,	0(t1)
	li		t3,	13236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_402
	li		t3,	13244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1664(sp)
	lw		t0,	0(t1)
	li		t3,	13256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_403
	li		t3,	13264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1668(sp)
	lw		t0,	0(t1)
	li		t3,	13276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_404
	li		t3,	13284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1672(sp)
	lw		t0,	0(t1)
	li		t3,	13296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_405
	li		t3,	13304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1676(sp)
	lw		t0,	0(t1)
	li		t3,	13316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_406
	li		t3,	13324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1680(sp)
	lw		t0,	0(t1)
	li		t3,	13336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_407
	li		t3,	13344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1684(sp)
	lw		t0,	0(t1)
	li		t3,	13356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_408
	li		t3,	13364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1688(sp)
	lw		t0,	0(t1)
	li		t3,	13376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_409
	li		t3,	13384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1692(sp)
	lw		t0,	0(t1)
	li		t3,	13396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_410
	li		t3,	13404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1696(sp)
	lw		t0,	0(t1)
	li		t3,	13416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_411
	li		t3,	13424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1700(sp)
	lw		t0,	0(t1)
	li		t3,	13436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_412
	li		t3,	13444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1704(sp)
	lw		t0,	0(t1)
	li		t3,	13456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_413
	li		t3,	13464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1708(sp)
	lw		t0,	0(t1)
	li		t3,	13476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_414
	li		t3,	13484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1712(sp)
	lw		t0,	0(t1)
	li		t3,	13496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_415
	li		t3,	13504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1716(sp)
	lw		t0,	0(t1)
	li		t3,	13516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_416
	li		t3,	13524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1720(sp)
	lw		t0,	0(t1)
	li		t3,	13536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_417
	li		t3,	13544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1724(sp)
	lw		t0,	0(t1)
	li		t3,	13556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_418
	li		t3,	13564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1728(sp)
	lw		t0,	0(t1)
	li		t3,	13576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_419
	li		t3,	13584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1732(sp)
	lw		t0,	0(t1)
	li		t3,	13596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_420
	li		t3,	13604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1736(sp)
	lw		t0,	0(t1)
	li		t3,	13616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_421
	li		t3,	13624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1740(sp)
	lw		t0,	0(t1)
	li		t3,	13636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_422
	li		t3,	13644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1744(sp)
	lw		t0,	0(t1)
	li		t3,	13656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_423
	li		t3,	13664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1748(sp)
	lw		t0,	0(t1)
	li		t3,	13676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_424
	li		t3,	13684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1752(sp)
	lw		t0,	0(t1)
	li		t3,	13696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_425
	li		t3,	13704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1756(sp)
	lw		t0,	0(t1)
	li		t3,	13716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_426
	li		t3,	13724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1760(sp)
	lw		t0,	0(t1)
	li		t3,	13736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_427
	li		t3,	13744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1764(sp)
	lw		t0,	0(t1)
	li		t3,	13756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_428
	li		t3,	13764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1768(sp)
	lw		t0,	0(t1)
	li		t3,	13776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_429
	li		t3,	13784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1772(sp)
	lw		t0,	0(t1)
	li		t3,	13796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_430
	li		t3,	13804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1776(sp)
	lw		t0,	0(t1)
	li		t3,	13816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_431
	li		t3,	13824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1780(sp)
	lw		t0,	0(t1)
	li		t3,	13836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_432
	li		t3,	13844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1784(sp)
	lw		t0,	0(t1)
	li		t3,	13856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_433
	li		t3,	13864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1788(sp)
	lw		t0,	0(t1)
	li		t3,	13876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_434
	li		t3,	13884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1792(sp)
	lw		t0,	0(t1)
	li		t3,	13896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_435
	li		t3,	13904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1796(sp)
	lw		t0,	0(t1)
	li		t3,	13916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_436
	li		t3,	13924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1800(sp)
	lw		t0,	0(t1)
	li		t3,	13936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_437
	li		t3,	13944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1804(sp)
	lw		t0,	0(t1)
	li		t3,	13956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_438
	li		t3,	13964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1808(sp)
	lw		t0,	0(t1)
	li		t3,	13976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	13980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_439
	li		t3,	13984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	13988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	13988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	13992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1812(sp)
	lw		t0,	0(t1)
	li		t3,	13996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	13996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_440
	li		t3,	14004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1816(sp)
	lw		t0,	0(t1)
	li		t3,	14016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_441
	li		t3,	14024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1820(sp)
	lw		t0,	0(t1)
	li		t3,	14036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_442
	li		t3,	14044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1824(sp)
	lw		t0,	0(t1)
	li		t3,	14056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_443
	li		t3,	14064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1828(sp)
	lw		t0,	0(t1)
	li		t3,	14076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_444
	li		t3,	14084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1832(sp)
	lw		t0,	0(t1)
	li		t3,	14096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_445
	li		t3,	14104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1836(sp)
	lw		t0,	0(t1)
	li		t3,	14116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_446
	li		t3,	14124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1840(sp)
	lw		t0,	0(t1)
	li		t3,	14136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_447
	li		t3,	14144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1844(sp)
	lw		t0,	0(t1)
	li		t3,	14156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_448
	li		t3,	14164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1848(sp)
	lw		t0,	0(t1)
	li		t3,	14176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_449
	li		t3,	14184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1852(sp)
	lw		t0,	0(t1)
	li		t3,	14196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_450
	li		t3,	14204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1856(sp)
	lw		t0,	0(t1)
	li		t3,	14216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_451
	li		t3,	14224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1860(sp)
	lw		t0,	0(t1)
	li		t3,	14236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_452
	li		t3,	14244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1864(sp)
	lw		t0,	0(t1)
	li		t3,	14256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_453
	li		t3,	14264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1868(sp)
	lw		t0,	0(t1)
	li		t3,	14276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_454
	li		t3,	14284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1872(sp)
	lw		t0,	0(t1)
	li		t3,	14296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_455
	li		t3,	14304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1876(sp)
	lw		t0,	0(t1)
	li		t3,	14316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_456
	li		t3,	14324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1880(sp)
	lw		t0,	0(t1)
	li		t3,	14336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_457
	li		t3,	14344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1884(sp)
	lw		t0,	0(t1)
	li		t3,	14356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_458
	li		t3,	14364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1888(sp)
	lw		t0,	0(t1)
	li		t3,	14376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_459
	li		t3,	14384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1892(sp)
	lw		t0,	0(t1)
	li		t3,	14396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_460
	li		t3,	14404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1896(sp)
	lw		t0,	0(t1)
	li		t3,	14416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_461
	li		t3,	14424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1900(sp)
	lw		t0,	0(t1)
	li		t3,	14436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_462
	li		t3,	14444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1904(sp)
	lw		t0,	0(t1)
	li		t3,	14456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_463
	li		t3,	14464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1908(sp)
	lw		t0,	0(t1)
	li		t3,	14476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_464
	li		t3,	14484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14488
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14488
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14492
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14492
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1912(sp)
	lw		t0,	0(t1)
	li		t3,	14496
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14496
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14500
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_465
	li		t3,	14504
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14504
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14508
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14500
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14508
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14512
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14512
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1916(sp)
	lw		t0,	0(t1)
	li		t3,	14516
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14516
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14520
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_466
	li		t3,	14524
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14524
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14528
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14520
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14528
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14532
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14532
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1920(sp)
	lw		t0,	0(t1)
	li		t3,	14536
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14536
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14540
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_467
	li		t3,	14544
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14544
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14548
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14540
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14548
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14552
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14552
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1924(sp)
	lw		t0,	0(t1)
	li		t3,	14556
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14556
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14560
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_468
	li		t3,	14564
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14564
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14568
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14560
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14568
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14572
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14572
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1928(sp)
	lw		t0,	0(t1)
	li		t3,	14576
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14576
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14580
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_469
	li		t3,	14584
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14584
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14588
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14580
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14588
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14592
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14592
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1932(sp)
	lw		t0,	0(t1)
	li		t3,	14596
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14596
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14600
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_470
	li		t3,	14604
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14604
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14608
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14600
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14608
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14612
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14612
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1936(sp)
	lw		t0,	0(t1)
	li		t3,	14616
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14616
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14620
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_471
	li		t3,	14624
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14624
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14628
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14620
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14628
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14632
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14632
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1940(sp)
	lw		t0,	0(t1)
	li		t3,	14636
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14636
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14640
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_472
	li		t3,	14644
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14644
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14648
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14640
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14648
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14652
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14652
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1944(sp)
	lw		t0,	0(t1)
	li		t3,	14656
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14656
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14660
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_473
	li		t3,	14664
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14664
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14668
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14660
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14668
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14672
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14672
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1948(sp)
	lw		t0,	0(t1)
	li		t3,	14676
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14676
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14680
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_474
	li		t3,	14684
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14684
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14688
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14680
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14688
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14692
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14692
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1952(sp)
	lw		t0,	0(t1)
	li		t3,	14696
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14696
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14700
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_475
	li		t3,	14704
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14704
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14708
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14700
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14708
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14712
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14712
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1956(sp)
	lw		t0,	0(t1)
	li		t3,	14716
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14716
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14720
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_476
	li		t3,	14724
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14724
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14728
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14720
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14728
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14732
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14732
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1960(sp)
	lw		t0,	0(t1)
	li		t3,	14736
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14736
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14740
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_477
	li		t3,	14744
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14744
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14748
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14740
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14748
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14752
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14752
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1964(sp)
	lw		t0,	0(t1)
	li		t3,	14756
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14756
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14760
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_478
	li		t3,	14764
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14764
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14768
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14760
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14768
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14772
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14772
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1968(sp)
	lw		t0,	0(t1)
	li		t3,	14776
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14776
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14780
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_479
	li		t3,	14784
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14784
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14788
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14780
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14788
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14792
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14792
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1972(sp)
	lw		t0,	0(t1)
	li		t3,	14796
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14796
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14800
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_480
	li		t3,	14804
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14804
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14808
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14800
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14808
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14812
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14812
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1976(sp)
	lw		t0,	0(t1)
	li		t3,	14816
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14816
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14820
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_481
	li		t3,	14824
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14824
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14828
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14820
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14828
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14832
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14832
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1980(sp)
	lw		t0,	0(t1)
	li		t3,	14836
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14836
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14840
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_482
	li		t3,	14844
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14844
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14848
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14840
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14848
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14852
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14852
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1984(sp)
	lw		t0,	0(t1)
	li		t3,	14856
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14856
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14860
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_483
	li		t3,	14864
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14864
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14868
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14860
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14868
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14872
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14872
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1988(sp)
	lw		t0,	0(t1)
	li		t3,	14876
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14876
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14880
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_484
	li		t3,	14884
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14884
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14888
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14880
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14888
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14892
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14892
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1992(sp)
	lw		t0,	0(t1)
	li		t3,	14896
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14896
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14900
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_485
	li		t3,	14904
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14904
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14908
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14900
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14908
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14912
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14912
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	1996(sp)
	lw		t0,	0(t1)
	li		t3,	14916
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14916
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14920
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_486
	li		t3,	14924
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14924
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14928
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14920
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14928
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14932
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14932
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2000(sp)
	lw		t0,	0(t1)
	li		t3,	14936
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14936
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14940
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_487
	li		t3,	14944
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14944
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14948
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14940
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14948
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14952
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14952
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2004(sp)
	lw		t0,	0(t1)
	li		t3,	14956
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14956
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14960
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_488
	li		t3,	14964
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14964
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14968
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14960
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14968
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14972
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14972
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2008(sp)
	lw		t0,	0(t1)
	li		t3,	14976
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14976
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	14980
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_489
	li		t3,	14984
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14984
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	14988
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14980
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	14988
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	14992
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14992
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2012(sp)
	lw		t0,	0(t1)
	li		t3,	14996
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	14996
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15000
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_490
	li		t3,	15004
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15004
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15008
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15000
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15008
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15012
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15012
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2016(sp)
	lw		t0,	0(t1)
	li		t3,	15016
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15016
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15020
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_491
	li		t3,	15024
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15024
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15028
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15020
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15028
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15032
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15032
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2020(sp)
	lw		t0,	0(t1)
	li		t3,	15036
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15036
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15040
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_492
	li		t3,	15044
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15044
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15048
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15040
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15052
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2024(sp)
	lw		t0,	0(t1)
	li		t3,	15056
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15060
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_493
	li		t3,	15064
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15068
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15072
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2028(sp)
	lw		t0,	0(t1)
	li		t3,	15076
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15080
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_494
	li		t3,	15084
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15088
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15092
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2032(sp)
	lw		t0,	0(t1)
	li		t3,	15096
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15100
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_495
	li		t3,	15104
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15108
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15108
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15112
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15112
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2036(sp)
	lw		t0,	0(t1)
	li		t3,	15116
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15116
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15120
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_496
	li		t3,	15124
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15124
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15128
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15120
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15128
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15132
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15132
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2040(sp)
	lw		t0,	0(t1)
	li		t3,	15136
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15136
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15140
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_497
	li		t3,	15144
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15144
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15148
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15140
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15148
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15152
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15152
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	lw		t1,	2044(sp)
	lw		t0,	0(t1)
	li		t3,	15156
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15156
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15160
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_498
	li		t3,	15164
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15164
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15168
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15160
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15168
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15172
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15172
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2048
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15176
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15176
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15180
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_499
	li		t3,	15184
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15184
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15188
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15180
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15188
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15192
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15192
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2052
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15196
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15196
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15200
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_500
	li		t3,	15204
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15204
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15208
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15200
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15208
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15212
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15212
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2056
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15216
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15216
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15220
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_501
	li		t3,	15224
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15224
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15228
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15220
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15228
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15232
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15232
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2060
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15236
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15236
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15240
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_502
	li		t3,	15244
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15244
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15248
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15240
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15248
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15252
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15252
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2064
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15256
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15256
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15260
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_503
	li		t3,	15264
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15264
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15268
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15260
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15268
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15272
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15272
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2068
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15276
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15276
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15280
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_504
	li		t3,	15284
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15284
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15288
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15280
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15288
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15292
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15292
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2072
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15296
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15296
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15300
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_505
	li		t3,	15304
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15304
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15308
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15300
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15308
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15312
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15312
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2076
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15316
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15316
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15320
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_506
	li		t3,	15324
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15324
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15328
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15320
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15328
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15332
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15332
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2080
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15336
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15336
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15340
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_507
	li		t3,	15344
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15344
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15348
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15340
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15348
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15352
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15352
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2084
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15356
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15356
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15360
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_508
	li		t3,	15364
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15364
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15368
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15360
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15368
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15372
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15372
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2088
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15376
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15376
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15380
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_509
	li		t3,	15384
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15384
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15388
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15380
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15388
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15392
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15392
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2092
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15396
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15396
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15400
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_510
	li		t3,	15404
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15404
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15408
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15400
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15408
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15412
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15412
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2096
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15416
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15416
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15420
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_511
	li		t3,	15424
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15424
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15428
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15420
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15428
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15432
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15432
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2100
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15436
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15436
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15440
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_512
	li		t3,	15444
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15444
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15448
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15440
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15448
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15452
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15452
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	li		t3,	2104
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	15456
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15456
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	li		t3,	15460
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	la		t0,	const_string_513
	li		t3,	15464
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15464
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15468
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15460
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	15468
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	li		t3,	15472
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15472
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_print_1
	la		t0,	const_string_514
	li		t3,	15476
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15476
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	addi	t0,	t1,	0
	li		t3,	15480
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15480
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	mv		a0,	t1
	call	f_println_1
	li		t0,	0
	li		t3,	15484
	add		t3,	sp,	t3
	sw		t0,	0(t3)
	li		t3,	15484
	add		t3,	sp,	t3
	lw		t1,	0(t3)
	lw		t2,	1080(sp)
	sw		t1,	0(t2)
	j		.func_end_block_2
.normal_block_4:
	j		.func_end_block_2
	.size	main,	.-main

	.globl	_main_initial_1
	.p2align	2
	.type	_main_initial_1,@function
_main_initial_1:
.func_begin_block_3:
	addi	sp,	sp,	-60
	sw		s0,	0(sp)
	addi	s0,	sp,	60
	sw		ra,	4(sp)
	mv		t0,	s1
	sw		t0,	8(sp)
	mv		t0,	s2
	sw		t0,	12(sp)
	mv		t0,	s3
	sw		t0,	16(sp)
	mv		t0,	s4
	sw		t0,	20(sp)
	mv		t0,	s5
	sw		t0,	24(sp)
	mv		t0,	s6
	sw		t0,	28(sp)
	mv		t0,	s7
	sw		t0,	32(sp)
	mv		t0,	s8
	sw		t0,	36(sp)
	mv		t0,	s9
	sw		t0,	40(sp)
	mv		t0,	s10
	sw		t0,	44(sp)
	mv		t0,	s11
	sw		t0,	48(sp)
	j		.normal_block_5
.func_end_block_3:
	lw		t1,	8(sp)
	mv		s1,	t1
	lw		t1,	12(sp)
	mv		s2,	t1
	lw		t1,	16(sp)
	mv		s3,	t1
	lw		t1,	20(sp)
	mv		s4,	t1
	lw		t1,	24(sp)
	mv		s5,	t1
	lw		t1,	28(sp)
	mv		s6,	t1
	lw		t1,	32(sp)
	mv		s7,	t1
	lw		t1,	36(sp)
	mv		s8,	t1
	lw		t1,	40(sp)
	mv		s9,	t1
	lw		t1,	44(sp)
	mv		s10,	t1
	lw		t1,	48(sp)
	mv		s11,	t1
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	60
	ret
.normal_block_5:
	li		t0,	0
	sw		t0,	52(sp)
	la		t0,	count_addr_1
	sw		t0,	56(sp)
	lw		t1,	52(sp)
	lw		t2,	56(sp)
	sw		t1,	0(t2)
	j		.func_end_block_3
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.globl	count_addr_1
	.type	count_addr_1,@object
count_addr_1:
	.word	0
	.size	count_addr_1,	4

	.section	.rodata
	.type	const_string_1,@object
const_string_1:
	.string	" "
	.size	const_string_1,	3

	.type	const_string_2,@object
const_string_2:
	.string	" "
	.size	const_string_2,	3

	.type	const_string_3,@object
const_string_3:
	.string	" "
	.size	const_string_3,	3

	.type	const_string_4,@object
const_string_4:
	.string	" "
	.size	const_string_4,	3

	.type	const_string_5,@object
const_string_5:
	.string	" "
	.size	const_string_5,	3

	.type	const_string_6,@object
const_string_6:
	.string	" "
	.size	const_string_6,	3

	.type	const_string_7,@object
const_string_7:
	.string	" "
	.size	const_string_7,	3

	.type	const_string_8,@object
const_string_8:
	.string	" "
	.size	const_string_8,	3

	.type	const_string_9,@object
const_string_9:
	.string	" "
	.size	const_string_9,	3

	.type	const_string_10,@object
const_string_10:
	.string	" "
	.size	const_string_10,	3

	.type	const_string_11,@object
const_string_11:
	.string	" "
	.size	const_string_11,	3

	.type	const_string_12,@object
const_string_12:
	.string	" "
	.size	const_string_12,	3

	.type	const_string_13,@object
const_string_13:
	.string	" "
	.size	const_string_13,	3

	.type	const_string_14,@object
const_string_14:
	.string	" "
	.size	const_string_14,	3

	.type	const_string_15,@object
const_string_15:
	.string	" "
	.size	const_string_15,	3

	.type	const_string_16,@object
const_string_16:
	.string	" "
	.size	const_string_16,	3

	.type	const_string_17,@object
const_string_17:
	.string	" "
	.size	const_string_17,	3

	.type	const_string_18,@object
const_string_18:
	.string	" "
	.size	const_string_18,	3

	.type	const_string_19,@object
const_string_19:
	.string	" "
	.size	const_string_19,	3

	.type	const_string_20,@object
const_string_20:
	.string	" "
	.size	const_string_20,	3

	.type	const_string_21,@object
const_string_21:
	.string	" "
	.size	const_string_21,	3

	.type	const_string_22,@object
const_string_22:
	.string	" "
	.size	const_string_22,	3

	.type	const_string_23,@object
const_string_23:
	.string	" "
	.size	const_string_23,	3

	.type	const_string_24,@object
const_string_24:
	.string	" "
	.size	const_string_24,	3

	.type	const_string_25,@object
const_string_25:
	.string	" "
	.size	const_string_25,	3

	.type	const_string_26,@object
const_string_26:
	.string	" "
	.size	const_string_26,	3

	.type	const_string_27,@object
const_string_27:
	.string	" "
	.size	const_string_27,	3

	.type	const_string_28,@object
const_string_28:
	.string	" "
	.size	const_string_28,	3

	.type	const_string_29,@object
const_string_29:
	.string	" "
	.size	const_string_29,	3

	.type	const_string_30,@object
const_string_30:
	.string	" "
	.size	const_string_30,	3

	.type	const_string_31,@object
const_string_31:
	.string	" "
	.size	const_string_31,	3

	.type	const_string_32,@object
const_string_32:
	.string	" "
	.size	const_string_32,	3

	.type	const_string_33,@object
const_string_33:
	.string	" "
	.size	const_string_33,	3

	.type	const_string_34,@object
const_string_34:
	.string	" "
	.size	const_string_34,	3

	.type	const_string_35,@object
const_string_35:
	.string	" "
	.size	const_string_35,	3

	.type	const_string_36,@object
const_string_36:
	.string	" "
	.size	const_string_36,	3

	.type	const_string_37,@object
const_string_37:
	.string	" "
	.size	const_string_37,	3

	.type	const_string_38,@object
const_string_38:
	.string	" "
	.size	const_string_38,	3

	.type	const_string_39,@object
const_string_39:
	.string	" "
	.size	const_string_39,	3

	.type	const_string_40,@object
const_string_40:
	.string	" "
	.size	const_string_40,	3

	.type	const_string_41,@object
const_string_41:
	.string	" "
	.size	const_string_41,	3

	.type	const_string_42,@object
const_string_42:
	.string	" "
	.size	const_string_42,	3

	.type	const_string_43,@object
const_string_43:
	.string	" "
	.size	const_string_43,	3

	.type	const_string_44,@object
const_string_44:
	.string	" "
	.size	const_string_44,	3

	.type	const_string_45,@object
const_string_45:
	.string	" "
	.size	const_string_45,	3

	.type	const_string_46,@object
const_string_46:
	.string	" "
	.size	const_string_46,	3

	.type	const_string_47,@object
const_string_47:
	.string	" "
	.size	const_string_47,	3

	.type	const_string_48,@object
const_string_48:
	.string	" "
	.size	const_string_48,	3

	.type	const_string_49,@object
const_string_49:
	.string	" "
	.size	const_string_49,	3

	.type	const_string_50,@object
const_string_50:
	.string	" "
	.size	const_string_50,	3

	.type	const_string_51,@object
const_string_51:
	.string	" "
	.size	const_string_51,	3

	.type	const_string_52,@object
const_string_52:
	.string	" "
	.size	const_string_52,	3

	.type	const_string_53,@object
const_string_53:
	.string	" "
	.size	const_string_53,	3

	.type	const_string_54,@object
const_string_54:
	.string	" "
	.size	const_string_54,	3

	.type	const_string_55,@object
const_string_55:
	.string	" "
	.size	const_string_55,	3

	.type	const_string_56,@object
const_string_56:
	.string	" "
	.size	const_string_56,	3

	.type	const_string_57,@object
const_string_57:
	.string	" "
	.size	const_string_57,	3

	.type	const_string_58,@object
const_string_58:
	.string	" "
	.size	const_string_58,	3

	.type	const_string_59,@object
const_string_59:
	.string	" "
	.size	const_string_59,	3

	.type	const_string_60,@object
const_string_60:
	.string	" "
	.size	const_string_60,	3

	.type	const_string_61,@object
const_string_61:
	.string	" "
	.size	const_string_61,	3

	.type	const_string_62,@object
const_string_62:
	.string	" "
	.size	const_string_62,	3

	.type	const_string_63,@object
const_string_63:
	.string	" "
	.size	const_string_63,	3

	.type	const_string_64,@object
const_string_64:
	.string	" "
	.size	const_string_64,	3

	.type	const_string_65,@object
const_string_65:
	.string	" "
	.size	const_string_65,	3

	.type	const_string_66,@object
const_string_66:
	.string	" "
	.size	const_string_66,	3

	.type	const_string_67,@object
const_string_67:
	.string	" "
	.size	const_string_67,	3

	.type	const_string_68,@object
const_string_68:
	.string	" "
	.size	const_string_68,	3

	.type	const_string_69,@object
const_string_69:
	.string	" "
	.size	const_string_69,	3

	.type	const_string_70,@object
const_string_70:
	.string	" "
	.size	const_string_70,	3

	.type	const_string_71,@object
const_string_71:
	.string	" "
	.size	const_string_71,	3

	.type	const_string_72,@object
const_string_72:
	.string	" "
	.size	const_string_72,	3

	.type	const_string_73,@object
const_string_73:
	.string	" "
	.size	const_string_73,	3

	.type	const_string_74,@object
const_string_74:
	.string	" "
	.size	const_string_74,	3

	.type	const_string_75,@object
const_string_75:
	.string	" "
	.size	const_string_75,	3

	.type	const_string_76,@object
const_string_76:
	.string	" "
	.size	const_string_76,	3

	.type	const_string_77,@object
const_string_77:
	.string	" "
	.size	const_string_77,	3

	.type	const_string_78,@object
const_string_78:
	.string	" "
	.size	const_string_78,	3

	.type	const_string_79,@object
const_string_79:
	.string	" "
	.size	const_string_79,	3

	.type	const_string_80,@object
const_string_80:
	.string	" "
	.size	const_string_80,	3

	.type	const_string_81,@object
const_string_81:
	.string	" "
	.size	const_string_81,	3

	.type	const_string_82,@object
const_string_82:
	.string	" "
	.size	const_string_82,	3

	.type	const_string_83,@object
const_string_83:
	.string	" "
	.size	const_string_83,	3

	.type	const_string_84,@object
const_string_84:
	.string	" "
	.size	const_string_84,	3

	.type	const_string_85,@object
const_string_85:
	.string	" "
	.size	const_string_85,	3

	.type	const_string_86,@object
const_string_86:
	.string	" "
	.size	const_string_86,	3

	.type	const_string_87,@object
const_string_87:
	.string	" "
	.size	const_string_87,	3

	.type	const_string_88,@object
const_string_88:
	.string	" "
	.size	const_string_88,	3

	.type	const_string_89,@object
const_string_89:
	.string	" "
	.size	const_string_89,	3

	.type	const_string_90,@object
const_string_90:
	.string	" "
	.size	const_string_90,	3

	.type	const_string_91,@object
const_string_91:
	.string	" "
	.size	const_string_91,	3

	.type	const_string_92,@object
const_string_92:
	.string	" "
	.size	const_string_92,	3

	.type	const_string_93,@object
const_string_93:
	.string	" "
	.size	const_string_93,	3

	.type	const_string_94,@object
const_string_94:
	.string	" "
	.size	const_string_94,	3

	.type	const_string_95,@object
const_string_95:
	.string	" "
	.size	const_string_95,	3

	.type	const_string_96,@object
const_string_96:
	.string	" "
	.size	const_string_96,	3

	.type	const_string_97,@object
const_string_97:
	.string	" "
	.size	const_string_97,	3

	.type	const_string_98,@object
const_string_98:
	.string	" "
	.size	const_string_98,	3

	.type	const_string_99,@object
const_string_99:
	.string	" "
	.size	const_string_99,	3

	.type	const_string_100,@object
const_string_100:
	.string	" "
	.size	const_string_100,	3

	.type	const_string_101,@object
const_string_101:
	.string	" "
	.size	const_string_101,	3

	.type	const_string_102,@object
const_string_102:
	.string	" "
	.size	const_string_102,	3

	.type	const_string_103,@object
const_string_103:
	.string	" "
	.size	const_string_103,	3

	.type	const_string_104,@object
const_string_104:
	.string	" "
	.size	const_string_104,	3

	.type	const_string_105,@object
const_string_105:
	.string	" "
	.size	const_string_105,	3

	.type	const_string_106,@object
const_string_106:
	.string	" "
	.size	const_string_106,	3

	.type	const_string_107,@object
const_string_107:
	.string	" "
	.size	const_string_107,	3

	.type	const_string_108,@object
const_string_108:
	.string	" "
	.size	const_string_108,	3

	.type	const_string_109,@object
const_string_109:
	.string	" "
	.size	const_string_109,	3

	.type	const_string_110,@object
const_string_110:
	.string	" "
	.size	const_string_110,	3

	.type	const_string_111,@object
const_string_111:
	.string	" "
	.size	const_string_111,	3

	.type	const_string_112,@object
const_string_112:
	.string	" "
	.size	const_string_112,	3

	.type	const_string_113,@object
const_string_113:
	.string	" "
	.size	const_string_113,	3

	.type	const_string_114,@object
const_string_114:
	.string	" "
	.size	const_string_114,	3

	.type	const_string_115,@object
const_string_115:
	.string	" "
	.size	const_string_115,	3

	.type	const_string_116,@object
const_string_116:
	.string	" "
	.size	const_string_116,	3

	.type	const_string_117,@object
const_string_117:
	.string	" "
	.size	const_string_117,	3

	.type	const_string_118,@object
const_string_118:
	.string	" "
	.size	const_string_118,	3

	.type	const_string_119,@object
const_string_119:
	.string	" "
	.size	const_string_119,	3

	.type	const_string_120,@object
const_string_120:
	.string	" "
	.size	const_string_120,	3

	.type	const_string_121,@object
const_string_121:
	.string	" "
	.size	const_string_121,	3

	.type	const_string_122,@object
const_string_122:
	.string	" "
	.size	const_string_122,	3

	.type	const_string_123,@object
const_string_123:
	.string	" "
	.size	const_string_123,	3

	.type	const_string_124,@object
const_string_124:
	.string	" "
	.size	const_string_124,	3

	.type	const_string_125,@object
const_string_125:
	.string	" "
	.size	const_string_125,	3

	.type	const_string_126,@object
const_string_126:
	.string	" "
	.size	const_string_126,	3

	.type	const_string_127,@object
const_string_127:
	.string	" "
	.size	const_string_127,	3

	.type	const_string_128,@object
const_string_128:
	.string	" "
	.size	const_string_128,	3

	.type	const_string_129,@object
const_string_129:
	.string	" "
	.size	const_string_129,	3

	.type	const_string_130,@object
const_string_130:
	.string	" "
	.size	const_string_130,	3

	.type	const_string_131,@object
const_string_131:
	.string	" "
	.size	const_string_131,	3

	.type	const_string_132,@object
const_string_132:
	.string	" "
	.size	const_string_132,	3

	.type	const_string_133,@object
const_string_133:
	.string	" "
	.size	const_string_133,	3

	.type	const_string_134,@object
const_string_134:
	.string	" "
	.size	const_string_134,	3

	.type	const_string_135,@object
const_string_135:
	.string	" "
	.size	const_string_135,	3

	.type	const_string_136,@object
const_string_136:
	.string	" "
	.size	const_string_136,	3

	.type	const_string_137,@object
const_string_137:
	.string	" "
	.size	const_string_137,	3

	.type	const_string_138,@object
const_string_138:
	.string	" "
	.size	const_string_138,	3

	.type	const_string_139,@object
const_string_139:
	.string	" "
	.size	const_string_139,	3

	.type	const_string_140,@object
const_string_140:
	.string	" "
	.size	const_string_140,	3

	.type	const_string_141,@object
const_string_141:
	.string	" "
	.size	const_string_141,	3

	.type	const_string_142,@object
const_string_142:
	.string	" "
	.size	const_string_142,	3

	.type	const_string_143,@object
const_string_143:
	.string	" "
	.size	const_string_143,	3

	.type	const_string_144,@object
const_string_144:
	.string	" "
	.size	const_string_144,	3

	.type	const_string_145,@object
const_string_145:
	.string	" "
	.size	const_string_145,	3

	.type	const_string_146,@object
const_string_146:
	.string	" "
	.size	const_string_146,	3

	.type	const_string_147,@object
const_string_147:
	.string	" "
	.size	const_string_147,	3

	.type	const_string_148,@object
const_string_148:
	.string	" "
	.size	const_string_148,	3

	.type	const_string_149,@object
const_string_149:
	.string	" "
	.size	const_string_149,	3

	.type	const_string_150,@object
const_string_150:
	.string	" "
	.size	const_string_150,	3

	.type	const_string_151,@object
const_string_151:
	.string	" "
	.size	const_string_151,	3

	.type	const_string_152,@object
const_string_152:
	.string	" "
	.size	const_string_152,	3

	.type	const_string_153,@object
const_string_153:
	.string	" "
	.size	const_string_153,	3

	.type	const_string_154,@object
const_string_154:
	.string	" "
	.size	const_string_154,	3

	.type	const_string_155,@object
const_string_155:
	.string	" "
	.size	const_string_155,	3

	.type	const_string_156,@object
const_string_156:
	.string	" "
	.size	const_string_156,	3

	.type	const_string_157,@object
const_string_157:
	.string	" "
	.size	const_string_157,	3

	.type	const_string_158,@object
const_string_158:
	.string	" "
	.size	const_string_158,	3

	.type	const_string_159,@object
const_string_159:
	.string	" "
	.size	const_string_159,	3

	.type	const_string_160,@object
const_string_160:
	.string	" "
	.size	const_string_160,	3

	.type	const_string_161,@object
const_string_161:
	.string	" "
	.size	const_string_161,	3

	.type	const_string_162,@object
const_string_162:
	.string	" "
	.size	const_string_162,	3

	.type	const_string_163,@object
const_string_163:
	.string	" "
	.size	const_string_163,	3

	.type	const_string_164,@object
const_string_164:
	.string	" "
	.size	const_string_164,	3

	.type	const_string_165,@object
const_string_165:
	.string	" "
	.size	const_string_165,	3

	.type	const_string_166,@object
const_string_166:
	.string	" "
	.size	const_string_166,	3

	.type	const_string_167,@object
const_string_167:
	.string	" "
	.size	const_string_167,	3

	.type	const_string_168,@object
const_string_168:
	.string	" "
	.size	const_string_168,	3

	.type	const_string_169,@object
const_string_169:
	.string	" "
	.size	const_string_169,	3

	.type	const_string_170,@object
const_string_170:
	.string	" "
	.size	const_string_170,	3

	.type	const_string_171,@object
const_string_171:
	.string	" "
	.size	const_string_171,	3

	.type	const_string_172,@object
const_string_172:
	.string	" "
	.size	const_string_172,	3

	.type	const_string_173,@object
const_string_173:
	.string	" "
	.size	const_string_173,	3

	.type	const_string_174,@object
const_string_174:
	.string	" "
	.size	const_string_174,	3

	.type	const_string_175,@object
const_string_175:
	.string	" "
	.size	const_string_175,	3

	.type	const_string_176,@object
const_string_176:
	.string	" "
	.size	const_string_176,	3

	.type	const_string_177,@object
const_string_177:
	.string	" "
	.size	const_string_177,	3

	.type	const_string_178,@object
const_string_178:
	.string	" "
	.size	const_string_178,	3

	.type	const_string_179,@object
const_string_179:
	.string	" "
	.size	const_string_179,	3

	.type	const_string_180,@object
const_string_180:
	.string	" "
	.size	const_string_180,	3

	.type	const_string_181,@object
const_string_181:
	.string	" "
	.size	const_string_181,	3

	.type	const_string_182,@object
const_string_182:
	.string	" "
	.size	const_string_182,	3

	.type	const_string_183,@object
const_string_183:
	.string	" "
	.size	const_string_183,	3

	.type	const_string_184,@object
const_string_184:
	.string	" "
	.size	const_string_184,	3

	.type	const_string_185,@object
const_string_185:
	.string	" "
	.size	const_string_185,	3

	.type	const_string_186,@object
const_string_186:
	.string	" "
	.size	const_string_186,	3

	.type	const_string_187,@object
const_string_187:
	.string	" "
	.size	const_string_187,	3

	.type	const_string_188,@object
const_string_188:
	.string	" "
	.size	const_string_188,	3

	.type	const_string_189,@object
const_string_189:
	.string	" "
	.size	const_string_189,	3

	.type	const_string_190,@object
const_string_190:
	.string	" "
	.size	const_string_190,	3

	.type	const_string_191,@object
const_string_191:
	.string	" "
	.size	const_string_191,	3

	.type	const_string_192,@object
const_string_192:
	.string	" "
	.size	const_string_192,	3

	.type	const_string_193,@object
const_string_193:
	.string	" "
	.size	const_string_193,	3

	.type	const_string_194,@object
const_string_194:
	.string	" "
	.size	const_string_194,	3

	.type	const_string_195,@object
const_string_195:
	.string	" "
	.size	const_string_195,	3

	.type	const_string_196,@object
const_string_196:
	.string	" "
	.size	const_string_196,	3

	.type	const_string_197,@object
const_string_197:
	.string	" "
	.size	const_string_197,	3

	.type	const_string_198,@object
const_string_198:
	.string	" "
	.size	const_string_198,	3

	.type	const_string_199,@object
const_string_199:
	.string	" "
	.size	const_string_199,	3

	.type	const_string_200,@object
const_string_200:
	.string	" "
	.size	const_string_200,	3

	.type	const_string_201,@object
const_string_201:
	.string	" "
	.size	const_string_201,	3

	.type	const_string_202,@object
const_string_202:
	.string	" "
	.size	const_string_202,	3

	.type	const_string_203,@object
const_string_203:
	.string	" "
	.size	const_string_203,	3

	.type	const_string_204,@object
const_string_204:
	.string	" "
	.size	const_string_204,	3

	.type	const_string_205,@object
const_string_205:
	.string	" "
	.size	const_string_205,	3

	.type	const_string_206,@object
const_string_206:
	.string	" "
	.size	const_string_206,	3

	.type	const_string_207,@object
const_string_207:
	.string	" "
	.size	const_string_207,	3

	.type	const_string_208,@object
const_string_208:
	.string	" "
	.size	const_string_208,	3

	.type	const_string_209,@object
const_string_209:
	.string	" "
	.size	const_string_209,	3

	.type	const_string_210,@object
const_string_210:
	.string	" "
	.size	const_string_210,	3

	.type	const_string_211,@object
const_string_211:
	.string	" "
	.size	const_string_211,	3

	.type	const_string_212,@object
const_string_212:
	.string	" "
	.size	const_string_212,	3

	.type	const_string_213,@object
const_string_213:
	.string	" "
	.size	const_string_213,	3

	.type	const_string_214,@object
const_string_214:
	.string	" "
	.size	const_string_214,	3

	.type	const_string_215,@object
const_string_215:
	.string	" "
	.size	const_string_215,	3

	.type	const_string_216,@object
const_string_216:
	.string	" "
	.size	const_string_216,	3

	.type	const_string_217,@object
const_string_217:
	.string	" "
	.size	const_string_217,	3

	.type	const_string_218,@object
const_string_218:
	.string	" "
	.size	const_string_218,	3

	.type	const_string_219,@object
const_string_219:
	.string	" "
	.size	const_string_219,	3

	.type	const_string_220,@object
const_string_220:
	.string	" "
	.size	const_string_220,	3

	.type	const_string_221,@object
const_string_221:
	.string	" "
	.size	const_string_221,	3

	.type	const_string_222,@object
const_string_222:
	.string	" "
	.size	const_string_222,	3

	.type	const_string_223,@object
const_string_223:
	.string	" "
	.size	const_string_223,	3

	.type	const_string_224,@object
const_string_224:
	.string	" "
	.size	const_string_224,	3

	.type	const_string_225,@object
const_string_225:
	.string	" "
	.size	const_string_225,	3

	.type	const_string_226,@object
const_string_226:
	.string	" "
	.size	const_string_226,	3

	.type	const_string_227,@object
const_string_227:
	.string	" "
	.size	const_string_227,	3

	.type	const_string_228,@object
const_string_228:
	.string	" "
	.size	const_string_228,	3

	.type	const_string_229,@object
const_string_229:
	.string	" "
	.size	const_string_229,	3

	.type	const_string_230,@object
const_string_230:
	.string	" "
	.size	const_string_230,	3

	.type	const_string_231,@object
const_string_231:
	.string	" "
	.size	const_string_231,	3

	.type	const_string_232,@object
const_string_232:
	.string	" "
	.size	const_string_232,	3

	.type	const_string_233,@object
const_string_233:
	.string	" "
	.size	const_string_233,	3

	.type	const_string_234,@object
const_string_234:
	.string	" "
	.size	const_string_234,	3

	.type	const_string_235,@object
const_string_235:
	.string	" "
	.size	const_string_235,	3

	.type	const_string_236,@object
const_string_236:
	.string	" "
	.size	const_string_236,	3

	.type	const_string_237,@object
const_string_237:
	.string	" "
	.size	const_string_237,	3

	.type	const_string_238,@object
const_string_238:
	.string	" "
	.size	const_string_238,	3

	.type	const_string_239,@object
const_string_239:
	.string	" "
	.size	const_string_239,	3

	.type	const_string_240,@object
const_string_240:
	.string	" "
	.size	const_string_240,	3

	.type	const_string_241,@object
const_string_241:
	.string	" "
	.size	const_string_241,	3

	.type	const_string_242,@object
const_string_242:
	.string	" "
	.size	const_string_242,	3

	.type	const_string_243,@object
const_string_243:
	.string	" "
	.size	const_string_243,	3

	.type	const_string_244,@object
const_string_244:
	.string	" "
	.size	const_string_244,	3

	.type	const_string_245,@object
const_string_245:
	.string	" "
	.size	const_string_245,	3

	.type	const_string_246,@object
const_string_246:
	.string	" "
	.size	const_string_246,	3

	.type	const_string_247,@object
const_string_247:
	.string	" "
	.size	const_string_247,	3

	.type	const_string_248,@object
const_string_248:
	.string	" "
	.size	const_string_248,	3

	.type	const_string_249,@object
const_string_249:
	.string	" "
	.size	const_string_249,	3

	.type	const_string_250,@object
const_string_250:
	.string	" "
	.size	const_string_250,	3

	.type	const_string_251,@object
const_string_251:
	.string	" "
	.size	const_string_251,	3

	.type	const_string_252,@object
const_string_252:
	.string	" "
	.size	const_string_252,	3

	.type	const_string_253,@object
const_string_253:
	.string	" "
	.size	const_string_253,	3

	.type	const_string_254,@object
const_string_254:
	.string	" "
	.size	const_string_254,	3

	.type	const_string_255,@object
const_string_255:
	.string	" "
	.size	const_string_255,	3

	.type	const_string_256,@object
const_string_256:
	.string	" "
	.size	const_string_256,	3

	.type	const_string_257,@object
const_string_257:
	.string	""
	.size	const_string_257,	2

	.type	const_string_258,@object
const_string_258:
	.string	" "
	.size	const_string_258,	3

	.type	const_string_259,@object
const_string_259:
	.string	" "
	.size	const_string_259,	3

	.type	const_string_260,@object
const_string_260:
	.string	" "
	.size	const_string_260,	3

	.type	const_string_261,@object
const_string_261:
	.string	" "
	.size	const_string_261,	3

	.type	const_string_262,@object
const_string_262:
	.string	" "
	.size	const_string_262,	3

	.type	const_string_263,@object
const_string_263:
	.string	" "
	.size	const_string_263,	3

	.type	const_string_264,@object
const_string_264:
	.string	" "
	.size	const_string_264,	3

	.type	const_string_265,@object
const_string_265:
	.string	" "
	.size	const_string_265,	3

	.type	const_string_266,@object
const_string_266:
	.string	" "
	.size	const_string_266,	3

	.type	const_string_267,@object
const_string_267:
	.string	" "
	.size	const_string_267,	3

	.type	const_string_268,@object
const_string_268:
	.string	" "
	.size	const_string_268,	3

	.type	const_string_269,@object
const_string_269:
	.string	" "
	.size	const_string_269,	3

	.type	const_string_270,@object
const_string_270:
	.string	" "
	.size	const_string_270,	3

	.type	const_string_271,@object
const_string_271:
	.string	" "
	.size	const_string_271,	3

	.type	const_string_272,@object
const_string_272:
	.string	" "
	.size	const_string_272,	3

	.type	const_string_273,@object
const_string_273:
	.string	" "
	.size	const_string_273,	3

	.type	const_string_274,@object
const_string_274:
	.string	" "
	.size	const_string_274,	3

	.type	const_string_275,@object
const_string_275:
	.string	" "
	.size	const_string_275,	3

	.type	const_string_276,@object
const_string_276:
	.string	" "
	.size	const_string_276,	3

	.type	const_string_277,@object
const_string_277:
	.string	" "
	.size	const_string_277,	3

	.type	const_string_278,@object
const_string_278:
	.string	" "
	.size	const_string_278,	3

	.type	const_string_279,@object
const_string_279:
	.string	" "
	.size	const_string_279,	3

	.type	const_string_280,@object
const_string_280:
	.string	" "
	.size	const_string_280,	3

	.type	const_string_281,@object
const_string_281:
	.string	" "
	.size	const_string_281,	3

	.type	const_string_282,@object
const_string_282:
	.string	" "
	.size	const_string_282,	3

	.type	const_string_283,@object
const_string_283:
	.string	" "
	.size	const_string_283,	3

	.type	const_string_284,@object
const_string_284:
	.string	" "
	.size	const_string_284,	3

	.type	const_string_285,@object
const_string_285:
	.string	" "
	.size	const_string_285,	3

	.type	const_string_286,@object
const_string_286:
	.string	" "
	.size	const_string_286,	3

	.type	const_string_287,@object
const_string_287:
	.string	" "
	.size	const_string_287,	3

	.type	const_string_288,@object
const_string_288:
	.string	" "
	.size	const_string_288,	3

	.type	const_string_289,@object
const_string_289:
	.string	" "
	.size	const_string_289,	3

	.type	const_string_290,@object
const_string_290:
	.string	" "
	.size	const_string_290,	3

	.type	const_string_291,@object
const_string_291:
	.string	" "
	.size	const_string_291,	3

	.type	const_string_292,@object
const_string_292:
	.string	" "
	.size	const_string_292,	3

	.type	const_string_293,@object
const_string_293:
	.string	" "
	.size	const_string_293,	3

	.type	const_string_294,@object
const_string_294:
	.string	" "
	.size	const_string_294,	3

	.type	const_string_295,@object
const_string_295:
	.string	" "
	.size	const_string_295,	3

	.type	const_string_296,@object
const_string_296:
	.string	" "
	.size	const_string_296,	3

	.type	const_string_297,@object
const_string_297:
	.string	" "
	.size	const_string_297,	3

	.type	const_string_298,@object
const_string_298:
	.string	" "
	.size	const_string_298,	3

	.type	const_string_299,@object
const_string_299:
	.string	" "
	.size	const_string_299,	3

	.type	const_string_300,@object
const_string_300:
	.string	" "
	.size	const_string_300,	3

	.type	const_string_301,@object
const_string_301:
	.string	" "
	.size	const_string_301,	3

	.type	const_string_302,@object
const_string_302:
	.string	" "
	.size	const_string_302,	3

	.type	const_string_303,@object
const_string_303:
	.string	" "
	.size	const_string_303,	3

	.type	const_string_304,@object
const_string_304:
	.string	" "
	.size	const_string_304,	3

	.type	const_string_305,@object
const_string_305:
	.string	" "
	.size	const_string_305,	3

	.type	const_string_306,@object
const_string_306:
	.string	" "
	.size	const_string_306,	3

	.type	const_string_307,@object
const_string_307:
	.string	" "
	.size	const_string_307,	3

	.type	const_string_308,@object
const_string_308:
	.string	" "
	.size	const_string_308,	3

	.type	const_string_309,@object
const_string_309:
	.string	" "
	.size	const_string_309,	3

	.type	const_string_310,@object
const_string_310:
	.string	" "
	.size	const_string_310,	3

	.type	const_string_311,@object
const_string_311:
	.string	" "
	.size	const_string_311,	3

	.type	const_string_312,@object
const_string_312:
	.string	" "
	.size	const_string_312,	3

	.type	const_string_313,@object
const_string_313:
	.string	" "
	.size	const_string_313,	3

	.type	const_string_314,@object
const_string_314:
	.string	" "
	.size	const_string_314,	3

	.type	const_string_315,@object
const_string_315:
	.string	" "
	.size	const_string_315,	3

	.type	const_string_316,@object
const_string_316:
	.string	" "
	.size	const_string_316,	3

	.type	const_string_317,@object
const_string_317:
	.string	" "
	.size	const_string_317,	3

	.type	const_string_318,@object
const_string_318:
	.string	" "
	.size	const_string_318,	3

	.type	const_string_319,@object
const_string_319:
	.string	" "
	.size	const_string_319,	3

	.type	const_string_320,@object
const_string_320:
	.string	" "
	.size	const_string_320,	3

	.type	const_string_321,@object
const_string_321:
	.string	" "
	.size	const_string_321,	3

	.type	const_string_322,@object
const_string_322:
	.string	" "
	.size	const_string_322,	3

	.type	const_string_323,@object
const_string_323:
	.string	" "
	.size	const_string_323,	3

	.type	const_string_324,@object
const_string_324:
	.string	" "
	.size	const_string_324,	3

	.type	const_string_325,@object
const_string_325:
	.string	" "
	.size	const_string_325,	3

	.type	const_string_326,@object
const_string_326:
	.string	" "
	.size	const_string_326,	3

	.type	const_string_327,@object
const_string_327:
	.string	" "
	.size	const_string_327,	3

	.type	const_string_328,@object
const_string_328:
	.string	" "
	.size	const_string_328,	3

	.type	const_string_329,@object
const_string_329:
	.string	" "
	.size	const_string_329,	3

	.type	const_string_330,@object
const_string_330:
	.string	" "
	.size	const_string_330,	3

	.type	const_string_331,@object
const_string_331:
	.string	" "
	.size	const_string_331,	3

	.type	const_string_332,@object
const_string_332:
	.string	" "
	.size	const_string_332,	3

	.type	const_string_333,@object
const_string_333:
	.string	" "
	.size	const_string_333,	3

	.type	const_string_334,@object
const_string_334:
	.string	" "
	.size	const_string_334,	3

	.type	const_string_335,@object
const_string_335:
	.string	" "
	.size	const_string_335,	3

	.type	const_string_336,@object
const_string_336:
	.string	" "
	.size	const_string_336,	3

	.type	const_string_337,@object
const_string_337:
	.string	" "
	.size	const_string_337,	3

	.type	const_string_338,@object
const_string_338:
	.string	" "
	.size	const_string_338,	3

	.type	const_string_339,@object
const_string_339:
	.string	" "
	.size	const_string_339,	3

	.type	const_string_340,@object
const_string_340:
	.string	" "
	.size	const_string_340,	3

	.type	const_string_341,@object
const_string_341:
	.string	" "
	.size	const_string_341,	3

	.type	const_string_342,@object
const_string_342:
	.string	" "
	.size	const_string_342,	3

	.type	const_string_343,@object
const_string_343:
	.string	" "
	.size	const_string_343,	3

	.type	const_string_344,@object
const_string_344:
	.string	" "
	.size	const_string_344,	3

	.type	const_string_345,@object
const_string_345:
	.string	" "
	.size	const_string_345,	3

	.type	const_string_346,@object
const_string_346:
	.string	" "
	.size	const_string_346,	3

	.type	const_string_347,@object
const_string_347:
	.string	" "
	.size	const_string_347,	3

	.type	const_string_348,@object
const_string_348:
	.string	" "
	.size	const_string_348,	3

	.type	const_string_349,@object
const_string_349:
	.string	" "
	.size	const_string_349,	3

	.type	const_string_350,@object
const_string_350:
	.string	" "
	.size	const_string_350,	3

	.type	const_string_351,@object
const_string_351:
	.string	" "
	.size	const_string_351,	3

	.type	const_string_352,@object
const_string_352:
	.string	" "
	.size	const_string_352,	3

	.type	const_string_353,@object
const_string_353:
	.string	" "
	.size	const_string_353,	3

	.type	const_string_354,@object
const_string_354:
	.string	" "
	.size	const_string_354,	3

	.type	const_string_355,@object
const_string_355:
	.string	" "
	.size	const_string_355,	3

	.type	const_string_356,@object
const_string_356:
	.string	" "
	.size	const_string_356,	3

	.type	const_string_357,@object
const_string_357:
	.string	" "
	.size	const_string_357,	3

	.type	const_string_358,@object
const_string_358:
	.string	" "
	.size	const_string_358,	3

	.type	const_string_359,@object
const_string_359:
	.string	" "
	.size	const_string_359,	3

	.type	const_string_360,@object
const_string_360:
	.string	" "
	.size	const_string_360,	3

	.type	const_string_361,@object
const_string_361:
	.string	" "
	.size	const_string_361,	3

	.type	const_string_362,@object
const_string_362:
	.string	" "
	.size	const_string_362,	3

	.type	const_string_363,@object
const_string_363:
	.string	" "
	.size	const_string_363,	3

	.type	const_string_364,@object
const_string_364:
	.string	" "
	.size	const_string_364,	3

	.type	const_string_365,@object
const_string_365:
	.string	" "
	.size	const_string_365,	3

	.type	const_string_366,@object
const_string_366:
	.string	" "
	.size	const_string_366,	3

	.type	const_string_367,@object
const_string_367:
	.string	" "
	.size	const_string_367,	3

	.type	const_string_368,@object
const_string_368:
	.string	" "
	.size	const_string_368,	3

	.type	const_string_369,@object
const_string_369:
	.string	" "
	.size	const_string_369,	3

	.type	const_string_370,@object
const_string_370:
	.string	" "
	.size	const_string_370,	3

	.type	const_string_371,@object
const_string_371:
	.string	" "
	.size	const_string_371,	3

	.type	const_string_372,@object
const_string_372:
	.string	" "
	.size	const_string_372,	3

	.type	const_string_373,@object
const_string_373:
	.string	" "
	.size	const_string_373,	3

	.type	const_string_374,@object
const_string_374:
	.string	" "
	.size	const_string_374,	3

	.type	const_string_375,@object
const_string_375:
	.string	" "
	.size	const_string_375,	3

	.type	const_string_376,@object
const_string_376:
	.string	" "
	.size	const_string_376,	3

	.type	const_string_377,@object
const_string_377:
	.string	" "
	.size	const_string_377,	3

	.type	const_string_378,@object
const_string_378:
	.string	" "
	.size	const_string_378,	3

	.type	const_string_379,@object
const_string_379:
	.string	" "
	.size	const_string_379,	3

	.type	const_string_380,@object
const_string_380:
	.string	" "
	.size	const_string_380,	3

	.type	const_string_381,@object
const_string_381:
	.string	" "
	.size	const_string_381,	3

	.type	const_string_382,@object
const_string_382:
	.string	" "
	.size	const_string_382,	3

	.type	const_string_383,@object
const_string_383:
	.string	" "
	.size	const_string_383,	3

	.type	const_string_384,@object
const_string_384:
	.string	" "
	.size	const_string_384,	3

	.type	const_string_385,@object
const_string_385:
	.string	" "
	.size	const_string_385,	3

	.type	const_string_386,@object
const_string_386:
	.string	" "
	.size	const_string_386,	3

	.type	const_string_387,@object
const_string_387:
	.string	" "
	.size	const_string_387,	3

	.type	const_string_388,@object
const_string_388:
	.string	" "
	.size	const_string_388,	3

	.type	const_string_389,@object
const_string_389:
	.string	" "
	.size	const_string_389,	3

	.type	const_string_390,@object
const_string_390:
	.string	" "
	.size	const_string_390,	3

	.type	const_string_391,@object
const_string_391:
	.string	" "
	.size	const_string_391,	3

	.type	const_string_392,@object
const_string_392:
	.string	" "
	.size	const_string_392,	3

	.type	const_string_393,@object
const_string_393:
	.string	" "
	.size	const_string_393,	3

	.type	const_string_394,@object
const_string_394:
	.string	" "
	.size	const_string_394,	3

	.type	const_string_395,@object
const_string_395:
	.string	" "
	.size	const_string_395,	3

	.type	const_string_396,@object
const_string_396:
	.string	" "
	.size	const_string_396,	3

	.type	const_string_397,@object
const_string_397:
	.string	" "
	.size	const_string_397,	3

	.type	const_string_398,@object
const_string_398:
	.string	" "
	.size	const_string_398,	3

	.type	const_string_399,@object
const_string_399:
	.string	" "
	.size	const_string_399,	3

	.type	const_string_400,@object
const_string_400:
	.string	" "
	.size	const_string_400,	3

	.type	const_string_401,@object
const_string_401:
	.string	" "
	.size	const_string_401,	3

	.type	const_string_402,@object
const_string_402:
	.string	" "
	.size	const_string_402,	3

	.type	const_string_403,@object
const_string_403:
	.string	" "
	.size	const_string_403,	3

	.type	const_string_404,@object
const_string_404:
	.string	" "
	.size	const_string_404,	3

	.type	const_string_405,@object
const_string_405:
	.string	" "
	.size	const_string_405,	3

	.type	const_string_406,@object
const_string_406:
	.string	" "
	.size	const_string_406,	3

	.type	const_string_407,@object
const_string_407:
	.string	" "
	.size	const_string_407,	3

	.type	const_string_408,@object
const_string_408:
	.string	" "
	.size	const_string_408,	3

	.type	const_string_409,@object
const_string_409:
	.string	" "
	.size	const_string_409,	3

	.type	const_string_410,@object
const_string_410:
	.string	" "
	.size	const_string_410,	3

	.type	const_string_411,@object
const_string_411:
	.string	" "
	.size	const_string_411,	3

	.type	const_string_412,@object
const_string_412:
	.string	" "
	.size	const_string_412,	3

	.type	const_string_413,@object
const_string_413:
	.string	" "
	.size	const_string_413,	3

	.type	const_string_414,@object
const_string_414:
	.string	" "
	.size	const_string_414,	3

	.type	const_string_415,@object
const_string_415:
	.string	" "
	.size	const_string_415,	3

	.type	const_string_416,@object
const_string_416:
	.string	" "
	.size	const_string_416,	3

	.type	const_string_417,@object
const_string_417:
	.string	" "
	.size	const_string_417,	3

	.type	const_string_418,@object
const_string_418:
	.string	" "
	.size	const_string_418,	3

	.type	const_string_419,@object
const_string_419:
	.string	" "
	.size	const_string_419,	3

	.type	const_string_420,@object
const_string_420:
	.string	" "
	.size	const_string_420,	3

	.type	const_string_421,@object
const_string_421:
	.string	" "
	.size	const_string_421,	3

	.type	const_string_422,@object
const_string_422:
	.string	" "
	.size	const_string_422,	3

	.type	const_string_423,@object
const_string_423:
	.string	" "
	.size	const_string_423,	3

	.type	const_string_424,@object
const_string_424:
	.string	" "
	.size	const_string_424,	3

	.type	const_string_425,@object
const_string_425:
	.string	" "
	.size	const_string_425,	3

	.type	const_string_426,@object
const_string_426:
	.string	" "
	.size	const_string_426,	3

	.type	const_string_427,@object
const_string_427:
	.string	" "
	.size	const_string_427,	3

	.type	const_string_428,@object
const_string_428:
	.string	" "
	.size	const_string_428,	3

	.type	const_string_429,@object
const_string_429:
	.string	" "
	.size	const_string_429,	3

	.type	const_string_430,@object
const_string_430:
	.string	" "
	.size	const_string_430,	3

	.type	const_string_431,@object
const_string_431:
	.string	" "
	.size	const_string_431,	3

	.type	const_string_432,@object
const_string_432:
	.string	" "
	.size	const_string_432,	3

	.type	const_string_433,@object
const_string_433:
	.string	" "
	.size	const_string_433,	3

	.type	const_string_434,@object
const_string_434:
	.string	" "
	.size	const_string_434,	3

	.type	const_string_435,@object
const_string_435:
	.string	" "
	.size	const_string_435,	3

	.type	const_string_436,@object
const_string_436:
	.string	" "
	.size	const_string_436,	3

	.type	const_string_437,@object
const_string_437:
	.string	" "
	.size	const_string_437,	3

	.type	const_string_438,@object
const_string_438:
	.string	" "
	.size	const_string_438,	3

	.type	const_string_439,@object
const_string_439:
	.string	" "
	.size	const_string_439,	3

	.type	const_string_440,@object
const_string_440:
	.string	" "
	.size	const_string_440,	3

	.type	const_string_441,@object
const_string_441:
	.string	" "
	.size	const_string_441,	3

	.type	const_string_442,@object
const_string_442:
	.string	" "
	.size	const_string_442,	3

	.type	const_string_443,@object
const_string_443:
	.string	" "
	.size	const_string_443,	3

	.type	const_string_444,@object
const_string_444:
	.string	" "
	.size	const_string_444,	3

	.type	const_string_445,@object
const_string_445:
	.string	" "
	.size	const_string_445,	3

	.type	const_string_446,@object
const_string_446:
	.string	" "
	.size	const_string_446,	3

	.type	const_string_447,@object
const_string_447:
	.string	" "
	.size	const_string_447,	3

	.type	const_string_448,@object
const_string_448:
	.string	" "
	.size	const_string_448,	3

	.type	const_string_449,@object
const_string_449:
	.string	" "
	.size	const_string_449,	3

	.type	const_string_450,@object
const_string_450:
	.string	" "
	.size	const_string_450,	3

	.type	const_string_451,@object
const_string_451:
	.string	" "
	.size	const_string_451,	3

	.type	const_string_452,@object
const_string_452:
	.string	" "
	.size	const_string_452,	3

	.type	const_string_453,@object
const_string_453:
	.string	" "
	.size	const_string_453,	3

	.type	const_string_454,@object
const_string_454:
	.string	" "
	.size	const_string_454,	3

	.type	const_string_455,@object
const_string_455:
	.string	" "
	.size	const_string_455,	3

	.type	const_string_456,@object
const_string_456:
	.string	" "
	.size	const_string_456,	3

	.type	const_string_457,@object
const_string_457:
	.string	" "
	.size	const_string_457,	3

	.type	const_string_458,@object
const_string_458:
	.string	" "
	.size	const_string_458,	3

	.type	const_string_459,@object
const_string_459:
	.string	" "
	.size	const_string_459,	3

	.type	const_string_460,@object
const_string_460:
	.string	" "
	.size	const_string_460,	3

	.type	const_string_461,@object
const_string_461:
	.string	" "
	.size	const_string_461,	3

	.type	const_string_462,@object
const_string_462:
	.string	" "
	.size	const_string_462,	3

	.type	const_string_463,@object
const_string_463:
	.string	" "
	.size	const_string_463,	3

	.type	const_string_464,@object
const_string_464:
	.string	" "
	.size	const_string_464,	3

	.type	const_string_465,@object
const_string_465:
	.string	" "
	.size	const_string_465,	3

	.type	const_string_466,@object
const_string_466:
	.string	" "
	.size	const_string_466,	3

	.type	const_string_467,@object
const_string_467:
	.string	" "
	.size	const_string_467,	3

	.type	const_string_468,@object
const_string_468:
	.string	" "
	.size	const_string_468,	3

	.type	const_string_469,@object
const_string_469:
	.string	" "
	.size	const_string_469,	3

	.type	const_string_470,@object
const_string_470:
	.string	" "
	.size	const_string_470,	3

	.type	const_string_471,@object
const_string_471:
	.string	" "
	.size	const_string_471,	3

	.type	const_string_472,@object
const_string_472:
	.string	" "
	.size	const_string_472,	3

	.type	const_string_473,@object
const_string_473:
	.string	" "
	.size	const_string_473,	3

	.type	const_string_474,@object
const_string_474:
	.string	" "
	.size	const_string_474,	3

	.type	const_string_475,@object
const_string_475:
	.string	" "
	.size	const_string_475,	3

	.type	const_string_476,@object
const_string_476:
	.string	" "
	.size	const_string_476,	3

	.type	const_string_477,@object
const_string_477:
	.string	" "
	.size	const_string_477,	3

	.type	const_string_478,@object
const_string_478:
	.string	" "
	.size	const_string_478,	3

	.type	const_string_479,@object
const_string_479:
	.string	" "
	.size	const_string_479,	3

	.type	const_string_480,@object
const_string_480:
	.string	" "
	.size	const_string_480,	3

	.type	const_string_481,@object
const_string_481:
	.string	" "
	.size	const_string_481,	3

	.type	const_string_482,@object
const_string_482:
	.string	" "
	.size	const_string_482,	3

	.type	const_string_483,@object
const_string_483:
	.string	" "
	.size	const_string_483,	3

	.type	const_string_484,@object
const_string_484:
	.string	" "
	.size	const_string_484,	3

	.type	const_string_485,@object
const_string_485:
	.string	" "
	.size	const_string_485,	3

	.type	const_string_486,@object
const_string_486:
	.string	" "
	.size	const_string_486,	3

	.type	const_string_487,@object
const_string_487:
	.string	" "
	.size	const_string_487,	3

	.type	const_string_488,@object
const_string_488:
	.string	" "
	.size	const_string_488,	3

	.type	const_string_489,@object
const_string_489:
	.string	" "
	.size	const_string_489,	3

	.type	const_string_490,@object
const_string_490:
	.string	" "
	.size	const_string_490,	3

	.type	const_string_491,@object
const_string_491:
	.string	" "
	.size	const_string_491,	3

	.type	const_string_492,@object
const_string_492:
	.string	" "
	.size	const_string_492,	3

	.type	const_string_493,@object
const_string_493:
	.string	" "
	.size	const_string_493,	3

	.type	const_string_494,@object
const_string_494:
	.string	" "
	.size	const_string_494,	3

	.type	const_string_495,@object
const_string_495:
	.string	" "
	.size	const_string_495,	3

	.type	const_string_496,@object
const_string_496:
	.string	" "
	.size	const_string_496,	3

	.type	const_string_497,@object
const_string_497:
	.string	" "
	.size	const_string_497,	3

	.type	const_string_498,@object
const_string_498:
	.string	" "
	.size	const_string_498,	3

	.type	const_string_499,@object
const_string_499:
	.string	" "
	.size	const_string_499,	3

	.type	const_string_500,@object
const_string_500:
	.string	" "
	.size	const_string_500,	3

	.type	const_string_501,@object
const_string_501:
	.string	" "
	.size	const_string_501,	3

	.type	const_string_502,@object
const_string_502:
	.string	" "
	.size	const_string_502,	3

	.type	const_string_503,@object
const_string_503:
	.string	" "
	.size	const_string_503,	3

	.type	const_string_504,@object
const_string_504:
	.string	" "
	.size	const_string_504,	3

	.type	const_string_505,@object
const_string_505:
	.string	" "
	.size	const_string_505,	3

	.type	const_string_506,@object
const_string_506:
	.string	" "
	.size	const_string_506,	3

	.type	const_string_507,@object
const_string_507:
	.string	" "
	.size	const_string_507,	3

	.type	const_string_508,@object
const_string_508:
	.string	" "
	.size	const_string_508,	3

	.type	const_string_509,@object
const_string_509:
	.string	" "
	.size	const_string_509,	3

	.type	const_string_510,@object
const_string_510:
	.string	" "
	.size	const_string_510,	3

	.type	const_string_511,@object
const_string_511:
	.string	" "
	.size	const_string_511,	3

	.type	const_string_512,@object
const_string_512:
	.string	" "
	.size	const_string_512,	3

	.type	const_string_513,@object
const_string_513:
	.string	" "
	.size	const_string_513,	3

	.type	const_string_514,@object
const_string_514:
	.string	""
	.size	const_string_514,	2


