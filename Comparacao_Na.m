%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Compara o tempo (em segundos) entre NCBI e Uniprot
%% ao passar a prote�na do canal
%%
%% @Autor: Anderson Ferreira Sepulveda
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

arquivo1 = 'NCBI-Na+.xlsx';
arquivo2 = 'Uniprot - Na+.xlsx';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Pega os valores de de tempo do arquivo1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n_dom_00 = xlsread(arquivo1,'G1001:G1006');
n_dom_01 = xlsread(arquivo1,'G1101:G1106');
n_dom_02 = xlsread(arquivo1,'G1201:G1202');
n_dom_03 = xlsread(arquivo1,'G1210:G1211');
n_dom_04 = xlsread(arquivo1,'G1227:G1228');
n_dom_05 = xlsread(arquivo1,'G1258:G1259');
n_dom_06 = xlsread(arquivo1,'G1301:G1305');
n_dom_07 = xlsread(arquivo1,'G1401:G1406');
n_dom_08 = xlsread(arquivo1,'G1501:G1506');
n_dom_09 = xlsread(arquivo1,'G1601:G1606');
n_dom_10 = xlsread(arquivo1,'G1701:G1707');
n_dom_11 = xlsread(arquivo1,'G1801:G1806');
n_dom_12 = xlsread(arquivo1,'G1901:G1906');
n_dom_13 = xlsread(arquivo1,'G2:G7');
n_dom_14 = xlsread(arquivo1,'G63:G68');
n_dom_15 = xlsread(arquivo1,'G103:G108');
n_dom_16 = xlsread(arquivo1,'G203:G208');
n_dom_17 = xlsread(arquivo1,'G301:G306');
n_dom_18 = xlsread(arquivo1,'G401:G408');
n_dom_19 = xlsread(arquivo1,'G501:G506');
n_dom_20 = xlsread(arquivo1,'G601:G608');
n_dom_21 = xlsread(arquivo1,'G701:G708');
n_dom_22 = xlsread(arquivo1,'G801:G808');
n_dom_23 = xlsread(arquivo1,'G901:G908');

n_seg_00 = xlsread(arquivo1,'I1001:I1006');
n_seg_01 = xlsread(arquivo1,'I1101:I1106');
n_seg_02 = xlsread(arquivo1,'I1201:I1202');
n_seg_03 = xlsread(arquivo1,'I1210:I1211');
n_seg_04 = xlsread(arquivo1,'I1227:I1228');
n_seg_05 = xlsread(arquivo1,'I1258:I1259');
n_seg_06 = xlsread(arquivo1,'I1301:I1305');
n_seg_07 = xlsread(arquivo1,'I1401:I1407');
n_seg_08 = xlsread(arquivo1,'I1501:I1508');
n_seg_09 = xlsread(arquivo1,'I1601:I1605');
n_seg_10 = xlsread(arquivo1,'I1701:I1705');
n_seg_11 = xlsread(arquivo1,'I1801:I1805');
n_seg_12 = xlsread(arquivo1,'I1901:I1906');
n_seg_13 = xlsread(arquivo1,'I2:I6');
n_seg_14 = xlsread(arquivo1,'I63:I68');
n_seg_15 = xlsread(arquivo1,'I103:I108');
n_seg_16 = xlsread(arquivo1,'I203:I208');
n_seg_17 = xlsread(arquivo1,'I301:I306');
n_seg_18 = xlsread(arquivo1,'I401:I406');
n_seg_19 = xlsread(arquivo1,'I501:I506');
n_seg_20 = xlsread(arquivo1,'I601:I606');
n_seg_21 = xlsread(arquivo1,'I701:I706');
n_seg_22 = xlsread(arquivo1,'I801:I806');
n_seg_23 = xlsread(arquivo1,'I901:I906');

n_ter_00 = xlsread(arquivo1,'K1001:K1006');
n_ter_01 = xlsread(arquivo1,'K1101:K1106');
n_ter_02 = xlsread(arquivo1,'K1201:K1202');
n_ter_03 = xlsread(arquivo1,'K1210:K1211');
n_ter_04 = xlsread(arquivo1,'K1227:K1228');
n_ter_05 = xlsread(arquivo1,'K1258:K1259');
n_ter_06 = xlsread(arquivo1,'K1301:K1305');
n_ter_07 = xlsread(arquivo1,'K1401:K1405');
n_ter_08 = xlsread(arquivo1,'K1501:K1506');
n_ter_09 = xlsread(arquivo1,'K1601:K1608');
n_ter_10 = xlsread(arquivo1,'K1701:K1704');
n_ter_11 = xlsread(arquivo1,'K1801:K1806');
n_ter_12 = xlsread(arquivo1,'K1901:K1904');
n_ter_13 = xlsread(arquivo1,'K2:K6');
n_ter_14 = xlsread(arquivo1,'K63:K68');
n_ter_15 = xlsread(arquivo1,'K103:K108');
n_ter_16 = xlsread(arquivo1,'K203:K208');
n_ter_17 = xlsread(arquivo1,'K301:K306');
n_ter_18 = xlsread(arquivo1,'K401:K406');
n_ter_19 = xlsread(arquivo1,'K501:K506');
n_ter_20 = xlsread(arquivo1,'K601:K606');
n_ter_21 = xlsread(arquivo1,'K701:K706');
n_ter_22 = xlsread(arquivo1,'K801:K806');
n_ter_23 = xlsread(arquivo1,'K901:K906');

