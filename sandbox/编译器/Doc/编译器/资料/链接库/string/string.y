{  t原型:int isascii(char ch);
功能:若ch是字符(ASCII码中的0-127)返回非0值,否则返回0。
举例:
#include <string.y>
void main()
{
 char ch;

 ch = 'a';
 if (isascii(ch))
 {
  printf("%c是字符\n", ch);
 }
 else
 {
  printf("%c不是字符\n", ch);
 }
 getchar();
}
原型:void strlwr(char &str[]);
功能:将字符串str中的大写字母全部转换成小写字母。
举例:
#include <string.y>
char str[] = "OIHoie134";
void main()
{
 strlwr(str);
 printf("%s\n", str);
 getchar();
}
原型:void strupr(char &str[]);
功能:将字符串str中的小写字母全部转换成大写字母。
举例:
#include <string.y>
char str[] = "OIHoie134";
void main()
{
 strupr(str);
 printf("%s\n", str);
 getchar();
}
原型:void strset(char &str[], char ch);
功能:将一个串中的所有字符都设为指定字符。
举例:
#include <string.y>
char str[] = "oiJNsIF38 i";
void main()
{
 strset(str, '0');
 printf("%s\n", str);
 getchar();
}
原型:void strnset(char &str[], char ch, int n);
功能:设置字符串str中的前n个字符全为字符c。
举例:
#include <string.y>
char str[] = "HB72nfs wH7";
void main()
{
 strnset(str, '0', 4);
 printf("%s\n", str);
 getchar();
}
原型:void memccpy(int dest, int src, char c, int n);
功能:从src所指向的内存复制n个字符到dest所指向的内存中，如果复制过程中遇到了字符c则停止复制。
举例:
#include <string.y>
char buf[] = {1,2,3,4,5,6};
void main()
{
 char t[6];
 char i;

 memset(t, 0, 6);
 memccpy(t, buf, 4, 5);
 for (i = 0; i < 6; i++)
 {
  printf("%d ", t[i]);
 }
 getchar();
}
原型:void strncpy(char &s1[], char &s2[], int len);
功能:复制字符串s2到s1中，最多复制len个字符。
举例:
#include <string.y>
char s2[] = "abcdefghi";
void main()
{
 char s1[10];

 strncpy(s1, s2, 5);
 printf("%s\n", s1);
 getchar();
}
原型:int memchr(int s, char c, int n);
功能:在s所指向的内存的前n个字符中搜索字符c。如果搜索到，返回指针指向字符c第一次出现的位置；否则返回NULL。
举例:
#include <string.y>
char buf[] = {1,2,3,4,5,6,0};
void main()
{
 int p;
 char i;

 p = memchr(buf,4,6);
 while (*p)
 {
  printf("%d ", *p++);
 }
 getchar();
}
原型:int strrchr(char &str[], char c);
功能:在字符串str中搜索字符c。如果搜索到，返回指针指向字符c最后一次出现的位置；否则返回NULL。
举例:
#include <string.y>
char str[] = "abcfdefgh";
void main()
{
 printf("%s\n", strrchr(str, 'f'));
 getchar();
}
原型:int memcmp(int s1, int s2, int n);
功能:比较s1所指向的内存和s2所指向的内存的前n个字符。返回值是s1与s2第一个不同的字符差值。
举例:
#include <string.y>
char s1[] = {0,5,0,6,8,9};
char s2[] = {0,5,0,6,0,0};
void main()
{
 printf("%d\n", memcmp(s1, s2, 3));
 getchar();
}
原型:int memicmp(int s1, int s2, int n);
功能:比较s1所指向的内存和s2所指向的内存的前n个字符，忽略大小写。返回值是s1与s2第一个不同的字符差值。
举例:
#include <string.y>
char s1[] = {0,'A','b',6,8,9};
char s2[] = {0,'a','B',6,0,0};
void main()
{
 printf("%d\n", memicmp(s1, s2, 6));
 getchar();
}
原型:int stricmp(char &s1[], char &s2[]);
功能:比较字符串s1和字符串s2，忽略大小写。返回值是s1与s2第一个不同的字符差值。
举例:
#include <string.y>
char s1[] = "onfoOIH";
char s2[] = "oNFOoih";
void main()
{
 printf("%d\n", stricmp(s1, s2));
 getchar();
}
原型:int strncmp(char &s1[], char &s2[], int len);
功能:比较字符串s1和字符串s2，最多比较len个字符。返回值是s1与s2第一个不同的字符差值。
举例:
#include <string.y>
char s1[] = "fwsegghrrh";
char s2[] = "fwsegherte";
void main()
{
 printf("%d\n", strncmp(s1, s2, 6));
 getchar();
}
原型:int strnicmp(char &s1[], char &s2[], int len);
功能:比较字符串s1和字符串s2，忽略大小写，最多比较len个字符。返回值是s1与s2第一个不同的字符差值。
举例:
#include <string.y>
char s1[] = "fWsegghrrh";
char s2[] = "fwSEgherte";
void main()
{
 printf("%d\n", strnicmp(s1, s2, 7));
 getchar();
}
原型:void strncat(char &s1[], char &s2[], int len);
功能:将字符串s2添加到s1尾部，最多添加len个字符。
举例:
#include <string.y>
char s1[30] = "jh4aefret";
char s2[] = "sdfoinn";
void main()
{
 strncat(s1, s2, 5);
 printf("%s\n", s1);
 getchar();
}
原型:void strrev(char &str[]);
功能:将字符串str中的字符全部颠倒顺序重新排列。
举例:
#include <string.y>
char str[] = "jh4aefret";
void main()
{
 strrev(str);
 printf("%s\n",str);
 getchar();
}
原型:int strpbrk(char &s1[], char &s2[]);
功能:在字符串s1中查找给定字符集s2中的字符
举例:
#include <string.y>
char s1[] = "mgjyly9372bhxmz.";
char s2[] = ".,94";
void main()
{
 printf("%s", strpbrk(s1, s2));
 getchar();
}   �>	 㩳              isascii             �#)? ?�>	 㩳               strlwr              6890   7 � 6�58;  ?�>	 㩳               strupr              689Q   7 � 6�58;6  ?�> 㩳               strset              	  劕?�> 㩳               strnset              �  �5389�   �  58 	  �?�> 㩳               memccpy             �  58  489�    !7	  !65 /89�  ? � 8;�  ?�> 㩳               strncpy             � 	  !658	  !7 58 	 �	  !7 58?�> 㩳              memchr              �  58  489D   !6	 /899   !? � 8;  ?�> 㩳              strrchr             �  58 �  	 �589x  �  � 58;U  ? ?�> 㩳              memcmp              �  58  489�  �   !65 � 	  !65089�   "? � 8;�  ?�> 㩳              memicmp             �  58  489"  �   !6�5 � 	  !6�5089   "? � 8;�  ?�> 㩳              stricmp             �  �5 � 	 �5489N  �  58 �  58  489�  �   !6�5 � 	  !6�5089�   "? � 8;W  ?�> 㩳              strncmp             �   !658  !7 58 � 	  !658	  !7 58 �  	 �58  !7 58	  !7 58 ? ?�> 㩳              strnicmp            �  �5 � 	 �54890  �  58  389F  �  58 �  58  489�  �   !6�5 � 	  !6�5089�   "? � 8;O  ?�> 㩳               strncat             � 	  !658	  !7 58 	 �	  !7 58?�> 㩳               strrev             	 �  58 �  凢 58	  489*  �  	 !658 	 � !7  !658  �  !7 58;� ?�> 㩳              strpbrk             � 	 �58 �  �  558  489�  �  	  !6�5 4 )( '89�  �  58 � 8;J  ? ?