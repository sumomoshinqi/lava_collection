�  �ԭ��:int isascii(char ch);
����:��ch���ַ�(ASCII���е�0-127)���ط�0ֵ,���򷵻�0��
����:
#include <string.y>
void main()
{char ch;
 ch='a';
 if(isascii(ch))printf("%c���ַ�\n",ch);
 else printf("%c�����ַ�\n",ch);
 getchar();
}
ԭ��:void strlwr(char &str[]);
����:���ַ���str�еĴ�д��ĸȫ��ת����Сд��ĸ��
����:
#include <string.y>
char str[]="OIHoie134";
void main()
{strlwr(str);
 printf("%s\n",str);
 getchar();
}
ԭ��:void strupr(char &str[]);
����:���ַ���str�е�Сд��ĸȫ��ת���ɴ�д��ĸ��
����:
#include <string.y>
char str[]="OIHoie134";
void main()
{strupr(str);
 printf("%s\n",str);
 getchar();
}
ԭ��:void strset(char &str[],char ch);
����:��һ�����е������ַ�����Ϊָ���ַ���
����:
#include <string.y>
char str[]="oiJNsIF38 i";
void main()
{strset(str,'0');
 printf("%s\n",str);
 getchar();
}
ԭ��:void strnset(char &str[],char ch,int n);
����:�����ַ���str�е�ǰn���ַ�ȫΪ�ַ�c��
����:
#include <string.y>
char str[]="HB72nfs wH7";
void main()
{strnset(str,'0',4);
 printf("%s\n",str);
 getchar();
}
ԭ��:void memccpy(int dest,int src,char c,int n);
����:��src��ָ����ڴ渴��n���ַ���dest��ָ����ڴ��У�������ƹ������������ַ�c��ֹͣ���ơ�
����:
#include <string.y>
char buf[]={1,2,3,4,5,6};
void main()
{char t[6];
 char i;
 memset(t,0,6);
 memccpy(t,buf,4,5);
 for(i=0;i<6;i++)printf("%d ",t[i]);
 getchar();
}
ԭ��:void strncpy(char &s1[],char &s2[],int len);
����:�����ַ���s2��s1�У���ิ��len���ַ���
����:
#include <string.y>
char s2[]="abcdefghi";
void main()
{char s1[10];
 strncpy(s1,s2,5);
 printf("%s\n",s1);
 getchar();
}
ԭ��:int memchr(int s,char c,int n);
����:��s��ָ����ڴ��ǰn���ַ��������ַ�c�����������������ָ��ָ���ַ�c��һ�γ��ֵ�λ�ã����򷵻�NULL��
����:
#include <string.y>
char buf[]={1,2,3,4,5,6,0};
void main()
{int p;
 char i;
 p=memchr(buf,4,6);
 while(*p)printf("%d ",*p++);
 getchar();
}
ԭ��:int strrchr(char &str[],char c);
����:���ַ���str�������ַ�c�����������������ָ��ָ���ַ�c���һ�γ��ֵ�λ�ã����򷵻�NULL��
����:
#include <string.y>
char str[]="abcfdefgh";
void main()
{printf("%s\n",strrchr(str,'f'));
 getchar();
}
ԭ��:int memcmp(int s1,int s2,int n);
����:�Ƚ�s1��ָ����ڴ��s2��ָ����ڴ��ǰn���ַ�������ֵ��s1��s2��һ����ͬ���ַ���ֵ��
����:
#include <string.y>
char s1[]={0,5,0,6,8,9};
char s2[]={0,5,0,6,0,0};
void main()
{printf("%d\n",memcmp(s1,s2,3));
 getchar();
}
ԭ��:int memicmp(int s1,int s2,int n);
����:�Ƚ�s1��ָ����ڴ��s2��ָ����ڴ��ǰn���ַ������Դ�Сд������ֵ��s1��s2��һ����ͬ���ַ���ֵ��
����:
#include <string.y>
char s1[]={0,'A','b',6,8,9};
char s2[]={0,'a','B',6,0,0};
void main()
{printf("%d\n",memicmp(s1,s2,6));
 getchar();
}
ԭ��:int stricmp(char &s1[],char &s2[]);
����:�Ƚ��ַ���s1���ַ���s2�����Դ�Сд������ֵ��s1��s2��һ����ͬ���ַ���ֵ��
����:
#include <string.y>
char s1[]="onfoOIH";
char s2[]="oNFOoih";
void main()
{printf("%d\n",stricmp(s1,s2));
 getchar();
}
ԭ��:int strncmp(char &s1[],char &s2[],int len);
����:�Ƚ��ַ���s1���ַ���s2�����Ƚ�len���ַ�������ֵ��s1��s2��һ����ͬ���ַ���ֵ��
����:
#include <string.y>
char s1[]="fwsegghrrh";
char s2[]="fwsegherte";
void main()
{printf("%d\n",strncmp(s1,s2,6));
 getchar();
}
ԭ��:int strnicmp(char &s1[],char &s2[],int len);
����:�Ƚ��ַ���s1���ַ���s2�����Դ�Сд�����Ƚ�len���ַ�������ֵ��s1��s2��һ����ͬ���ַ���ֵ��
����:
#include <string.y>
char s1[]="fWsegghrrh";
char s2[]="fwSEgherte";
void main()
{printf("%d\n",strnicmp(s1,s2,7));
 getchar();
}
ԭ��:void strncat(char &s1[],char &s2[],int len);
����:���ַ���s2���ӵ�s1β�����������len���ַ���
����:
#include <string.y>
char s1[30]="jh4aefret";
char s2[]="sdfoinn";
void main()
{strncat(s1,s2,5);
 printf("%s\n",s1);
 getchar();
}
ԭ��:void strrev(char &str[]);
����:���ַ���str�е��ַ�ȫ���ߵ�˳���������С�
����:
#include <string.y>
char str[]="jh4aefret";
void main()
{strrev(str);
 printf("%s\n",str);
 getchar();
}
ԭ��:int strpbrk(char &s1[],char &s2[]);
����:���ַ���s1�в��Ҹ����ַ���s2�е��ַ�
����:
#include <string.y>
char s1[]="mgjyly9372bhxmz.";
char s2[]=".,94";
void main()
{printf("%s",strpbrk(s1,s2));
 getchar();
}   >	 �d              isascii             �#)? ?>	 �d              strlwr              689.   7 � 6�58;  ?>	 �d  /            strupr              689N   7 � 6�58;3  ?> �d  O            strset              	  ��?> �d  _            strnset              �  �5389�   �  58 	  �?> �d  �            memccpy             �  58  489�    !7	  !65 /89�  ? � 8;�  ?> �d  �            strncpy             � 	  !658	  !7 58 	 �	  !7 58?> �d �            memchr              �  58  489<   !6	 /891   !? � 8;  ?> �d ?           strrchr             �  58 �  	 �589o  �  � 58;L  ? ?> �d v           memcmp              �  58  489�  �   !65 � 	  !65089�   "? � 8;�  ?> �d �           memicmp             �  58  489  �   !6�5 � 	  !6�5089   "? � 8;�  ?> �d            stricmp             �  �5 � 	 �5489B  �  58 �  58  489�  �   !6�5 � 	  !6�5089�   "? � 8;K  ?> �d �           strncmp             �   !658  !7 58 � 	  !658	  !7 58 �  	 �58  !7 58	  !7 58 ? ?> �d �           strnicmp            �  �5 � 	 �5489"  �  58  3898  �  58 �  58  489�  �   !6�5 � 	  !6�5089y   "? � 8;A  ?> �d  �           strncat             � 	  !658	  !7 58 	 �	  !7 58?> �d  �           strrev             	 �  58 �  �F 58	  489  �  	 !658 	 � !7  !658  �  !7 58;� ?> �d            strpbrk             � 	 �58 �  �  558  489~  �  	  !6�5 4 )( '89s  �  58 � 8;9  ? ?