n_qua_00 = xlsread(arquivo1,'M1001:M1006');
n_qua_01 = xlsread(arquivo1,'M1101:M1106');
n_qua_02 = xlsread(arquivo1,'M1201:M1202');
n_qua_03 = xlsread(arquivo1,'M1210:M1211');
n_qua_04 = xlsread(arquivo1,'M1227:M1228');
n_qua_05 = xlsread(arquivo1,'M1258:M1259');
n_qua_06 = xlsread(arquivo1,'M1301:M1305');
n_qua_07 = xlsread(arquivo1,'M1401:M1405');
n_qua_08 = xlsread(arquivo1,'M1501:M1506');
n_qua_09 = xlsread(arquivo1,'M1601:M1606');
n_qua_10 = xlsread(arquivo1,'M1701:M1706');
n_qua_11 = xlsread(arquivo1,'M1801:M1806');
n_qua_12 = xlsread(arquivo1,'M1901:M1906');
n_qua_13 = xlsread(arquivo1,'M2:M7');
n_qua_14 = xlsread(arquivo1,'M63:M71');
n_qua_15 = xlsread(arquivo1,'M103:M108');
n_qua_16 = xlsread(arquivo1,'M203:M208');
n_qua_17 = xlsread(arquivo1,'M301:M306');
n_qua_18 = xlsread(arquivo1,'M401:M406');
n_qua_19 = xlsread(arquivo1,'M501:M508');
n_qua_20 = xlsread(arquivo1,'M601:M606');
n_qua_21 = xlsread(arquivo1,'M701:M708');
n_qua_22 = xlsread(arquivo1,'M801:M806');
n_qua_23 = xlsread(arquivo1,'M901:M906');

n_qui_00 = xlsread(arquivo1,'A1001:A1006');
n_qui_01 = xlsread(arquivo1,'A1101:A1106');
n_qui_02 = xlsread(arquivo1,'A1201:A1202');
n_qui_03 = xlsread(arquivo1,'A1210:A1211');
n_qui_04 = xlsread(arquivo1,'A1227:A1228');
n_qui_05 = xlsread(arquivo1,'A1258:A1259');
n_qui_06 = xlsread(arquivo1,'A1301:A1305');
n_qui_07 = xlsread(arquivo1,'A1401:A1406');
n_qui_08 = xlsread(arquivo1,'A1501:A1506');
n_qui_09 = xlsread(arquivo1,'A1601:A1606');
n_qui_10 = xlsread(arquivo1,'A1701:A1706');
n_qui_11 = xlsread(arquivo1,'A1801:A1806');
n_qui_12 = xlsread(arquivo1,'A1901:A1906');
n_qui_13 = xlsread(arquivo1,'A2:A7');
n_qui_14 = xlsread(arquivo1,'A63:A68');
n_qui_15 = xlsread(arquivo1,'A103:A108');
n_qui_16 = xlsread(arquivo1,'A203:A208');
n_qui_17 = xlsread(arquivo1,'A301:A306');
n_qui_18 = xlsread(arquivo1,'A401:A406');
n_qui_19 = xlsread(arquivo1,'A501:A506');
n_qui_20 = xlsread(arquivo1,'A601:A606');
n_qui_21 = xlsread(arquivo1,'A701:A706');
n_qui_22 = xlsread(arquivo1,'A801:A806');
n_qui_23 = xlsread(arquivo1,'A901:A907');

n_sex_00 = xlsread(arquivo1,'C1001:C1006');
n_sex_01 = xlsread(arquivo1,'C1101:C1106');
n_sex_02 = xlsread(arquivo1,'C1201:C1202');
n_sex_03 = xlsread(arquivo1,'C1210:C1211');
n_sex_04 = xlsread(arquivo1,'C1227:C1228');
n_sex_05 = xlsread(arquivo1,'C1258:C1259');
n_sex_06 = xlsread(arquivo1,'C1301:C1305');
n_sex_07 = xlsread(arquivo1,'C1401:C1406');
n_sex_08 = xlsread(arquivo1,'C1501:C1506');
n_sex_09 = xlsread(arquivo1,'C1601:C1606');
n_sex_10 = xlsread(arquivo1,'C1701:C1706');
n_sex_11 = xlsread(arquivo1,'C1801:C1806');
n_sex_12 = xlsread(arquivo1,'C1901:C1909');
n_sex_13 = xlsread(arquivo1,'C2:C7');
n_sex_14 = xlsread(arquivo1,'C63:C68');
n_sex_15 = xlsread(arquivo1,'C103:C108');
n_sex_16 = xlsread(arquivo1,'C203:C208');
n_sex_17 = xlsread(arquivo1,'C301:C306');
n_sex_18 = xlsread(arquivo1,'C401:C406');
n_sex_19 = xlsread(arquivo1,'C501:C506');
n_sex_20 = xlsread(arquivo1,'C601:C606');
n_sex_21 = xlsread(arquivo1,'C701:C706');
n_sex_22 = xlsread(arquivo1,'C801:C806');
n_sex_23 = xlsread(arquivo1,'C901:C906');

