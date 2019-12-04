function [Y,Xf,Af] = myNeuralNetworkFunction(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 25-Jun-2017 18:34:38.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 84xQ matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.keep = [6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84];
x1_step2.xoffset = [535;535;538;539;542;538;536;536;536;536;536;536;543;539;536;535;535;535;535;540;591;613;610;606;603;600;597;596;592;588;583;578;573;568;571;565;559;553;546;540;540;536;533;541;535;533;531;538;535;532;541;535;532;533;536;533;530;528;526;532;529;526;524;525;523;521;520;519;519;595;594;588;586;581;576;570;565;560;557];
x1_step2.gain = [0.05;0.0571428571428571;0.0625;0.0645161290322581;0.0645161290322581;0.0645161290322581;0.0645161290322581;0.0666666666666667;0.0689655172413793;0.0588235294117647;0.0645161290322581;0.0645161290322581;0.0606060606060606;0.0606060606060606;0.0625;0.0606060606060606;0.0540540540540541;0.0606060606060606;0.0666666666666667;0.05;0.0645161290322581;0.0555555555555556;0.0512820512820513;0.0476190476190476;0.05;0.05;0.0526315789473684;0.0526315789473684;0.0540540540540541;0.04;0.0277777777777778;0.028169014084507;0.028169014084507;0.0285714285714286;0.0285714285714286;0.0285714285714286;0.0285714285714286;0.0285714285714286;0.0285714285714286;0.0238095238095238;0.019047619047619;0.0196078431372549;0.0198019801980198;0.0202020202020202;0.0202020202020202;0.0208333333333333;0.021505376344086;0.024390243902439;0.0256410256410256;0.021978021978022;0.0206185567010309;0.0206185567010309;0.021505376344086;0.0232558139534884;0.025974025974026;0.027027027027027;0.0172413793103448;0.0178571428571429;0.0185185185185185;0.0208333333333333;0.0217391304347826;0.0222222222222222;0.0206185567010309;0.021978021978022;0.0163934426229508;0.0169491525423729;0.0169491525423729;0.0176991150442478;0.0185185185185185;0.0224719101123596;0.0235294117647059;0.0235294117647059;0.0235294117647059;0.0238095238095238;0.0238095238095238;0.0235294117647059;0.0235294117647059;0.0232558139534884;0.0232558139534884];
x1_step2.ymin = -1;

% Layer 1
b1 = [-1.4369173878611416;-1.2980226124200767;0.96201932430724257;-0.79802401676452206;-0.53276304550481091;0.47288593627460912;0.062272181057811335;-0.071088015225497098;0.067424150554771772;0.2436545695461691;-0.65662980355268352;0.84718136579842807;1.0317205458330541;-1.1947840536141747;1.4736882019133442];
IW1_1 = [0.1994052255658546 -0.14985088065532357 0.18199984561108246 0.10066845363768986 0.14349430727067192 -0.048184812612077993 -0.16930484231227991 0.059055543682266017 -0.2609880642601064 -0.26689476672261669 -0.08914862273005987 -0.16663239862610865 -0.0147843180163711 -0.16072654158444177 -0.14409923392592 0.41952526636578802 -0.10006927724921971 0.072093169719870495 -0.14719293686808904 0.08827476731087569 -0.23415188640179943 -0.070793113835342175 -0.17260643574545112 -0.10447316578402982 -0.26728778480710969 -0.22527917188285457 0.21571279818855268 0.10581993544751726 0.13082552998013622 0.039442447833090949 0.21843352319322468 0.07619165198029422 0.085807328603171917 -0.057180575619612206 0.0020167452383422551 0.12758378326115563 -0.1103125257028362 -0.25871533990043349 0.14312355675879335 -0.0074735760280989078 0.25062703692182969 -0.21608465130543283 0.17003479294201615 -0.22025938980450779 -0.19525691953626223 0.18861143229135252 -0.01916547547038458 -0.068012204518154679 0.014511698405204861 -0.1924830719120377 -0.057366318668266608 -0.036604172329325745 0.19532816406601361 -0.24665198530513735 0.29500954531361318 -0.26089562395330379 -0.18188010774488902 0.049745020472306847 -0.2259563917049712 -0.26267249232122264 0.31488427925217516 -0.010782067580962833 -0.30811203732081388 -0.072554151850679996 0.28552384561700644 0.31389739832068908 -0.11155039187602089 0.045612182395016673 -0.2107267041322276 0.16907913740606195 0.22356803012897455 0.05059227952565467 -0.1407037908577573 -0.11891606669149631 -0.20094951469155281 0.14445013975307264 -0.05380019075365261 0.031060529357168742 -0.10563899781048959;0.19450624673459235 -0.16123431414116929 -0.4193638339734686 -0.29638550837581917 -0.091867181111798618 -0.23750010405314292 -0.42119817370250734 -0.087300529188834158 0.44519954459033445 0.33937162972398094 -0.26655148887615371 0.21766224944762047 -0.11714383857254429 0.061470186689182631 -0.24095566219186121 0.25329817076149264 -0.11611716177587095 -0.079638639738857098 -0.16869783380669054 0.01065861706136155 -0.023611075150345877 0.11436003680932161 0.034460875750269383 0.18255611548058437 0.00031999110051330812 0.040778553164399427 0.2495744032402695 0.086560709746407477 0.0089939177110338088 0.034463096327201077 -0.27991025949118842 -0.24652646710947265 0.063264120399135676 0.19234015576150676 0.13876017376674632 0.32456902510014068 -0.14442258425383914 -0.20670143849445888 0.33301584728214845 0.25002114151941851 -0.36795472304364751 0.12719348219277377 -0.093615830042045017 -0.21077666719975299 -0.1058875559719125 -0.209435421260662 -0.66139435654898449 0.06374803963308652 -0.33020531044695856 0.10488916828158462 -0.24243572508155101 -0.15645361086597098 0.24922773971414475 0.093250085014687414 -0.59915223662780803 0.18627888434750953 0.062019566182737879 0.025248494304006296 -0.25678206144782811 0.16397846766245827 -0.16046291762411213 0.0059187323657097189 -0.14609819451252962 -0.13585354458972318 0.09426024885756934 -0.099652499176384426 0.11293158698148732 -0.094763552939211626 -0.040506245332793643 -0.17733187849136947 -0.2757327773655045 0.12799195912250971 0.15611814110920927 -0.14460221097000284 -0.17531459612455574 -0.18181734381417144 -0.022441993668340016 0.20497361671099118 0.2732127348323673;-0.24561622859143917 0.19432730285278926 -0.13885994788412767 0.019855823577047814 0.021540808283375085 -0.13677167917982314 -0.011619933996116848 0.096638019150606755 -0.21475417821797135 0.10784736059996569 0.26982879748548194 0.23313306641126902 0.11960556312346467 -0.0080650808956999453 -0.071886331014464164 -0.19535513663330359 0.15715286722312646 -0.11160103198123324 -0.048820749879894453 0.16063203586816896 -0.24239576371470259 0.22170076856483509 -0.19224121200272659 0.28957495297149033 0.22519901220168215 -0.093780214079822899 0.19801064491778342 -0.21741379893944354 -0.17043977582934591 0.13057263572670441 0.020602262946758432 0.14143972657343354 0.10293173206910497 0.21356389166976136 0.059723315720118013 0.28655357416409216 0.082765715097019923 -0.013168155615970444 -0.052064202866717937 0.185055054045246 0.20864528601471174 0.32933232592137696 0.26257320717446958 -0.1621059894882485 0.17031235804561595 -0.27679932094084542 0.15666525099738488 -0.082562227904234897 -0.18942606582769134 -0.048246978336546537 0.28492870382446434 0.19971972228470894 -0.02769060150296512 -0.11375033883868786 0.053936770375453823 0.086588760754911454 -0.14156229737495263 -0.09087330552771565 -0.021945088092716773 -0.022309183845170881 -0.088719803193113858 -0.10429643240330348 -0.095473455529004062 -0.20349487008360209 -0.26636157843488623 0.0075725555789290166 0.10992108719795103 -0.16617830928258989 -0.19582439173533195 0.044362152370039605 0.24113042796938203 -0.073924664258614631 0.16000890286082237 -0.18237805308707755 0.099233713165072887 -0.19621342320445295 0.26308012932075431 0.22504780196238242 0.27929300626122755;0.2974406803886433 0.23142389243103728 -0.20778794667190634 0.17197501267555618 0.15128110099871778 0.10843103461678244 0.20434168443206069 0.14759490410263726 0.19386874132199933 0.051903516698231206 0.28369347116686167 0.068892725850238409 -0.17793996909588702 0.19375654657873487 -0.1460527903305659 -0.14624506586975711 -0.24142146709290935 -0.136073073727249 0.13741810187665066 0.1306112169783227 -0.27769398546603852 -0.26578631035079225 0.24266840904829978 -0.065557274337278426 0.062043170391344042 -0.092660083506435384 -0.17984551752486128 -0.2980665459784218 -0.17359173560757493 0.087070131599268824 -0.071659805332962359 -0.20173257411285322 0.22981361924844695 -0.17586290816346287 0.094035760950341593 -0.21348684042596588 -0.17739377448713187 -0.16367979869366348 0.064619431396837415 0.12087538497727039 0.12156485904836251 0.03369099002894746 0.028115715457493477 -0.25773170045513333 0.18675643222438454 0.16406528145743016 -0.17025868020542853 0.22412714746584197 -0.012529464333471728 -0.22613086793822779 -0.14503290012012837 -0.15843606360112045 -0.33659968994119621 0.18128895889185251 0.21790835785494575 -0.24043705142680405 0.024493164635310791 -0.19263227863579699 0.063319735233637334 0.26040233755179365 -0.1155749080698828 -0.071513038687712221 -0.14777820572409883 0.13822059130069442 -0.00013698510604549883 -0.0019300306928326672 0.13962492678725244 -0.31322123316450629 0.075341978127029308 0.029196201875853631 -0.30226546647928443 -0.068754466445624565 0.026600966919948042 -0.14412846486482747 -0.048037362694300971 0.023966781717612077 0.14405914980670062 -0.069161063504624296 -0.13085891813984737;0.029497325887278311 0.22586542375011423 -0.27731249018328519 0.020306706840416643 0.15357617821175404 -0.097385932058495772 0.1288156125176749 0.074845778818414047 0.13379024825743452 -0.22457367412620358 -0.060464716402673827 -0.3703098107390505 -0.068844470664841007 -0.01827094439027074 -0.03779819611521254 -0.24925534460966511 0.057792866311219937 0.29650699834386124 0.11581811237249114 0.001403679112098896 -0.027305025108048015 -0.18142192218720568 -0.16865921616593918 0.30528236981116719 -0.16436994839551008 0.084125190846132944 0.049519136328479915 -0.10139279768245714 -0.16108549616996065 -0.32972469042364982 -0.10417186369723268 0.13030039950236469 -0.24036610323698554 -0.0074881135095632538 -0.058651571752994951 -0.27079133219087814 -0.3185875101686475 -0.24690891626711009 -0.098578847184749741 -0.22147990369386986 -0.14169817465498816 0.2973339173336183 -0.1611919621069616 -0.10994758436661618 -0.11696426871102643 0.048663743162213953 -0.24768588656646401 -0.33490651759237061 0.059487374139390523 -0.09688331186359278 -0.17777201088205397 -0.17758874455742624 0.16949970161053657 0.28231798997908597 0.056631299521813803 0.018948307681339819 0.16942423192147288 -0.40940873446871223 0.071964268899477823 0.22987012147724672 -0.19743947640431933 0.096045750570223604 0.087268276321939217 -0.21662221600538936 -0.19871958134715589 -0.15824785696677157 -0.075977712829872576 -0.0702192624041931 -0.16967005880810296 -0.04568515850196158 0.075534025485899423 0.22907027678034228 0.044772840757579847 0.11049073289917592 0.04482011022550219 0.19000156405685906 -0.043436223493475423 0.18194620683063137 0.19219984796945044;-0.1411343364377679 0.11662458573149392 0.21860727572574448 -0.032346059233475444 0.26501923637043107 -0.043795221085292137 -0.14761764805896049 -0.018896223243156519 0.18343234260628441 0.15154539885889229 0.016234945125106506 -0.15694724706735422 -0.16389574844893817 0.12490277720032207 -0.079328991842094382 -0.099677447059557625 -0.014222048746321572 -0.19093073291325482 0.26960731980184005 -0.13801848371520264 -0.17489420373530523 -0.23790833871343972 -0.2120917254674175 -0.15277049301199944 -0.067175660049223929 -0.16641632445641322 -0.26721824656090482 0.03071949619192451 -0.12890918770005116 -0.14616842544503536 0.1387057868465312 -0.10881573977894067 0.10484676494004935 0.027383156422062072 0.26855237962748973 0.095352472304844477 0.13452712168031289 0.17133138511029317 0.18006497861418178 0.032921580017918457 0.23528317701060403 -0.064275457954677664 -0.31007185169461099 -0.24248054533899668 -0.21629945352133895 0.14284113077963909 -0.092038289273098303 0.16909326659365639 -0.41546138933635818 0.044527495826134127 -0.35173035999068769 0.043411031041612758 -0.23101754005645453 -0.14954197235381181 -0.21740697483680449 -0.093183006915000741 -0.13697874143981706 0.023591294879543954 -0.082003769694691239 -0.15786744218289658 -0.016277280970921792 -0.046063902292464334 0.13094265111117837 -0.30749006903390119 -0.044022717664720268 -0.012431945605966655 0.047274007331714336 -0.28900088749976716 -0.38376877467104925 -0.22605646992911116 0.048330457166314518 0.14515846257895992 -0.073437124210824364 0.05513265799589244 -0.25550973533652988 -0.25087623403663423 0.13498949376501293 0.035621583829715073 0.017526461468445553;-0.056530179584091206 -0.22247253870011932 0.2106639742700725 0.24490835024756669 0.13334459133030163 0.31631988472788136 0.18018324428597837 -0.15415551688319254 -0.16360250758873232 0.22959348349915989 0.11893872465409529 0.066103874706338425 0.097498888363823075 0.085215658476694628 0.02372784177619397 -0.11322464154593567 -0.0016092552409545137 0.3562787932546721 0.37603129915243744 -0.01625401055545582 0.39420732364195576 -0.011485268762180308 0.06921568228642043 0.24254398308222175 0.12264110305727581 -0.003028692356521475 0.066542319498742855 0.21145996165355263 0.047525962590440368 -0.026591858259989019 0.050346135154213156 0.31946803995303957 -0.027425241568714027 0.15720845917600385 -0.063269099422930172 -0.14445043326626186 -0.04772498543297491 0.10246309130940409 0.27561795861762728 -0.13338199559876254 0.31469489389646665 0.017658627836260325 0.23823024164842782 -0.18375630675187146 0.026878100825997758 -0.2731612606061759 -0.033126216950897465 -0.059948894000839512 -0.29287866506875576 -0.3433878365079302 -0.087315653784452663 -0.30873358771941101 0.0031705140330070369 -0.34063794083613308 0.022128035284528526 -0.16590115830858812 0.087851839628066405 -0.042676374664885559 -0.25220282956890788 -0.26643325180858224 -0.093636051003471915 -0.13695161211132212 0.1492526717629846 0.022182540845557895 -0.1616168826748467 -0.2574868655187037 0.24642758043679183 0.10990379807910801 0.042774278701168983 -0.20329285946830394 -0.016521086256880549 0.081776407835431067 -0.073917606458465249 0.04824935583956888 -0.25449703578218424 -0.27998406544956461 -0.29958446692916019 -0.20011189269951979 0.18630895054580734;-0.077463815032873473 0.16060782024284617 -0.14893535504540686 -0.018552574144542588 -0.203490966692282 0.010023635968927037 -0.083502666025419614 -0.1546217915121281 -0.018034619376640276 0.0066888612548283589 0.25269144889897749 0.16688873705140986 -0.0038018285152418806 0.083509473361984651 -0.34594199950785859 0.10281979411298643 0.12449195382852526 0.26722010960145248 -0.045869967154821875 0.24757749709662968 0.19356523123137048 0.32399922746677057 -0.094618857370900311 0.23791452244799358 0.36103107504141912 0.19255169684752685 -0.02512796374918003 0.02010978726842505 0.1203677445903962 0.10759512614725315 0.19014852675611221 -0.18230874305684122 -0.18216771918241073 0.24881744892249263 -0.19374464641939632 0.048707498662546207 -0.0011795240265955562 0.2514886955862613 -0.15922875268845699 -0.23040114660718289 0.20487356838849333 0.034281200826079515 0.082713260236487812 -0.22366101821721884 0.070350236786802509 0.17471701491500111 0.030625337447193316 0.15263815859268545 0.28126462226090987 -0.1223276283001395 -0.24751240846466172 -0.25342422806555315 0.19828219931842364 0.225494995303678 -0.22814484643125835 0.075254325242182521 0.1294146410752296 -0.054934087005829295 0.10848354992001025 -0.060828952648023724 0.26610161968402574 -0.1538247336785559 -0.0034791334076386292 0.22900513640749712 -0.08000806047934185 -0.21206672866413787 -0.12226251676815963 -0.076115302310113278 -0.081463045016542154 -0.052385823454385472 0.22409925219117768 0.27654520174666813 -0.21505855611756386 -0.27777912952775635 0.1802344957970515 -0.050050738429413079 -0.087469643555066978 0.079421162321293898 -0.24550007617734665;0.34159633024709646 0.27955393191714356 0.31487362990792839 -0.05192798192592183 -0.078104006456214181 0.1459969107334749 -0.12932551956347224 0.33255639946495302 -0.029466159002471331 0.065923362684554898 0.067851613327197594 -0.13130646048388564 0.35685666176728709 0.22538355413137381 0.079627830651431017 0.19017403678606992 -0.068599025831059854 0.13908546167013555 0.1177004493595621 -0.17034701404234268 0.24055398113258805 0.19833375719322663 0.11663495491256769 0.054914420931859095 -0.11671987463754194 -0.08139402497966497 -0.12174349357855065 0.2447812771398139 0.034004043119546475 0.27648627027997907 0.0698681312755315 -0.0091842238750575213 0.1405318047620159 -0.04942313272307159 -0.12756733133305437 0.093849542569048303 0.18504979504982003 0.026910987117391979 0.27799057561147145 -0.062556118349552922 -0.1113007907877987 -0.050608023716868948 0.17232706784443505 0.094122624839018704 -0.042375460685243872 0.3080142240383576 -0.16229419404425593 0.31224996571738972 0.027929436000517768 -0.28506329639611461 -0.0016946976297253819 0.09400615293985945 -0.19905391508205617 -0.23684909692758904 0.20011874350522205 -0.20715007688395862 0.021939817132473213 0.1604696128295541 -0.19435918205901384 -0.25520381971377626 -0.053585960199052957 -0.029210983763782297 -0.17571964288527028 -0.0076479477075838218 -0.092946967072446152 0.1773938656011132 -0.18552574180786408 0.17333906920168096 0.059572638290583853 -0.10786974171187459 0.24023256520871294 0.16938337805193698 0.12935100601055324 0.2136674318629766 0.17094804606855057 -0.15926631530815963 0.27316288801744176 0.24927478135444972 -0.062151222053224903;0.19473181293149486 0.10645823302295061 -0.24434727145001323 -0.30989205127935404 0.017594706064096539 0.28344318281839204 -0.099906370287818486 -0.039692978987640362 0.40299004841593605 0.23758906810651764 -0.062426612679685731 -0.12361656299173712 -0.064781000406416447 0.094621318173786842 -0.028086059281740079 -0.18923696903026033 -0.053365393257742151 -0.23818636799145751 -0.25899184748368065 -0.011274218522580617 -0.24985902208594191 -0.014320224626264859 0.040329103305477183 0.31385948934442559 0.28868830241766508 0.28685446652223445 -0.12079949373016878 0.17187924801483945 0.29593688140227553 -0.13547723959277103 -0.27043374291510858 -0.29388241693715217 -0.061575033950932952 -0.1260728844759717 -0.2431589595892415 0.18634637054097947 -0.078829216787868209 0.096341989757287444 0.25179233702649301 -0.052040029050336237 -0.017642626725163355 -0.10687329803953509 -0.039176731327209398 -0.10933077146850564 -0.18781218285891285 0.13902300146552973 -0.1424038805258295 -0.36369546089521837 -0.094653554497455022 -0.071488661322155589 0.17293261933971504 0.10279596082984167 -0.078770511990863268 -0.13347897512296941 -0.30148050365738727 -0.14389293753077753 0.09800671597374809 -0.37179842579040145 -0.18131952810418051 0.40740165469715028 0.021306185267262981 -0.15441551404079468 0.2464985784673128 0.15546018287390601 -0.1799207398663408 0.050002609059315417 0.14590342582287166 0.070385897897088739 -0.088302847201284965 0.081987684840326661 0.0402346430253347 -0.16229993521588898 0.26773934177692932 0.17833894599605798 0.14694006828819822 0.0035425181343184398 0.12921605270388367 0.048418712377691166 0.097162034562178479;-0.076938501399400921 0.14523919796009874 -0.033531776881828346 0.024429073387514891 0.19980093377459246 -0.11400402175685259 -0.17673181087203338 0.18998731017305134 -0.050593952589108357 -0.20698086857275771 0.25827578319363831 -0.18401225595845178 0.33945121910307785 0.33535912344101348 -0.0091744798447989124 -0.23387700401367081 0.17795957022820033 -0.14569743109497146 -0.30153631726784252 -0.14859749736201885 0.24112925375772737 -0.045020522616306673 0.35557440767771781 0.092116007606638281 0.10463960066879521 0.28413830466943257 -0.020140080728168985 0.30504482877434791 0.031348946910853381 0.28973579181595172 -0.091761590953112135 0.1285420488526576 0.047003774619420534 -0.15228786283968823 0.012723192589456502 0.05632972216669288 0.20490097300461452 0.0132208627504499 0.074283657311641105 0.11174716195810745 0.21384904531667615 0.05903643244760147 0.10381336227855635 0.13838304373871693 0.32067419442917217 0.23579020348349175 0.067807688578567796 -0.064569367139148695 0.14177488879173233 -0.30874422631166232 0.11294970080200985 0.023143653376885412 -0.020183491854050384 -0.038164886942906227 0.18657853272427591 -0.11618619539191938 -0.1173294876792752 -0.016097995387592892 -0.18770899204618563 0.097769422828086483 -0.21730213856275904 -0.11741480116689514 0.17589206033960902 -0.16590416483316139 -0.25212747273958375 0.059519609806215797 0.099767891273752546 0.025183237705465641 0.059327779349546347 0.30822075970240126 -0.13725174829667464 0.14523739128317853 -0.061209166211310534 0.20156134265530878 -0.18415027820162166 0.25258512266694494 0.17588092330710708 -0.081586512971168743 -0.097447403611637826;0.32157695680041448 0.21790455719630827 0.010287147567719385 0.27594260961691003 -0.050803949411659208 0.2090271594164152 0.20015560895485562 0.11186328075894159 0.34762492827056496 0.029455272000356962 0.091237812066214813 -0.030997918103435065 0.098125432227914255 0.22863950892266383 0.18670480921121635 -0.29109591123758705 -0.19000575917844059 0.046879985653624966 0.17117154019798805 0.36727110877212682 0.13207977653526926 0.21253334648531017 0.39659906068554918 0.061870636073100865 0.080935420735016278 0.27062744213403006 -0.069765071881463817 0.16643801310600029 0.41347963808245064 0.21260581742947396 0.19696842302668052 0.11010828236254981 0.12417668327611885 0.28626539293974362 0.059560623138842562 0.032652063609459561 0.026532793541722922 0.18827739329223916 0.30028347400176381 -0.31056818184742563 0.093102511394597381 0.32214249365968828 0.16959361943894091 0.05812885307868302 -0.20796414426492768 -0.12869809251846451 -0.21541244608313193 -0.37142494997726866 -0.0071074972211746055 0.30366848553675269 -0.32421923670019148 0.025720462979697031 0.015105514234905795 0.061938524482201204 -0.26094883707773608 -0.045623818963140647 -0.034941479546031155 -0.17895650382461376 -0.24043049964284352 0.41992983357863939 -0.10758038473325238 -0.27795535683363271 0.20497057927216905 0.2518092030290176 0.032014761669784238 -0.04859562368115361 -0.31407027691634204 -0.29424111561675381 -0.18901017510507159 -0.33928495805079162 -0.16977630886842676 -0.19688877398895568 0.26684300349202877 -0.32117289018646611 -0.28407414677012832 0.081263724263528542 -0.031707786418788075 0.1224901089989781 -0.15830289514165485;0.28975030674479313 -0.066736074390594216 0.16504201977670921 -0.082839334696934511 0.19961777846898604 0.1643036523227964 -0.1015992747613553 0.31138173206683456 -0.19041853072297918 -0.21576497804932099 -0.11737857150070254 0.16626166730337333 0.022585117439799678 0.058766219560995724 -0.007361565571897986 -0.091711174500737278 0.019661883976321726 0.15454724415017723 0.04713448299606128 0.16589278320419368 0.34403606825018757 -0.030891405318636097 -0.22722711436895035 -0.19365013775011095 -0.14735557122254442 -0.057354415294070517 0.10264028506809966 -0.06428064450389645 0.12326430073474925 -0.25837412252711756 0.020442304886607678 0.071552824925207925 0.20628985488257084 0.12973967593484681 -0.044785005108264747 0.14230710905645361 0.14991109410781847 0.19919796042292021 0.09208106336331745 0.029107143421716598 0.024532643047488818 0.14527409921801948 -0.26790789332544895 0.027238153052824777 -0.22234220953893563 0.032778158589707576 -0.06921742297119382 0.17598318175881375 0.16981973391966734 -0.1929684885194001 -0.25066540135144438 0.12767948108303567 0.24435183379158817 0.096684966637497205 -0.14271500247471663 -0.24286154307500255 -0.17803913683084677 0.13310053820799142 -0.19752327529409089 -0.10576287240284724 -0.20276520982246177 0.14522279296026969 0.1463859873219952 0.028189813143053154 0.10224260084156735 -0.048534026941439122 0.29959347927067037 0.27488695992897533 0.23859701134128306 0.014803321212356155 -0.19532168879589776 -0.11956908061577282 -0.10446598297047173 -0.081819430448862057 -0.25098116436568108 -0.25405566133541696 -0.1025526917866382 -0.094650791271533238 0.11912396786630142;0.013750744810911084 0.075459076150010573 0.15386587751071051 0.0073970551038596254 -0.16804321704203012 -0.091472331932780412 -0.022979652725150578 -0.26992958031864311 -0.14320477682601507 -0.22817272307144768 -0.14542875083581833 0.0062652131193428346 -0.062083835767086086 0.082634136428681115 -0.21707724637459289 -0.11147390617747305 -0.26597361481348003 -0.051288828784231202 0.10726545161652679 0.1033649838366035 0.13505786824895566 0.2243537201217948 0.21606920831912568 0.38929635081271791 -0.0053227082586441623 0.098947348480777658 0.042461743925431367 -0.18802450928998118 0.35496556358258274 0.12755943689258081 -0.21390151436565916 -0.047979028400241507 -0.092380180837007483 -0.0061414886858095269 0.18692857100769092 0.17501877246402997 0.15126994472202476 -0.091533488356608128 -0.19431164661105349 -0.20009352700953836 -0.14923981251406637 0.26462627404448452 0.048687216771539969 -0.0046854955117908229 -0.23502709771153552 -0.22889753399157445 -0.093259209418551148 0.18380438277189382 -0.01811381311174037 -0.35597356873614938 0.13361007561838942 0.16972618152194985 0.16435393300716797 0.14695541595883638 -0.269728819279767 0.074733156085694252 -0.26550718424413416 -0.34668868811079712 -0.14423002386876482 -0.13393160899338274 0.12143575189894529 -0.075959027683990071 -0.20645261388863453 0.13951485876179773 0.19227064016500167 -0.20439927050326587 -0.1559946401206464 -0.11391202946990606 0.19018998431431175 -0.29305600624703082 -0.30811431719186166 0.070275920999113145 0.25159314378788789 0.12943014242432596 -0.02098437671081628 -0.070491090717032509 0.27218808953381712 0.16989552509395528 0.1017758188180428;0.27495153253349275 -0.10795895115051682 -0.091895344974420687 -0.065343460150199484 0.35388374806756934 0.13687054999109705 -0.10410721343041038 0.062960843829771476 -0.11504769411228255 -0.11903471411334628 -0.091420915017337651 -5.5002508509108478e-05 -0.01322283076207105 0.081514460339820613 0.28517360551376353 0.018774208574494421 -0.01379240625983779 0.13948660558630102 0.2543301241458899 -0.0061621727074656699 0.23146911854205052 0.01190054968603982 -0.084331463145916982 -0.24204938031145251 -0.043763953201960637 -0.277799936772259 0.081553237794188493 0.031685842001792142 -0.19714037740638868 0.0093851709503674063 -0.094996447701083578 0.086786208938370621 0.095185400904653605 0.082926850565138446 0.072647803286201448 0.0066169922268728039 -0.04179379185353882 -0.17439821528541122 -0.1882242649594808 -0.26001872878828192 0.19549052210433845 0.26143127180239861 -0.098777893976402673 -0.028510738804452321 -0.21684481673466013 -0.078198672909073591 -0.28285176727144529 -0.27561271841507556 0.016560273518826822 -0.088466356205375338 0.22629380992642445 -0.1601726579282656 0.10258011919679828 -4.8157718137650535e-05 0.15804380648570807 -0.25760356490618302 0.18756690518093136 -0.20510981245383064 -0.094910859670083891 0.14791574388022999 0.25648999302600389 -0.080564028422849862 0.099977362335927619 -0.28790308191755754 -0.21963385816016337 0.17030007753814766 0.10600474380297845 0.26691384284216912 0.17624082862651458 0.21618917980545932 -0.20474153096811948 0.048648649434968327 -0.0096625916570349211 0.15992321177608493 -0.16433661903420371 -0.25093802910804036 -0.20590437457203645 -0.031129999553584996 0.071243503670430017];

% Layer 2
b2 = 0.059563971571125397;
LW2_1 = [0.38448090165813514 -0.98844203817118403 -0.04664442705118356 -0.24458766679211927 -0.343210424290459 0.18508137116331641 0.68017858498215145 -0.33067156364574746 0.16284242065825172 -0.46634272083336503 0.67187550236193228 -1.1097887523788641 0.12756915349679709 -0.21003383399590764 0.48187000191612206];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.000992555831265509;
y1_step1.xoffset = 6395;

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX, X = {X}; end;

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},2); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS
    
    % Input 1
    temp = removeconstantrows_apply(X{1,ts},x1_step1);
    Xp1 = mapminmax_apply(temp,x1_step2);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = repmat(b2,1,Q) + LW2_1*a1;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a2,y1_step1);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX, Y = cell2mat(Y); end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Remove Constants Input Processing Function
function y = removeconstantrows_apply(x,settings)
y = x(settings.keep,:);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end
