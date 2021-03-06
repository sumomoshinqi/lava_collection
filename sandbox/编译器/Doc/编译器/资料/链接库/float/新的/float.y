"  "注意：浮点数采用IEEE标准存储,由于LavaX1.0不支持浮点数,所以浮点数用long型存储以下浮点数均采用long型

原型:int ftoa(long f,char &str[]);
功能:将浮点数转换为字符串
说明:f为浮点数,转换后存于str中,返回str,该函数用于输出浮点数（输出字符串为科学记数法表示浮点数）
举例:
#include <float.y>
void main()
{
 long a;//定义long型的浮点数
 char str[30];

 a = atof("3.1415926");
 SetScreen(1);
 printf("pi= %s\n", ftoa(a, str));
 getchar();
}
原型:long atof(char &str[]);
功能:将字符串转换为浮点数
说明:用于输入浮点数,浮点数可以使用科学记数法（如atof("3.1415926")或atof("-3.22665e-12")）
举例:
#include <float.y>
void main()
{
 long a;//定义long型的浮点数
 char str[30];

 a = atof("3.1415926");
 SetScreen(1);
 printf("pi= %s\n", ftoa(a, str));
 getchar();
}
原型:long itof(long i);
功能:将整数换为浮点数
说明:i为整数,返回long型浮点数
举例:
#include <float.y>
void main()
{
 char str[30];

 SetScreen(1);
 printf("%s\n", ftoa(itof(35), str));
 getchar();
}
原型:long ftoi(long f);
功能:将浮点数换为整数
说明:f为long型浮点数,返回浮点数f的整数部分
举例:
#include <float.y>
void main()
{
 long f;

 f = atof(".1415");
 SetScreen(1);
 printf("%d\n", ftoi(f));
 getchar();
}
原型:long fminus(long f);
功能:将浮点数换为负的浮点数
说明:f为long型浮点数,返回负的浮点数f
举例:
#include <float.y>
void main()
{
 char str[30];
 long f;

 f = atof("6.141");
 SetScreen(1);
 printf("%d\n", ftoa(fminus(f), str);
 getchar();
}
原型:long fadd(long f1, long f2);
功能:浮点数加法
说明:返回浮点数f1加浮点数f2,返回值为long型浮点数
举例:
#include <float.y>
void main()
{
 char str[30];
 long a, b, c;

 a = atof("6.141");
 b = atof("1.2");
 c = fadd(a,b);
 SetScreen(1);
 printf("%s\n", ftoa(a, str);
 printf("+%s\n", ftoa(b, str);
 printf("=%s\n", ftoa(c, str);
 getchar();
}
原型:long fsub(long f1, long f2);
功能:浮点数减法
说明:返回浮点数f1减去浮点数f2,返回值为long型浮点数
举例:
#include <float.y>
void main()
{
 char str[30];
 long a, b, c;

 a = atof("6.141");
 b = atof("1.2");
 c = fsub(a,b);
 SetScreen(1);
 printf("%s\n", ftoa(a, str);
 printf("-%s\n", ftoa(b, str);
 printf("=%s\n", ftoa(c, str);
 getchar();
}
原型:long fmul(long f1, long f2);
功能:浮点数乘法
说明:返回浮点数f1乘以浮点数f2,返回值为long型浮点数
举例:
#include <float.y>
void main()
{
 char str[30];
 long a, b, c;

 a = atof("6.141");
 b = atof("1.2");
 c = fmul(a,b);
 SetScreen(1);
 printf("%s\n", ftoa(a, str);
 printf("*%s\n", ftoa(b, str);
 printf("=%s\n", ftoa(c, str);
 getchar();
}
原型:long fdiv(long f1, long f2);
功能:浮点数除法
说明:返回浮点数f1除以浮点数f2,返回值为long型浮点数
举例:
#include <float.y>
void main()
{
 char str[30];
 long a, b, c;

 a = atof("6.141");
 b = atof("1.2");
 c = fdiv(a,b);
 SetScreen(1);
 printf("%s\n", ftoa(a, str);
 printf("/%s\n", ftoa(b, str);
 printf("=%s\n", ftoa(c, str);
 getchar();
}
原型:long fcmp(long f1, long f2);
功能:浮点数比较
说明:如果f1==f2则返回0,f1>f2则返回1,f1<f2则返回-1
举例:
#include <float.y>
void main()
{
 char str[30];
 long a, b;
 int c;

 a = atof("6.141");
 b = atof("1.2");
 c = fcmp(a,b);
 SetScreen(1);
 printf("%s\n", ftoa(a, str);
 if (c > 0)
 {
  printf(">\n");
 }
 else if (c < 0)
 {
  printf("<\n");
 }
 else
 {
  printf("==\n");
 }
 printf("%s\n", ftoa(b, str);
 getchar();
}
原型:long fabsf(long f);
功能:取浮点数绝对值
说明:返回浮点数的绝对值
举例:
#include <float.y>
void main()
{
 long a, b;
 char str[30], buf[30];

 a = atof("-3.258");
 b = fabsf(a);
 SetScreen(1);
 printf("|%s|\n=%s\n", ftoa(a, str), ftoa(b, buf));
 getchar();
}
原型:long forml(int formula,int type,...);
功能:求计算表达式的值。
说明:1.formula为指定格式的混合运算表达式，后面跟要参与运算的变量，变量的类型由格式符%进行说明: %d 十进制整数；%s 字符串表示的数值，可以是整数形式，如:"-100"，也可以是小数形式,如:"3.14159"；%f 浮点型变量。
  2.运算表达式目前支持以下运算浮：( )  */  +-  > >= <= != ==  （优先级依次降低）。以下表达式都是合法的：
　"(%d+%d)*%d"
  "-%d*%d"
  "%d>=%d"
  "%d+%d*(%d>%d)"
  ...
其中逻辑运算成立为浮点型的-1(0xbf800000),不成立为浮点型的0(0x00000000)。
　3.type为函数的返回类型，定义如下：'d' 整形，'f' 浮点型，'s'字符串地址。
举例:
#include <float.y>
void main()
{
 int i,deg;
 SetScreen(1);
 for(i=0;i<5;i++)
 {
  deg=45*i;
  printf("%d°=%s\n",deg,forml("%d*%s/%d",'s',deg,"3.14159265",180));
 }
 getchar();
} 
原型:long ldexpf(long f, char exp);
功能:计算并返回f*2^exp的值
举例:
#include <float.y>
void main()
{
 long a, b;
 char buf[30];

 a = atof("-3.258");
 b = ldexpf(a,2);
 SetScreen(1);
 printf("%s\n", ftoa(b, buf));
 getchar();
}
原型:long frexpf(long f, int &exp);
功能:把参量f分解成一个0.5~1范围内的尾数和一个整型指数,即f=尾数*2^exp,其中尾数由函数返回,指数存储在exp（只能是int型变量）中
举例:
#include <float.y>
void main()
{
 long f, r;
 int exp;
 char buf[30];

 f = atof("-3.258");
 r = frexpf(f, &exp);//注意后面一个参数是&exp（exp只能是int型变量）
 SetScreen(1);
 printf("%s\n%d\n", ftoa(r, buf), exp);
 getchar();
}
原型:long modff(long f, long &iptr);
功能:将浮点数f分解成整数部分和小数部分；其中小数由函数返回,整数（也是浮点数）则存储在iptr（只能是long型浮点数）中
举例:
#include <float.y>
void main()
{
 long f, fm, fi;
 char buf[30];

 f = atof("-3.258");
 fm = modff(f, &fi);//注意后面一个参数是&fi（fi只能是long型浮点数）
 SetScreen(1);
 printf("%s\n", ftoa(fm, buf));
 printf("%s\n", ftoa(fi, buf));
 getchar();
}
原型:long fmodf(long f1, long f2);
功能:返回浮点数f1/f2的余数,返回值为long型浮点数
举例:
#include <float.y>
void main()
{
 long a, b, c;
 char buf[30];

 a = atof("-3.258");
 b = atof("6.85");
 c = fmodf(a,b);
 SetScreen(1);
 printf("%s\n", ftoa(c, buf));
 getchar();
}
原型:long ceilf(long f);
功能:返回不小于浮点数f的最小整数,返回值为整数
举例:
#include <float.y>
void main()
{
 long a, b;
 char buf[30];

 a = atof("-3.258");
 b = ceilf(a);
 SetScreen(1);
 printf("%d\n", b);
 getchar();
}
原型:long floorf(long f);
功能:返回不大于浮点数f的最大整数,返回值为整数
举例:
#include <float.y>
void main()
{
 long a, b;
 char buf[30];

 a = atof("-3.258");
 b = floorf(a);
 SetScreen(1);
 printf("%d\n", b);
 getchar();
}
原型:long sqrtf(long f);
功能:返回根号浮点数f的值,返回值为浮点数
举例:
#include <float.y>
void main()
{
 long a, b;
 char buf[30];

 a = atof("3.258");
 b = sqrtf(a);
 SetScreen(1);
 printf("%s\n", ftoa(b, buf));
 getchar();
}
原型:long logf(long f);
功能:返回ln(f)的值（以e为底）,返回值为浮点数
举例:
#include <float.y>
void main()
{
 long a, b;
 char buf[30];

 a = atof("3.258");
 b = logf(a);
 SetScreen(1);
 printf("%s\n", ftoa(b, buf));
 getchar();
}
原型:long log10f(long f);
功能:返回log(f)的值（以10为底）,返回值为浮点数
举例:
#include <float.y>
void main()
{
 long a, b;
 char buf[30];

 a = atof("3.258");
 b = log10f(a);
 SetScreen(1);
 printf("%s\n", ftoa(b, buf));
 getchar();
}
原型:long sinf(long f);
功能:返回浮点数f的正弦值,返回值为浮点数,f以弧度表示
举例:
#include <float.y>
void main()
{
 int i, x1, y1, x2, y2; 
 long pi, offset, f180, f36;//浮点数

 pi = atof("3.14159265");//或pi=0x40490FDB;
 offset = atof("40.5");//或offset=0x42220000;
 f180 = itof(180);//或f180=0x43340000;
 f36 = itof(36);//或f36=0x42100000;
 x1 = 20;
 y1 = 40;
 ClearScreen();
 Refresh();
 Line(15, 40, 145, 40, 1);
 Line(20, 0, 20, 79, 1);
 for (i = 3; i <= 360; i = i + 3)
 {
  x2 = x1 + 1;
  y2 = ftoi(fsub(offset, fmul(sinf(fdiv(fmul(itof(i), pi), f180)), f36)));
  Line(x1, y1, x2, y2, 1);
  x1 = x2;
  y1 = y2;
 }
 getchar();
}
原型:long cosf(long f);
功能:返回浮点数f的余弦值,返回值为浮点数,f以弧度表示
原型:long tanf(long f);
功能:返回浮点数f的正切值,返回值为浮点数,f以弧度表示
原型:long cotf(long f);
功能:返回浮点数f的余切值,返回值为浮点数,f以弧度表示
原型:long powf(long f1,long f2);
功能:返回f1^f2的值（以f1为底,以浮点数f2为指数）,返回值为long型浮点数
原型:long sinhf(long f);
功能:返回浮点数f的双曲正弦值,返回值为浮点数,f以弧度表示
原型:long coshf(long f);
功能:返回浮点数f的双曲余弦值,返回值为浮点数,f以弧度表示
原型:long tanhf(long f);
功能:返回浮点数f的双曲正切值,返回值为浮点数,f以弧度表示
原型:long asinf(long f);
功能:返回浮点数f的反正弦值,返回值以弧度表示,f定义域为[-1,1]
原型:long acosf(long f);
功能:返回浮点数f的反余弦值,返回值以弧度表示,f定义域为[-1,1]
原型:long atanf(long f);
功能:返回浮点数f的反正切值,返回值以弧度表示
原型:long atan2f(long f1,long f2);
功能:返回浮点数f1/f2的反正切值,返回值以弧度表示
原型:long hypotf(long f1,long f2);
功能:返回据给定直角三角形的两个直角边算出其斜边的长度值   �> 㩳               GetArg             =    	 J �?	 L 89'  > �?	 L 897  > �?	 L 89G  > �?	 L 89W  > �?	 L 89g  > �?	 L 89w  > �?	 L 89�  > �?	 L 89�  > �?	 L	 89�  > 	�?	 L
 89�  > 
�?	 L 89�  > �?	 L 89�  > �?	 L 89�  > �?	 L 89�  > �?	 L 89 > �?	 L 89 > �?>  �?�>	 㩳              fminus                 �&? ?�> 㩳              fadd                )89@ 	 ?	 )89M  ? �  K �#58 � 	 K �#58  489�  �  58 � 	 58	 �  58 �  58 �  58 �  58 �  O  58 � 	 O  58 �  �� #  � $58	 � 	 �� #  � $58   �?4891   /89 ;C  �  J 58 �  8;� 	 � 	   ".58 89V  �  58 89i 	 � 	 58 �  	 !58 O  89�  �    �58 �  58;�  N  89�  �  58;�  ?    �#89�  #89�  �  E 58 �  K 58 � 8;�    � 489  �  J 58 �  8;�   �#J $ �� #$? ?�> 㩳              fsub                	    �&=/ ? ?�> 㩳              fmul                	 ')89e  ? �  	 &   �#58 �  K �#58 � 	 K �#58 �   !F~ 58 �  �� #  � $58	 � 	 �� #  � $58 �  K 	 K * �#	 K *K !	 �# K *K !58 O  89+  �  E� K 58;B  �  E@ K 58 �  8  �#J $ �� #$? ?�> 㩳              fdiv               	 )89o ��? )89{  ? �  	 &   �#58 �  K �#58 � 	 K �#58 �   "E~ 58 �  �� #  � $58	 � 	 �� #  � $58 	 489  �  J 58 �  8 �    58 �  58 89o  	 289Q  �   $58 �  	 "58 �  J 58 �  K 58;!   E �#J $ E K �� #$? ?�> 㩳              fcmp                	 /89�  ?;�  O  	 O  '89� 	  389� ?;� ��?;�  	 389� ?;� ��? ?�> 㩳              atof               	  � �  � 658 �89%   � L 893  � 	 58 烫�489`  �  G
  #!58 � 8;g  � 8 �  � 658 �8:3  �  8 O 89� 	 �  58 89�  �  58 � 58;!  L 89�  �   "58	 �  58 � 58;!  O 89  89  �  58 �   !58; ;! ; ;�  L. 89L  N 89? ;  � 58;�  L+  L- (89�  )89�  L- 89~  �    �58;�  L 89�  L- 89�  � 58;� ;  � 8;�  狶e 89�  M  M '89� ;  � 58;�  � )'89� ;� ;� ; ;� 	 )89  ? �  58 N  89f 	    �#89N 	 � 	 K ���#58 � 8;" 	 � 	 G 58 �  8;  89� 	    @489� 	 � 	 J 58 �  8;n 	 � 	 H 58 � 8;f 	    �#89� 	 #89� 	 � 	 E 58	 � 	 K ���#58 � 8;� 	   � 489	 	 � 	 J 58 �  8;�   E E~ �#J $	 �� #$? ?�> 㩳              ftoa                )89P	 	 0 �	 ? L��89j	 	 error �	 ? �  � 	 7 5558 O  89�	  � 58;�	  �  58 �  K �#F~ F 58 �  �� #  � $58 N  890
     @489	
  �  J 58 �  8 )89
 ;�
 ;�	  �  H 58 � 8 �  8 8:�	 ;�
  89�
     �#89}
  #89X
  � 8 �  K 58 � 8 )89y
 ;�
 ;8
  �  G 58 �  8 � 8 8:8
  89-  � 8 �  I
 58 �  H
 58 )89�
  89�
 	 E 	 	 凟 �	 7.58 89  � 58 89) 	 E 	 	 凟 �	 7 0$58;�
  �  8 89U 	 E 	 	 凟 �	 7-58 O  89w 	 	 �!e%d  �;�  89� 	 	 �!e+%d  �	 ? ?�> 㩳              itof                )89�  ? O  89�  �    �58 �  58;�  �  58	 � E~ 58    �#89  �  K 58	 � 8;�    � 4892  �  J 58	 �  8;  �� #�� /89V  �  58	 � 8 	 �#J $ �� #$? ?�> 㩳              ftoi                )89�  ?	 �  K �#E~ E 58 �  �� #  � $58 �  	 .58 O  89�  ? ? ?�>	 㩳              fabsf               ���#? ?�> 㩳              ldexpf              	 J !���#    �#$? ?�> 㩳              frexpf              �  K �#F~ 58	  � ���#   ?$? ?�> 㩳              modff               �  K �#F~ F 58 Q��89s 	  � ?;�  P  89� 	  � ? �  �� -#58	  � �   &58 )89�  ?   � 489�  �  J 58 �  8;�  O  89  �    �58;
  �  58  E E~ �#J $ �� #$? ?�> 㩳              fmodf              	 )89= ��? 	 =^  => 	 =Q ? ?�> 㩳              ceilf              	 �  =r 58	 O  89 	 ?;� 	 =�  =� O  89� 	 E ?	 ? ?�> 㩳              floorf             	 �  =r 58	 Q  89� 	 =�  =� N  89� 	 F ?	 ? ?�> 㩳              sqrtf               Q  89� ��?   �?/89  ?	 �   =
 58 � 	 �?=Q ī�>=/ 58 � 	  =^  =/ 58 �  ��=� 	  =^ =/ 58 #89�  �  �5?=Q 58 � 8  H =� ? ?�># 㩳              logf                Q  89� ��?	 �  ! =
 58 � 	    ?=8 58	 �5?=� N  89"  �     ?=8 58 � 	 ��=�    ?=/ 58;C ! �  8 �  ��=�    ?=/ 58 �   =^ 58 �   =Q 58 �  =~�=Q  :?岳=/ =^  =Q  =/ 58 � ! =� 58 儉^�=Q  =/   �1?=Q =/ ? ?�>	 㩳              log10f              =� 賉�>=Q ? ?�> 㩳              expf                O  89  �     �&58 � 58;  �  58 暱�3=� O  898   �??;[  r盉=� N  89[  89X ��? ? �  ;?=Q 58	 �  =r 58	 O  89� 	 �  8 	 =� =8    ?=� P  89� 	 � 8 � 	 =� 58 �    �1?=Q =8  儉^�=Q =8 58 �   =Q 58 �  S�;=Q   �>=/  =Q 58 �   [縇==Q    ?=/  =8 =^    ?=/ 58 �  	 � =� 58 89|   �? =^ ? ? ?�> 㩳              powf               	 )89�   �??	   �?/89�  ? Q  89�  ? =� 	 =Q =� ? ?�>	 㩳              sinhf               �  =� 58   �? =^ =8 ��=� ? ?�>	 㩳              coshf               �  =� 58   �? =^ =/ ��=� ? ?�> 㩳              tanhf               �  =� 58	 �   �? =^ 58 	 =8  	 =/ =^ ? ?�> �	 89�  �  ��?=/ 58 �  58;�  O  89�  �  ���#58 �    �58;�  �  58  IF=� N  89� ��? �  凒�>=Q    ?=/ =r 58 #89%  �     �&58 �  =� 58	 89N  �     ?=8 58 �   =>     I@=Q =8 =/  "獇:=Q =8 58 �   =Q 58 ��3=� N  89  �  [�.6=Q "睴�=/  =Q >�<=/  =Q お*�=/  =Q 58 �   =Q  =/ 58  &? ?�>	 㩳              sinf                )89"  ?  =r ? ?�>	 㩳              cosf                )89C   �?? =r ? ?�>% � ���# 蒃=� N  89s ��? O  89� ! �    �58;� ! �    ?58! �  凒"?=Q ! =/ =r 58 � ! =� 58 �   => 58 �     �?=Q =8  =/  "9=Q =8 58 ���#  �9=� O  89<  �  58 �   �?58;�  �   =Q 58 � �3慕 =Q  =Q  =/ 58 � u3< =Q 劬=/  =Q   �?=/ 58! #89� 	 89�     �& =^ ?    �& =^ ?;� 	 89�   =^ ?  =^ ? ?�>	 㩳              tanf                 =Q ? ?�>	 㩳              cotf                ���#`B�=� O  895     �#��$? =Q ? ?�>* � J   58J  J  �I?558 J  ��?58) � 	 58 �  ���#58   �9=� O  89� % �  58;�     ?=� N  89' ) � ) &58   �?=� N  89� ��?! �   �? =8 ��=� 58 � ! =� =�    �&58;8 ! �   =Q 58% �   e �! =Q ko?=/ ! =Q ! 嵄�=/ ! =Q 餚矦=/ =^ =Q =/ 58	 89�  O  89� ) J  =� % =/ ?) J  =� % =8 ?;�  O  89� ) J  =� % =/    �&?) J  =� % =/ ? ?�>	 㩳              asinf                 �?/89) ��??   ��/89= �煽? 89O   =C ? ?�>	 㩳              acosf                 �?/89h  ?   ��/89| �I@? 89�  =C ?��?? ?�>" 㩳              atanf               J 	 ! �  558J 	 �
?58J 	 ��?58J 	 �
�?58 �  ���#58   �?=� N  89  �   �? =^ 58! � 58 �0�>=� N  89b  � 壮�? =Q   �?=8 壮�? =/ =^ 58! � 8 ���#  �9=� P  89�  �   =Q 58 �  憜P� =Q �窬=/  =Q  =Q  犹�?=/ =^ =/ 58! N 89�  �     �&58 �  ! J 	 !58 O  89  �     �&58 ? ?�> 㩳              atan2f              )	 )'896 ��?	 ���# ���#=� P  89� 	 O  89�  	 =^ =�     �#�I@$=/ ? 	 =^ =� ?	  =^ =�    �&    �#��?$=/ ? ?�> 㩳              hypotf              �  ���#	 ���#=/ 58 �   =^ 58	 � 	  =^ 58   =Q 	 	 =Q =/ =� =Q ? ?�>"㩳              forml              �  =    �  J � �58" �  58$ � 58& �  58( �  58 �  58   489� ;�  � 8;r 	 �  J �  !6�58	 L+ 89� ( J * " E 58( J R +58( � 8	 L* 89 ( J * " E 58( J R *58( � 8	 L- 89R & ( /89- & J �  58& � 8( J * " E 58( J R -58( � 8	 L/ 89� ( J * " E 58( J R /58( � 8	 L> 89� ( J * " 58 J �  !E 6狶= 89� ( J R [58 � 8;� ( J R >58( � 8	 L< 89> ( J * " 58 J �  !E 6狶= 89* ( J R ]58 � 8;7 ( J R <58( � 8	 L! 89r ( J * " 58( J R ~58 � 8( � 8	 L= 89� ( J * " 58 J �  !E 6狶= 89�  � 8( J R =58( � 8	 L( 89� " � " E 58	 L) 89� " � " F 58	 L% 89� 	 �  J �  !E 6�58	 Ld 895 & J � $ J � =� 58	 Ls 89X & J � $ J � =� 58	 Lf 89w & J � $ J � 58& � 8$ � 8;� z � ( 58z 89�" ~ � ��58� �  58 �  58 ( 489  ;�  � 8;�  J * ~ 389� ~ �  J * 58� �  58;� | � � 58| N  89:  | F J * M��89/  ;:  | �  8;  � J R L+ 89s  | J � | J � � E J � =/ 58;�" � J R L- 89�  | J � | J � � E J � =8 58;�" � J R L* 89�  | J � | J � � E J � =Q 58;�" � J R L/ 89! | J � | J � � E J � =^ 58;�" � J R L> 89^! | J � | J � � E J � =� N  =� 58;�" � J R L[ 89�! | J � | J � � E J � =� P  =� 58;�" � J R L< 89�! | J � | J � � E J � =� O  =� 58;�" � J R L] 89" | J � | J � � E J � =� Q  =� 58;�" � J R L= 89^" | J � | J � � E J � =� L  =� 58;�" � J R L~ 89�" | J � | J � � E J � =� M  =� 58� J * ��58z �  8;� 	 � J � �58	 Lf 89�"  J � ?	 Ld 89�"  J � =r ? J � 
 =8	 ? ?