n_sab_00 = xlsread(arquivo1,'E1001:E1006');
n_sab_01 = xlsread(arquivo1,'E1101:E1106');
n_sab_02 = xlsread(arquivo1,'E1201:E1202');
n_sab_03 = xlsread(arquivo1,'E1210:E1211');
n_sab_04 = xlsread(arquivo1,'E1227:E1228');
n_sab_05 = xlsread(arquivo1,'E1258:E1259');
n_sab_06 = xlsread(arquivo1,'E1301:E1305');
n_sab_07 = xlsread(arquivo1,'E1401:E1406');
n_sab_08 = xlsread(arquivo1,'E1501:E1510');
n_sab_09 = xlsread(arquivo1,'E1601:E1606');
n_sab_10 = xlsread(arquivo1,'E1701:E1706');
n_sab_11 = xlsread(arquivo1,'E1801:E1806');
n_sab_12 = xlsread(arquivo1,'E1901:E1906');
n_sab_13 = xlsread(arquivo1,'E2:E10');
n_sab_14 = xlsread(arquivo1,'E63:E68');
n_sab_15 = xlsread(arquivo1,'E103:E108');
n_sab_16 = xlsread(arquivo1,'E203:E213');
n_sab_17 = xlsread(arquivo1,'E301:E309');
n_sab_18 = xlsread(arquivo1,'E401:E408');
n_sab_19 = xlsread(arquivo1,'E501:E508');
n_sab_20 = xlsread(arquivo1,'E601:E611');
n_sab_21 = xlsread(arquivo1,'E701:E706');
n_sab_22 = xlsread(arquivo1,'E801:E806');
n_sab_23 = xlsread(arquivo1,'E901:E906');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Pega os valores de tempo do arquivo2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
u_dom_00 = xlsread(arquivo2,'G1101:G1106');
u_dom_01 = xlsread(arquivo2,'G1201:G1206');
u_dom_02 = xlsread(arquivo2,'G1301:G1305');
u_dom_03 = xlsread(arquivo2,'G1312:G1313');
u_dom_04 = xlsread(arquivo2,'G1320:G1321');
u_dom_05 = xlsread(arquivo2,'G1331:G1332');
u_dom_06 = xlsread(arquivo2,'G1401:G1405');
u_dom_07 = xlsread(arquivo2,'G1501:G1505');
u_dom_08 = xlsread(arquivo2,'G1601:G1606');
u_dom_09 = xlsread(arquivo2,'G1701:G1706');
u_dom_10 = xlsread(arquivo2,'G1801:G1808');
u_dom_11 = xlsread(arquivo2,'G1901:G1906');
u_dom_12 = xlsread(arquivo2,'G2001:G2006');
u_dom_13 = xlsread(arquivo2,'G2:G7');
u_dom_14 = xlsread(arquivo2,'G103:G108');
u_dom_15 = xlsread(arquivo2,'G202:G207');
u_dom_16 = xlsread(arquivo2,'G301:G306');
u_dom_17 = xlsread(arquivo2,'G402:G407');
u_dom_18 = xlsread(arquivo2,'G502:G508');
u_dom_19 = xlsread(arquivo2,'G601:G606');
u_dom_20 = xlsread(arquivo2,'G701:G708');
u_dom_21 = xlsread(arquivo2,'G801:G806');
u_dom_22 = xlsread(arquivo2,'G901:G908');
u_dom_23 = xlsread(arquivo2,'G1001:G1007');

u_seg_00 = xlsread(arquivo2,'I1101:I1106');
u_seg_01 = xlsread(arquivo2,'I1201:I1206');
u_seg_02 = xlsread(arquivo2,'I1301:I1305');
u_seg_03 = xlsread(arquivo2,'I1312:I1313');
u_seg_04 = xlsread(arquivo2,'I1320:I1321');
u_seg_05 = xlsread(arquivo2,'I1331:I1332');
u_seg_06 = xlsread(arquivo2,'I1401:I1405');
u_seg_07 = xlsread(arquivo2,'I1501:I1505');
u_seg_08 = xlsread(arquivo2,'I1601:I1606');
u_seg_09 = xlsread(arquivo2,'I1701:I1706');
u_seg_10 = xlsread(arquivo2,'I1801:I1804');
u_seg_11 = xlsread(arquivo2,'I1901:I1905');
u_seg_12 = xlsread(arquivo2,'I2001:I2005');
u_seg_13 = xlsread(arquivo2,'I2:I7');
u_seg_14 = xlsread(arquivo2,'I103:I108');
u_seg_15 = xlsread(arquivo2,'I202:I207');
u_seg_16 = xlsread(arquivo2,'I301:I304');
u_seg_17 = xlsread(arquivo2,'I402:I407');
u_seg_18 = xlsread(arquivo2,'I502:I506');
u_seg_19 = xlsread(arquivo2,'I601:I606');
u_seg_20 = xlsread(arquivo2,'I701:I706');
u_seg_21 = xlsread(arquivo2,'I801:I806');
u_seg_22 = xlsread(arquivo2,'I901:I904');
u_seg_23 = xlsread(arquivo2,'I1001:I1006');

