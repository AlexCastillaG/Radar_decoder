clc
clear all
close all

HEXDATA(1,:) = '287b898184846e6f7d715f4c7276604c56605d56545951514d444a484c421d3f302f32290117001923282d2c23001920001a150006120e00001014000d18191b0b13130a0000000801090100051619090e1010130b0a0d080f1b1301091200080d000b100f0b0b12100604000000031614161e072a332d15000f0e000b0e030c00050b0005040007080000000101000000030c0000000c17171007000000050f0c0008030000080a040302001416070f0e000d1314070008070105000000050b100f080910131410040405090d0a131509040404040c08041c1b0d0d0000160d0d1203000000020000000000000b121201030f000900000e0e0305080100040e00000c020010120400100700030000050b06000000060f060f000309022317241e11171b1c3438280b0e1a1812190e1618000c060610000203000b110600000f0b0000050000090000101e211f15060800000c07000f0c00161300110903040300080d000903000000000c0e0409050000000503000006030001171905040004000000050900000b10000d00090a1f393f381f2c16171a0e1017171000000001000c13090e10070000000e0e14130b10160000000000000f1100030a060b0d171c14030000000212160f0b03000000140d011810030000080400041b241e1f3300342c1e181c2b2e1d20263139350c252d43421a2c3e4e433753534d584c3f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000086188600000300cc0000015c49000000000000000000000000000000000000000000000d00450062006d00380003050029008600'
HEXDATA(2,:) = '0516231c141d12140b070f001318000011221e12201300161f18150f130f3507454a3f23101516100a00000500031000001411100711120c0014232318000003191f0f0315100104000e00050914101b1813141607131e150e1400000000101a1b1a162127261e13020e1b19110e1b19090000000006111a1f1b0700101e1a00000b0503131513030e1d17000000040a0b1b170b1e131a1b0e1b201e172020101616010f110c09001616090918001310040000090c181702000602000000000b0b090a0c050b000000080915130a0e0f000c09000f0d0d0d0e000700000014160a0b0e0e1200070c0a121108171a020c050c140a0f09000408040b0f00000000000000000000101c180e000e1413000c130800030f1300000b0011131305151b1a1914000000000612030b171010160013171c221f10000c160b0000070c020004050506131a1b160c12161210150d000b0d04080e0c000016170b0a0c0600081101000019180f091110000c1d160816130b04020e190412110c1109171d1a1a0f100e0511000415170d0f14181d150b141b0f000001001b1f16121000172522160800000a120f0d1b221c2223060e190e00001d251e1b1c211c0012130c080f14120f0017191c201e1608000a05181d1700171f1c170e0d0a12232b3f48421636091021211b130000081c26231a1a261717282723191b1c201b14161a1e1922240e2c33270f040000000000070d00000000000000000000000b150f2c232d16102e1a2011282126312621120000030000000000000000000000000d0000000d050400001c0002080010000f2d071a0400000c00000000000a000400000004000b000411250d10000e05190d11111d2b250b0500000002000000000d121f0c0c002419271a1e1102161e2f00141500000e13030000000000000000000000000000000038521711312720011c072d0b344e250c0a0e080e0000000000000000000000000000000000001200000c120014201500000000000000000c00000000000000081824211902000e42262b0f050e220000000000000000000000000000000c1703020000000000000018000002000d00000000000a000f0032000004031110413c1f030000060000000f0706000000090000000008010008130c0f010601392515050e000002100c30250912270d001e0004050919b54049111315001f0d00000000000000240d0f01000000000000000000002500001a000000026f5a00000028081d1500002c2c230b5d02230000001d0e561141022a00372a001b2a19280f000f00225f0522002205000016150d0e300a000000000000000c00000000000000000d060000000012000000000a000011005a000017000f0019100031060d000010000c00003906152800101212332000002309000010112b21001d00f930f9000022006e0000155153000000000000000000000000000000000000000000000000560075003a0021002221001e00f900'
HEXDATA(3,:) = '0c21240c0a191d1e1e1d132a251c1f00172112241d04241b0f12131220132d33223f3d312311130c1d261d0f1818050d0b111c17000f001616171a1910000114202826171d24140f150201000312120000111e19121b211900100e1113141313150517181d1c130400001318060b1a11040e0100100f0006000708180e0b000000091a0c0914191c1b150f060b040a051d21160400000000030000000a13110d0b0300000c161b1d1c19110b030e0f0e0e09000d15100000040600040e11111d1d1314150500030114160f10100b0d07030f160e00000013170a03020000090f0a000800070a01000b1302000a0d00000405060b08000000050017100611020c1d140000181a1a1c16120b06000c090b0c03040700041a160d0300000400000d130a12140b0000080d000000001012081017140c08101918131300070000000a060e0e00060108000003171e15090c161e14120e0c111d2018060007151511180e00080b0a0800000b151100050d1b120012130c0e000515201a0a00110c00000a191505190c0313181714030000000e1214170f00060a120f03070d0d0015140b000000030e130a1c241b0f08000d160b00040700000d0900121c1e1d152524150b10150a0010201b001116040005020f1818100404000217202c353d3f272f22221f1b1d1d09041d0723282a1e1b17272c1c22263022080512030800131b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fc30fc00002200cf0000163e40000000000000000000000000000000000000000000000000560075003a0021002221001d00fc00'
HEXDATA(4,:) = '00131610001e241b0f14161618081522261911180f1125231e241e0d242e163e46402c1315160e060b0100171e120b03001010001314081c1c161116000700110e130916201b0c110b000000000014140b0a00020300061812011114070e11081c1a06000000161f12011718000d130013100c00010004160e03000e1611000113151207100e0e18211b0b0e110700110a17211e001106110b16181a1a16171b1818120e1421241c05000000000805060c0b001415131a0a070005151205100600121b1c1b15080e11141c0c11151012050a000608050c0001000e0f130d00161d1a0700111300000009120d0000191d0f030000040007060100000000000a0f030a120000000200120f0008001012000000101309040f1416181b180800020a1b191616160e0a15120300070d100e141918100a00050d0e00010b0f1213140a000000040000000c0c0c0d121c160b01140b0913090000060d0f12100c001011151300001b2320140d040d1f1300050001151c181800101d1f17110e000000000000000900000309201f1300001321201b101c181006090b0f181b150c141b14050300171700171911010f14180600101b120d06000d211f1106141b1c1917211601080f030f0014110a101c1b1e221b1a201c1a18091d1c0000161e2e3f453e152923202421080e13020c00001d24292513060017240f100a0c170603100c4a3a3618282a16300a0a00090800030806000000000c00000000000000000000000000000000000600060c000d18001217201a0216000d081c0e09000000000000000100000000010e000c07170f141e37202c352b00110000000000000000000002000000000000000b00000000000000061511162a082a0f101a2c181d493a212f1510100415091211000000000000000000001e000307000004000000000012000b0c000000000c0000000005001400000800181b1e290f0f000e0413093303020008000000000000000000120002000000001228030d0009000000020b0000000000000d00011c13151c292d2c3a23300006141f00000000000000000000000000000000000000000000000500001a001500061f01391e09050003191518160f000001000002000009421a231c161321252d23170a370012080e15020011001500000000000000000300150042592e2e05230000230b00000000000025000022000000000000000009153325161f0806004a010000000000223f003523000500000000000000001b002015023a002900000303000024003e0e41003c0000000d00210000000000322a617108001d0c091b00000003380015000000000000000000000000000c280a33140b461400001000000004004a022e05000000000000000000003a0e321d21354c3a252e120030000000190200000008000000000aff30ff00002100cf0000163e40000000000000000000000000000000000000000000000000560075003a0021002121001d00ff00'
HEXDATA(5,:) = '181c1a0c040b012328150f1826222a332d2a2516111c2a261b0921111100222136330b0713040000061100041419130e000b1b1a132325190f161712001817001a221f11101a1919111124261900130e10111111060b0000000a06000612170710050d151304131b0c031315101210071b1c121c180c040f0d0009000e17160500000400141b100000000a0801000609000014170c0e1100000000050f04131812100900000305070b0d000213170600160e0711131c1206000506151300001312000003081520201313131518170b000c0a14131619160b00070700000000111a1b18131515120c000001030d02060001100f131209081317120a000210000f1e1e080405000e0b00000a171208000a141a170803131309111a211c140f161d1c1308000000040d0304000e18170c0800000f0e000f0d01060b00000000181d140b0007140505191817180a08121008081005030e0700000009080b09000108000b141211000600141914070205000000000a06010002020010171403000f1a0d0b000c0c1a200d1313000b0c0c13140c0206181a120f0f1203070a0014131917080912130813180a020000111507000200000c090d16140c04112425211a10000e0b0b141205181f1e12000000000c1b191d1f23211e1905110c0820212d0922000001091f1d000b031f1b202b2d312c1411001c19001322221200110a00041c0c00000400000006000000000000000100070017000008020000000014170e02001030194c3a3938301c0d0f000800001a0f160300000000000000000000000000000500040511001b0e1f0000000000000000000000000000040503130000060002080f0c051503001400000e2a0d0f1f090a000009001a322c2a340b22020c000802002f201820000000000005000000000000000300000000000000000000000a1700000625111405000000001f292420132424140600000b00050000161300000a120d27030005001f00000e000000000000000000000010001000000e30022000050f084321000001000005000000000000000000000000000e000d06040c0102001000000000010006001700000a08000d0b32382f3e461b3309211e081300200b0000000000000000000018320d050000000316271b213837020d3c4b222d2c020c0000000000000002000000000000000d2a020b2426140623002044163b065700000000000000280010000000001800060c130011002f3724001e000000000000000000000000000000000013000d00001b250022354434461f310c0c1400020000002a0700000000002500250049404988484b563c352923300e1000170000000000000000000500000023000d0000008d27101a1727000028000000000021010033000007002f1c000f13000c3b7a125d1f10140b0035000002310200002100cf0000163e40000000000000000000000000000000000000000000000000560075003a0021002121001d000200'
HEXDATA(6,:) = '1424271508000c00141402182127271d0004051414041220101c1d001a00183647422f0f00000000000010190211180e09101715132527110f1b1413040005180f0c100000021b211d0b000000080d14001012000505110e0017141d2118141505161c20231f120510161e20241c000000020000011111000102080d04000000000e1a1c16110f1417001e1d001c1a11181802060000000510100000000012160e08050f0c0e0c0b0f0d000006131618000b181400010d14151d1c0d000e110f1107000200000006071415110f0f010c151719181511000d1a1e1e1f1c13070e0b0a040014170a00001018180d000a0000020600010d1614110e0c06030f10151a130e0d04120f00060a0f181b090305080a05040010170f03151d190f141b20201614121013100d0900142227241c0a000b1611130e151c1f160c090000101a1a140d01121012191100000000161600131500100a031210060000030c0f0e000013090b1a0803020905000213221f1a17071a1706050b130f000009152015000f0909050105070c1b191916080e070004120702111d1c11150d1318141f1d1500071a141c161923191b100000120800000004070013110700000a1113171e1f22241d0003040f0d0e09231e1302000000090500181b18131715040b2b4348391b051e061a2318021623210e0c0e170b1e1e051123210c232a230c0a0e120e00000000000000000000000000000000000000020a0800000d1d072d262b2847512928401f0b1b1a1e2615000000000000000000000106000000001c0513202b080002090c001a0b0300111413000000000000000000000000000000000000000c0f423a22292627311f000f0000000000000000000000000000000000001c010b12211728172628324a2822192d1610040400000000000000000000000000000000001f17001a2f3d4a485541312b1e25110000000000000000000000000b000e00000016002e1d1b0446263604070201000000000000000000000000000000000000001b1c493855374f49542a453c0027080000000000000000000000000002170317231f29254b333d343e6011200000000000000000000000000000000000020e241d384017331e4b47301322000000000000090000000000000027000000000d3e40091a140f15243807070000000000000000000000000011000030001a4f240d4b65331a4135216b2859001800010000001000220000242437362b43343b3e2c284e2500241e15000000000000000000000000000000080011001900273a2a0b2a52293a2a3513000000000000000000000e00000a0709001e0a00210600000b1b0d1d000005000a0007000000000000000000000e0000172b1b003d285a484464202a131b650545001e2c0000011a0000004540382833250017142a05310500002100cf0000163e40000000000000000000000000000000000000000000000000560075003a0020002121001d000500'
HEXDATA(7,:) = '121e231f1e1d1a272b2812000f101b191026251e150f1d1b241518132720223245412f120e0b0e1615191010151404000000000a151715171a1a160d070a02000000010600070000091113080002090c000511140c061f241d0b000f000e0a000006030000000e1b231c0e1510001615110d0c0f17140e150e0f0f09101017170a080e100f00151b0d060e0a000d1a1d1600131f1f1d1e1c15000e0e091116080e080000000000081a1b0d0111120f1300040217140f080e110f151100000c080a000000000000100d011b1a040000000c17130f0c06010f0d070e0d070008100d0e0f0006000b1516100d0c000003101407040000110b0517120009121918141b1f1d11060000090e00120d00000f22261a0607060c160f000900191a000c16110f0c0005070000000000000000090e0015190c00030000000f1c1903000009110b0212180b05170904061a231800001b1d1200000712070a201f0b0c17160a101814121a03171c14000d13091c1c1011120e0f0f171d09181500110609110b0e151609000000080e00000000101f1f1307071a160c00141f1e0119211a00000d1e1f10000000000e180f0007110a05001300000011110a0c1919000000030e17001a10091212110c0a19161d0a19221d1909000910161e20121c203244462c20201e0e0b0f001e2613130b1f210f182a281a1c0c11151f242119101712001f1d1e2c1e1c26230e02001c000100000000000000000000000000000000001e1d1439302f403854323d5d4d16081d2b0500001200000000000000000000000000000000000016020b002b1e12110000000000000000000000000000000000000000000000002100120a171d1f2233282e3b241a122c2b0e000200000000000000000000000000000000010f00000e102a2f1d17142b0712192218051e1c00110c17000000000000002606271917262135321f271b151d1c29160b1700140000000000000000000000000000000001131b37262e040e0001000000000000000003000000000001000000061b000000031b190002020d0d0d1300000a1e000000000000000000000000000000382c140b000220241901020300000000000000000000000000190c1712000005001e100017000d323050151a0c0000000000000000000000000000000001001610352a0a290615461a00172d2422000900000000010100120e000000000a0003004700001b1a0900092806210100000000000000005c115100110d0018003400140819080021002c0000000000000000000000000000000000120d0a08200067240b0e0c00271a00111900000006002406000029003f1100042d2700002c0c10004115110029011d00260000000000002900002a0000100016000919002e17101815280000140700000004001d0000000000000008310800002100cf0000163e40000000000000000000000000000000000000000000000000560076003a0020002121001d000800'
HEXDATA(8,:) = '09140d0910030e192222261b0f202419210c0b231717241a150028262410272b3c372a271d0b00041c211d202016041a21221f140b09050000151c1717181f1b00191604000000080e121a1d180c0406101d1e09000e16190e081005031517002323171014121b18161914131301171c150c0f15140f151804000000000e0f0e0f050e1d1e11081b1f1f07090000040503000e161100110d000a08000611191a1814070710170f0011150009000011050d1b1a00050c00060f13171d1c11000d1200161c0f000710100f0f070a131313151a1a0c000c070b02000013160c00040e0f0600171a0d160e0d1a1407070700051a1f1600020318191609040a000600191f1c15171400110c0317080a0e0001130300050d0e0d0f201e040c1712171b150c00000103111114141217170f12000d150a00040e07000b1009081b1800010f13021822232627211813120c08181410110d090000031314000a0f040f0d12190f1210000500080017231b001004060f191900050400162625160a130f0e131119170b15160c00090000070a0915170009050001070000192521150b131c170004140c000e120b03030f160c05141514151a1e1d0413050b1b171619120f11031e2216190e1a1c010a0f142124231d120b00000b121412001f312a21343b2b170012102112162930281a0a050012002210001c2b1c06000d15121205040007223626200b1e150925111b20130a13001b200f05060000000000000000000008000000000405250300120d121410110000111b0714000000000000000001000b0000000000000000000000000d000c000c10001e031300000000090100000600110000000000050003280f15390002241526413235401b381a2c060e130a120f0002000000000000000000000000000d0e181c160415131a1518000e1b0b0000000000000000000000000000000000000001210a20001b0e1c041114080e250b03000000000000000000000400000000001700162717130222100026001d06313013000a0500000600032600000000052800080f21352b372c0e061e040b0d0b31010000000000000000000000000000000e00250014320b10001600130b290c36001d00000000000000070013000c20001825181f211722000002000f2a4e053a0000001a0000001000060700000000001b3a1e1100000000160c00000010131200340300091906060000002a0000000000000900002200000000000000000000322f1400040c0c1a12001a00002808270000003a00481e00000000000f27050610262800121c155a002800100219000d00000000000000000000061a15102400220015000014000a0d0000000002210000000064000d0000200e2800000000000000000000000000000c14000200000003004500020000000700000025000b310b00002100cf0000163e40000000000000000000000000000000000000000000000000560076003a0020002121001e000b00'

for k=1:8
    cont = 0;
    for i=1:2:1022 % 2150
        cont = cont + 1;
        DATA(k,cont) =  hex2dec( strcat(HEXDATA(k,i), HEXDATA(k,i+1)) );
    end
end


x = [0:511-1];


figure
hold on

for k=1:8
    plot( x , DATA(k,:))
end
%axis([0 511 0 80])

hold off