u_ter_00 = xlsread(arquivo2,'K1101:K1106');
u_ter_01 = xlsread(arquivo2,'K1201:K1206');
u_ter_02 = xlsread(arquivo2,'K1301:K1305');
u_ter_03 = xlsread(arquivo2,'K1312:K1313');
u_ter_04 = xlsread(arquivo2,'K1320:K1321');
u_ter_05 = xlsread(arquivo2,'K1331:K1332');
u_ter_06 = xlsread(arquivo2,'K1401:K1406');
u_ter_07 = xlsread(arquivo2,'K1501:K1506');
u_ter_08 = xlsread(arquivo2,'K1601:K1606');
u_ter_09 = xlsread(arquivo2,'K1701:K1706');
u_ter_10 = xlsread(arquivo2,'K1801:K1804');
u_ter_11 = xlsread(arquivo2,'K1901:K1906');
u_ter_12 = xlsread(arquivo2,'K2001:K2005');
u_ter_13 = xlsread(arquivo2,'K2:K7');
u_ter_14 = xlsread(arquivo2,'K103:K108');
u_ter_15 = xlsread(arquivo2,'K202:K207');
u_ter_16 = xlsread(arquivo2,'K301:K306');
u_ter_17 = xlsread(arquivo2,'K402:K406');
u_ter_18 = xlsread(arquivo2,'K502:K507');
u_ter_19 = xlsread(arquivo2,'K601:K606');
u_ter_20 = xlsread(arquivo2,'K701:K705');
u_ter_21 = xlsread(arquivo2,'K801:K805');
u_ter_22 = xlsread(arquivo2,'K901:K906');
u_ter_23 = xlsread(arquivo2,'K1001:K1006');

u_qua_00 = xlsread(arquivo2,'M1101:M1106');
u_qua_01 = xlsread(arquivo2,'M1201:M1206');
u_qua_02 = xlsread(arquivo2,'M1301:M1305');
u_qua_03 = xlsread(arquivo2,'M1312:M1313');
u_qua_04 = xlsread(arquivo2,'M1320:M1321');
u_qua_05 = xlsread(arquivo2,'M1331:M1332');
u_qua_06 = xlsread(arquivo2,'M1401:M1404');
u_qua_07 = xlsread(arquivo2,'M1501:M1505');
u_qua_08 = xlsread(arquivo2,'M1601:M1605');
u_qua_09 = xlsread(arquivo2,'M1701:M1706');
u_qua_10 = xlsread(arquivo2,'M1801:M1806');
u_qua_11 = xlsread(arquivo2,'M1901:M1906');
u_qua_12 = xlsread(arquivo2,'M2001:M2006');
u_qua_13 = xlsread(arquivo2,'M2:M7');
u_qua_14 = xlsread(arquivo2,'M103:M108');
u_qua_15 = xlsread(arquivo2,'M202:M207');
u_qua_16 = xlsread(arquivo2,'M301:M306');
u_qua_17 = xlsread(arquivo2,'M402:M406');
u_qua_18 = xlsread(arquivo2,'M502:M507');
u_qua_19 = xlsread(arquivo2,'M601:M606');
u_qua_20 = xlsread(arquivo2,'M701:M708');
u_qua_21 = xlsread(arquivo2,'M801:M808');
u_qua_22 = xlsread(arquivo2,'M901:M906');
u_qua_23 = xlsread(arquivo2,'M1001:M1006');

u_qui_00 = xlsread(arquivo2,'A1101:A1105');
u_qui_01 = xlsread(arquivo2,'A1201:A1205');
u_qui_02 = xlsread(arquivo2,'A1301:A1305');
u_qui_03 = xlsread(arquivo2,'A1312:A1313');
u_qui_04 = xlsread(arquivo2,'A1320:A1321');
u_qui_05 = xlsread(arquivo2,'A1331:A1332');
u_qui_06 = xlsread(arquivo2,'A1401:A1404');
u_qui_07 = xlsread(arquivo2,'A1501:A1506');
u_qui_08 = xlsread(arquivo2,'A1601:A1606');
u_qui_09 = xlsread(arquivo2,'A1701:A1706');
u_qui_10 = xlsread(arquivo2,'A1801:A1806');
u_qui_11 = xlsread(arquivo2,'A1901:A1906');
u_qui_12 = xlsread(arquivo2,'A2001:A2006');
u_qui_13 = xlsread(arquivo2,'A2:A7');
u_qui_14 = xlsread(arquivo2,'A103:A108');
u_qui_15 = xlsread(arquivo2,'A202:A207');
u_qui_16 = xlsread(arquivo2,'A301:A306');
u_qui_17 = xlsread(arquivo2,'A402:A407');
u_qui_18 = xlsread(arquivo2,'A501:A507');
u_qui_19 = xlsread(arquivo2,'A601:A606');
u_qui_20 = xlsread(arquivo2,'A701:A706');
u_qui_21 = xlsread(arquivo2,'A801:A806');
u_qui_22 = xlsread(arquivo2,'A901:A906');
u_qui_23 = xlsread(arquivo2,'A1001:A1006');

u_sex_00 = xlsread(arquivo2,'C1101:C1106');
u_sex_01 = xlsread(arquivo2,'C1201:C1206');
u_sex_02 = xlsread(arquivo2,'C1301:C1305');
u_sex_03 = xlsread(arquivo2,'C1312:C1313');
u_sex_04 = xlsread(arquivo2,'C1320:C1321');
u_sex_05 = xlsread(arquivo2,'C1331:C1332');
u_sex_06 = xlsread(arquivo2,'C1401:C1404');
u_sex_07 = xlsread(arquivo2,'C1501:C1506');
u_sex_08 = xlsread(arquivo2,'C1601:C1606');
u_sex_09 = xlsread(arquivo2,'C1701:C1706');
u_sex_10 = xlsread(arquivo2,'C1801:C1806');
u_sex_11 = xlsread(arquivo2,'C1901:C1906');
u_sex_12 = xlsread(arquivo2,'C2001:C2006');
u_sex_13 = xlsread(arquivo2,'C2:C7');
u_sex_14 = xlsread(arquivo2,'C103:C108');
u_sex_15 = xlsread(arquivo2,'C202:C207');
u_sex_16 = xlsread(arquivo2,'C301:C305');
u_sex_17 = xlsread(arquivo2,'C402:C407');
u_sex_18 = xlsread(arquivo2,'C502:C507');
u_sex_19 = xlsread(arquivo2,'C601:C606');
u_sex_20 = xlsread(arquivo2,'C701:C706');
u_sex_21 = xlsread(arquivo2,'C801:C806');
u_sex_22 = xlsread(arquivo2,'C901:C906');
u_sex_23 = xlsread(arquivo2,'C1001:C1006');

u_sab_00 = xlsread(arquivo2,'E1101:E1106');
u_sab_01 = xlsread(arquivo2,'E1201:E1206');
u_sab_02 = xlsread(arquivo2,'E1301:E1305');
u_sab_03 = xlsread(arquivo2,'E1312:E1313');
u_sab_04 = xlsread(arquivo2,'E1320:E1321');
u_sab_05 = xlsread(arquivo2,'E1331:E1332');
u_sab_06 = xlsread(arquivo2,'E1401:E1405');
u_sab_07 = xlsread(arquivo2,'E1501:E1505');
u_sab_08 = xlsread(arquivo2,'E1601:E1610');
u_sab_09 = xlsread(arquivo2,'E1701:E1706');
u_sab_10 = xlsread(arquivo2,'E1801:E1808');
u_sab_11 = xlsread(arquivo2,'E1901:E1906');
u_sab_12 = xlsread(arquivo2,'E2001:E2005');
u_sab_13 = xlsread(arquivo2,'E2:E7');
u_sab_14 = xlsread(arquivo2,'E103:E108');
u_sab_15 = xlsread(arquivo2,'E202:E207');
u_sab_16 = xlsread(arquivo2,'E301:E308');
u_sab_17 = xlsread(arquivo2,'E402:E408');
u_sab_18 = xlsread(arquivo2,'E502:E508');
u_sab_19 = xlsread(arquivo2,'E601:E608');
u_sab_20 = xlsread(arquivo2,'E701:E708');
u_sab_21 = xlsread(arquivo2,'E801:E806');
u_sab_22 = xlsread(arquivo2,'E901:E906');
u_sab_23 = xlsread(arquivo2,'E1001:E1006');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Calcula a diferen�a das m�dias entre Uniprot e NCBI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m_dom_00 = mean(u_dom_00) - mean(n_dom_00);
m_dom_01 = mean(u_dom_01) - mean(n_dom_01);
m_dom_02 = mean(u_dom_02) - mean(n_dom_02);
m_dom_03 = mean(u_dom_03) - mean(n_dom_03);
m_dom_04 = mean(u_dom_04) - mean(n_dom_04);
m_dom_05 = mean(u_dom_05) - mean(n_dom_05);
m_dom_06 = mean(u_dom_06) - mean(n_dom_06);
m_dom_07 = mean(u_dom_07) - mean(n_dom_07);
m_dom_08 = mean(u_dom_08) - mean(n_dom_08);
m_dom_09 = mean(u_dom_09) - mean(n_dom_09);
m_dom_10 = mean(u_dom_10) - mean(n_dom_10);
m_dom_11 = mean(u_dom_11) - mean(n_dom_11);
m_dom_12 = mean(u_dom_12) - mean(n_dom_12);
m_dom_13 = mean(u_dom_13) - mean(n_dom_13);
m_dom_14 = mean(u_dom_14) - mean(n_dom_14);
m_dom_15 = mean(u_dom_15) - mean(n_dom_15);
m_dom_16 = mean(u_dom_16) - mean(n_dom_16);
m_dom_17 = mean(u_dom_17) - mean(n_dom_17);
m_dom_18 = mean(u_dom_18) - mean(n_dom_18);
m_dom_19 = mean(u_dom_19) - mean(n_dom_19);
m_dom_20 = mean(u_dom_20) - mean(n_dom_20);
m_dom_21 = mean(u_dom_21) - mean(n_dom_21);
m_dom_22 = mean(u_dom_22) - mean(n_dom_22);
m_dom_23 = mean(u_dom_23) - mean(n_dom_23);

m_seg_00 = mean(u_seg_00) - mean(n_seg_00);
m_seg_01 = mean(u_seg_01) - mean(n_seg_01);
m_seg_02 = mean(u_seg_02) - mean(n_seg_02);
m_seg_03 = mean(u_seg_03) - mean(n_seg_03);
m_seg_04 = mean(u_seg_04) - mean(n_seg_04);
m_seg_05 = mean(u_seg_05) - mean(n_seg_05);
m_seg_06 = mean(u_seg_06) - mean(n_seg_06);
m_seg_07 = mean(u_seg_07) - mean(n_seg_07);
m_seg_08 = mean(u_seg_08) - mean(n_seg_08);
m_seg_09 = mean(u_seg_09) - mean(n_seg_09);
m_seg_10 = mean(u_seg_10) - mean(n_seg_10);
m_seg_11 = mean(u_seg_11) - mean(n_seg_11);
m_seg_12 = mean(u_seg_12) - mean(n_seg_12);
m_seg_13 = mean(u_seg_13) - mean(n_seg_13);
m_seg_14 = mean(u_seg_14) - mean(n_seg_14);
m_seg_15 = mean(u_seg_15) - mean(n_seg_15);
m_seg_16 = mean(u_seg_16) - mean(n_seg_16);
m_seg_17 = mean(u_seg_17) - mean(n_seg_17);
m_seg_18 = mean(u_seg_18) - mean(n_seg_18);
m_seg_19 = mean(u_seg_19) - mean(n_seg_19);
m_seg_20 = mean(u_seg_20) - mean(n_seg_20);
m_seg_21 = mean(u_seg_21) - mean(n_seg_21);
m_seg_22 = mean(u_seg_22) - mean(n_seg_22);
m_seg_23 = mean(u_seg_23) - mean(n_seg_23);

m_ter_00 = mean(u_ter_00) - mean(n_ter_00);
m_ter_01 = mean(u_ter_01) - mean(n_ter_01);
m_ter_02 = mean(u_ter_02) - mean(n_ter_02);
m_ter_03 = mean(u_ter_03) - mean(n_ter_03);
m_ter_04 = mean(u_ter_04) - mean(n_ter_04);
m_ter_05 = mean(u_ter_05) - mean(n_ter_05);
m_ter_06 = mean(u_ter_06) - mean(n_ter_06);
m_ter_07 = mean(u_ter_07) - mean(n_ter_07);
m_ter_08 = mean(u_ter_08) - mean(n_ter_08);
m_ter_09 = mean(u_ter_09) - mean(n_ter_09);
m_ter_10 = mean(u_ter_10) - mean(n_ter_10);
m_ter_11 = mean(u_ter_11) - mean(n_ter_11);
m_ter_12 = mean(u_ter_12) - mean(n_ter_12);
m_ter_13 = mean(u_ter_13) - mean(n_ter_13);
m_ter_14 = mean(u_ter_14) - mean(n_ter_14);
m_ter_15 = mean(u_ter_15) - mean(n_ter_15);
m_ter_16 = mean(u_ter_16) - mean(n_ter_16);
m_ter_17 = mean(u_ter_17) - mean(n_ter_17);
m_ter_18 = mean(u_ter_18) - mean(n_ter_18);
m_ter_19 = mean(u_ter_19) - mean(n_ter_19);
m_ter_20 = mean(u_ter_20) - mean(n_ter_20);
m_ter_21 = mean(u_ter_21) - mean(n_ter_21);
m_ter_22 = mean(u_ter_22) - mean(n_ter_22);
m_ter_23 = mean(u_ter_23) - mean(n_ter_23);

m_qua_00 = mean(u_qua_00) - mean(n_qua_00);
m_qua_01 = mean(u_qua_01) - mean(n_qua_01);
m_qua_02 = mean(u_qua_02) - mean(n_qua_02);
m_qua_03 = mean(u_qua_03) - mean(n_qua_03);
m_qua_04 = mean(u_qua_04) - mean(n_qua_04);
m_qua_05 = mean(u_qua_05) - mean(n_qua_05);
m_qua_06 = mean(u_qua_06) - mean(n_qua_06);
m_qua_07 = mean(u_qua_07) - mean(n_qua_07);
m_qua_08 = mean(u_qua_08) - mean(n_qua_08);
m_qua_09 = mean(u_qua_09) - mean(n_qua_09);
m_qua_10 = mean(u_qua_10) - mean(n_qua_10);
m_qua_11 = mean(u_qua_11) - mean(n_qua_11);
m_qua_12 = mean(u_qua_12) - mean(n_qua_12);
m_qua_13 = mean(u_qua_13) - mean(n_qua_13);
m_qua_14 = mean(u_qua_14) - mean(n_qua_14);
m_qua_15 = mean(u_qua_15) - mean(n_qua_15);
m_qua_16 = mean(u_qua_16) - mean(n_qua_16);
m_qua_17 = mean(u_qua_17) - mean(n_qua_17);
m_qua_18 = mean(u_qua_18) - mean(n_qua_18);
m_qua_19 = mean(u_qua_19) - mean(n_qua_19);
m_qua_20 = mean(u_qua_20) - mean(n_qua_20);
m_qua_21 = mean(u_qua_21) - mean(n_qua_21);
m_qua_22 = mean(u_qua_22) - mean(n_qua_22);
m_qua_23 = mean(u_qua_23) - mean(n_qua_23);

m_qui_00 = mean(u_qui_00) - mean(n_qui_00);
m_qui_01 = mean(u_qui_01) - mean(n_qui_01);
m_qui_02 = mean(u_qui_02) - mean(n_qui_02);
m_qui_03 = mean(u_qui_03) - mean(n_qui_03);
m_qui_04 = mean(u_qui_04) - mean(n_qui_04);
m_qui_05 = mean(u_qui_05) - mean(n_qui_05);
m_qui_06 = mean(u_qui_06) - mean(n_qui_06);
m_qui_07 = mean(u_qui_07) - mean(n_qui_07);
m_qui_08 = mean(u_qui_08) - mean(n_qui_08);
m_qui_09 = mean(u_qui_09) - mean(n_qui_09);
m_qui_10 = mean(u_qui_10) - mean(n_qui_10);
m_qui_11 = mean(u_qui_11) - mean(n_qui_11);
m_qui_12 = mean(u_qui_12) - mean(n_qui_12);
m_qui_13 = mean(u_qui_13) - mean(n_qui_13);
m_qui_14 = mean(u_qui_14) - mean(n_qui_14);
m_qui_15 = mean(u_qui_15) - mean(n_qui_15);
m_qui_16 = mean(u_qui_16) - mean(n_qui_16);
m_qui_17 = mean(u_qui_17) - mean(n_qui_17);
m_qui_18 = mean(u_qui_18) - mean(n_qui_18);
m_qui_19 = mean(u_qui_19) - mean(n_qui_19);
m_qui_20 = mean(u_qui_20) - mean(n_qui_20);
m_qui_21 = mean(u_qui_21) - mean(n_qui_21);
m_qui_22 = mean(u_qui_22) - mean(n_qui_22);
m_qui_23 = mean(u_qui_23) - mean(n_qui_23);

m_sex_00 = mean(u_sex_00) - mean(n_sex_00);
m_sex_01 = mean(u_sex_01) - mean(n_sex_01);
m_sex_02 = mean(u_sex_02) - mean(n_sex_02);
m_sex_03 = mean(u_sex_03) - mean(n_sex_03);
m_sex_04 = mean(u_sex_04) - mean(n_sex_04);
m_sex_05 = mean(u_sex_05) - mean(n_sex_05);
m_sex_06 = mean(u_sex_06) - mean(n_sex_06);
m_sex_07 = mean(u_sex_07) - mean(n_sex_07);
m_sex_08 = mean(u_sex_08) - mean(n_sex_08);
m_sex_09 = mean(u_sex_09) - mean(n_sex_09);
m_sex_10 = mean(u_sex_10) - mean(n_sex_10);
m_sex_11 = mean(u_sex_11) - mean(n_sex_11);
m_sex_12 = mean(u_sex_12) - mean(n_sex_12);
m_sex_13 = mean(u_sex_13) - mean(n_sex_13);
m_sex_14 = mean(u_sex_14) - mean(n_sex_14);
m_sex_15 = mean(u_sex_15) - mean(n_sex_15);
m_sex_16 = mean(u_sex_16) - mean(n_sex_16);
m_sex_17 = mean(u_sex_17) - mean(n_sex_17);
m_sex_18 = mean(u_sex_18) - mean(n_sex_18);
m_sex_19 = mean(u_sex_19) - mean(n_sex_19);
m_sex_20 = mean(u_sex_20) - mean(n_sex_20);
m_sex_21 = mean(u_sex_21) - mean(n_sex_21);
m_sex_22 = mean(u_sex_22) - mean(n_sex_22);
m_sex_23 = mean(u_sex_23) - mean(n_sex_23);

m_sab_00 = mean(u_sab_00) - mean(n_sab_00);
m_sab_01 = mean(u_sab_01) - mean(n_sab_01);
m_sab_02 = mean(u_sab_02) - mean(n_sab_02);
m_sab_03 = mean(u_sab_03) - mean(n_sab_03);
m_sab_04 = mean(u_sab_04) - mean(n_sab_04);
m_sab_05 = mean(u_sab_05) - mean(n_sab_05);
m_sab_06 = mean(u_sab_06) - mean(n_sab_06);
m_sab_07 = mean(u_sab_07) - mean(n_sab_07);
m_sab_08 = mean(u_sab_08) - mean(n_sab_08);
m_sab_09 = mean(u_sab_09) - mean(n_sab_09);
m_sab_10 = mean(u_sab_10) - mean(n_sab_10);
m_sab_11 = mean(u_sab_11) - mean(n_sab_11);
m_sab_12 = mean(u_sab_12) - mean(n_sab_12);
m_sab_13 = mean(u_sab_13) - mean(n_sab_13);
m_sab_14 = mean(u_sab_14) - mean(n_sab_14);
m_sab_15 = mean(u_sab_15) - mean(n_sab_15);
m_sab_16 = mean(u_sab_16) - mean(n_sab_16);
m_sab_17 = mean(u_sab_17) - mean(n_sab_17);
m_sab_18 = mean(u_sab_18) - mean(n_sab_18);
m_sab_19 = mean(u_sab_19) - mean(n_sab_19);
m_sab_20 = mean(u_sab_20) - mean(n_sab_20);
m_sab_21 = mean(u_sab_21) - mean(n_sab_21);
m_sab_22 = mean(u_sab_22) - mean(n_sab_22);
m_sab_23 = mean(u_sab_23) - mean(n_sab_23);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matrizes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dife = [m_dom_00 m_seg_00 m_ter_00 m_qua_00 m_qui_00 m_sex_00 m_sab_00; 
    m_dom_01 m_seg_01 m_ter_01 m_qua_01 m_qui_01 m_sex_01 m_sab_01; 
    m_dom_02 m_seg_02 m_ter_02 m_qua_02 m_qui_02 m_sex_02 m_sab_02; 
    m_dom_03 m_seg_03 m_ter_03 m_qua_03 m_qui_03 m_sex_03 m_sab_03; 
    m_dom_04 m_seg_04 m_ter_04 m_qua_04 m_qui_04 m_sex_04 m_sab_04; 
    m_dom_05 m_seg_05 m_ter_05 m_qua_05 m_qui_05 m_sex_05 m_sab_05; 
    m_dom_06 m_seg_06 m_ter_06 m_qua_06 m_qui_06 m_sex_06 m_sab_06; 
    m_dom_07 m_seg_07 m_ter_07 m_qua_07 m_qui_07 m_sex_07 m_sab_07;
    m_dom_08 m_seg_08 m_ter_08 m_qua_08 m_qui_08 m_sex_08 m_sab_08; 
    m_dom_09 m_seg_09 m_ter_09 m_qua_09 m_qui_09 m_sex_09 m_sab_09; 
    m_dom_10 m_seg_10 m_ter_10 m_qua_10 m_qui_10 m_sex_10 m_sab_10; 
    m_dom_11 m_seg_11 m_ter_11 m_qua_11 m_qui_11 m_sex_11 m_sab_11; 
    m_dom_12 m_seg_12 m_ter_12 m_qua_12 m_qui_12 m_sex_12 m_sab_12; 
    m_dom_13 m_seg_13 m_ter_13 m_qua_13 m_qui_13 m_sex_13 m_sab_13; 
    m_dom_14 m_seg_14 m_ter_14 m_qua_14 m_qui_14 m_sex_14 m_sab_14; 
    m_dom_15 m_seg_15 m_ter_15 m_qua_15 m_qui_15 m_sex_15 m_sab_15; 
    m_dom_16 m_seg_16 m_ter_16 m_qua_16 m_qui_16 m_sex_16 m_sab_16;
    m_dom_17 m_seg_17 m_ter_17 m_qua_17 m_qui_17 m_sex_17 m_sab_17; 
    m_dom_18 m_seg_18 m_ter_18 m_qua_18 m_qui_18 m_sex_18 m_sab_18; 
    m_dom_19 m_seg_19 m_ter_19 m_qua_19 m_qui_19 m_sex_19 m_sab_19; 
    m_dom_20 m_seg_20 m_ter_20 m_qua_20 m_qui_20 m_sex_20 m_sab_20; 
    m_dom_21 m_seg_21 m_ter_21 m_qua_21 m_qui_21 m_sex_21 m_sab_21; 
    m_dom_22 m_seg_22 m_ter_22 m_qua_22 m_qui_22 m_sex_22 m_sab_22; 
    m_dom_23 m_seg_23 m_ter_23 m_qua_23 m_qui_23 m_sex_23 m_sab_23];

horas = [00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23];
dias = [1 2 3 4 5 6 7];

%%%%%%%%%%%%%%%%
% Plot
%%%%%%%%%%%%%%%%
figure;
hold on;
title('Canal de s�dio: Uniprot - NCBI (em segundos)');
contourf(dias,horas,dife);
ylim([0 23]);
xlabel('Dias');
ylabel('Horas');
colorbar;