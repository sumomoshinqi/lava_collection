�  �����:��̰�����
ԭ��:void settype(int type);
����:���û�ͼģ�͡�
˵��:ֻ������������ͼ������Ч��0:��ʵ�ߣ���0:�����ߡ�
ԭ��:void line(int x0,int y0,int x1,int y1,int type);
����:��ֱ�ߡ�
˵��:(x0,y0)��(x1,y1)ָ��ֱ�ߵ������˵����ꡣ
     type������ͼ��ʽ����ֵ�������£�
     type=0:2ɫģʽ�»����ߣ�16ɫ��256ɫģʽ���ñ���ɫ����
          1:2ɫģʽ�»����ߣ�16ɫ��256ɫģʽ����ǰ��ɫ����
          2:�ߵ����е�ȡ��
     type��bit6=1ʱ��ͼ�λ�������ͼ������ֱ������Ļ��ͼ
����:
#include <Graph.y>
void main()
{
 ClearScreen();
 Refresh();
 settype(1);
 line(1,0,159,79,1);
 getchar();
}
ԭ��:void circle(int x, int y, int r, int fill, int type);
����:��Բ��
˵��:(x,y)ָ��Բ�ģ�rָ���뾶��
     type������ͼ��ʽ����ֵ�������£�
     type=0:2ɫģʽ�»���Բ��16ɫ��256ɫģʽ���ñ���ɫ��Բ
          1:2ɫģʽ�»���Բ��16ɫ��256ɫģʽ����ǰ��ɫ��Բ
          2:Բ�����е�ȡ��
     type��bit6=1ʱ��ͼ�λ�������ͼ������ֱ������Ļ��ͼ
     fill=0:�����
          1:���
����:
#include <Graph.y>
void main()
{
 ClearScreen();
 Refresh();
 settype(1);
 circle(80, 40, 39, 0, 1);
 getchar();
}
ԭ��:void ellispe(int x, int y, int a, int b, int fill, int type);
����:����Բ��
˵��:(x,y)ָ��Բ�ģ�aΪ����᳤�ȣ�bΪ�ݰ��᳤�ȡ�
     type������ͼ��ʽ����ֵ�������£�
     type=0:2ɫģʽ�»�����Բ��16ɫ��256ɫģʽ���ñ���ɫ����Բ
          1:2ɫģʽ�»�����Բ��16ɫ��256ɫģʽ����ǰ��ɫ����Բ
          2:��Բ�����е�ȡ��
     type��bit6=1ʱ��ͼ�λ�������ͼ������ֱ������Ļ��ͼ
     fill=0:�����
          1:���
����:
#include <Graph.y>
void main()
{
 ClearScreen();
 Refresh();
 settype(1);
 ellipse(80, 40, 40, 30, 0, 1);
 getchar();
}
ԭ��:void drawpoly(int numpoint, int &points[][2], int type);
����:������Ρ�
˵��:numpoint:����ε���
     points:����ζ�����������飨x1,y1,x2,y2˳��
     type������ͼ��ʽ����ֵ�������£�
     type=0:2ɫģʽ�»��׶���Σ�16ɫ��256ɫģʽ���ñ���ɫ�������
          1:2ɫģʽ�»��ڶ���Σ�16ɫ��256ɫģʽ����ǰ��ɫ�������
          2:����ε����е�ȡ��
     type��bit6=1ʱ��ͼ�λ�������ͼ������ֱ������Ļ��ͼ
����:
#include <Graph.y>
int points[][2] = {0,0,10,20,150,70};
void main()
{
 ClearScreen();
 Refresh();
 settype(1);
 drawpoly(3, points, 1);
 getchar();
}
ԭ��:void MoveDown(int type);
����:ͼ��ȫ������һ���㡣
˵��:type=0:������ͼ��ȫ������һ���㣬type=0x40:��Ļͼ��ȫ������һ���㡣bit2-0: 1:copy 2:not 3:or 4:and 5:xor
����:
#include <Graph.y>
void main()
{
 int i;
 TextOut(77, 5, "��", 0x81);
 for (i = 0; i < 75; i++)
 {
  MoveDown(0);
  Refresh();
  Delay(10);
 }
 getchar();
}
ԭ��:void MoveUp(int type);
����:ͼ��ȫ������һ���㡣
˵��:type=0:������ͼ��ȫ������һ���㣬type=0x40:��Ļͼ��ȫ������һ���㡣bit2-0: 1:copy 2:not 3:or 4:and 5:xor
����:
#include <Graph.y>
void main()
{
 int i;

 TextOut(77, 5, "��", 0x81);
 for (i = 0; i < 75; i++)
 {
  MoveUp(0);
  Refresh();
  Delay(10);
 }
 getchar();
}
ԭ��:void Shutter(char &buf[]);
����:ͼ���԰�ҳ������ʽ��ʾ����Ļ�ϡ�
˵��:bufΪͼ�����ݵ�ַ��ͼ�δ�СΪ160*80��
����:
#include <Graph.y>
char logo[] = {......};//ʡ��
char pic[] = {};//ʡ��
void main()
{
 WriteBlock(0, 0, 160, 80, 1, logo);
 Refresh();
 Delay(400);
 Shutter(pic);
 getchar();
}
ԭ��:void DrawPoint(int x, int y, int weith, int height, char d, int type, char &buf[]);
����:��ͼ�ηŴ���ʾ��
˵��:bufΪͼ�����ݵ�ַ��type:1 ��������ͼ 0x41 ��Ļ��ͼ 0x43 ���ο�ͼ��d:�Ŵ�����
����:
#include <Graph.y>
char pic[] = {0,0,0,0,1,64,3,224,7,208,6,176,69,112,66,32,33,236,19,84,13,108,1,212,1,232,1,80,1,64,3,96};
void main()
{
 char d;

 while (getchar() != 27)
 {
  Refresh();
  ClearScreen();
  if (d > 4) d = 0;
  DrawPoint(1, 1, 16, 16, d, 1, pic);
  DrawPoint(85, 1, 16, 16, 4 - d, 1, pic);
  d++;
 }
}  �>	 �d               settype                58?�>* �d               line                �   "�58 � 	  "�58 �  J  "58 �  J 58! �   "J 58  389�  # �  58% �  58' �  58;�  # �  58% � 	 58' �  58# %  �) � 58# � ' 4897  O  89�   �   !58; % � 8 �  ! !58  89) ) � ) &589% # %  �;3 # %  �;�  ?�> � 89�   "	  !  !	  ! �  "	  "  !	  " �  "	  !  !	  ! �  "	  "  !	  " �;Y   !	  ! �  "	  ! �  !	  " �  "	  " �  !	  ! �  "	  ! �  !	  " �  "	  " �?�> �d               circle              	     =9  �  58 �  � 5 "58 �  489.  O  89�  �   J !E 58;�  �  8 �    "J !E 58  89  �  &589  	     =9 ;*  	     =9 ;� ?�> � 89�   "	  !  !	  ! �  "	  "  !	  " �;�   !	  ! �  "	  ! �  !	  " �  "	  " �?�>6 �d               ellipse            ) � - �  558 �   *58 �   *58! �  J 58# �  5 � 5-58+ �  581 � ! + *58 	 ) +   =0 % �    *" E K !58- 1 489 ) � 8- � - # !58% O  89� % � %  !- !58;� + �  81 � 1 ! "58% � %  !- !1 "58  89 5 � 5 &589�  	 ) +   =0 ;  	 ) +   =0 ;c % �  ) *) * ) *! + F *+ F *!  *" E K !58+ �  N  89 1 � 1 ! "58% N  89� % � %  !1 "58;� ) � 8- � - # !58% � %  !1 "- !58  89� 5 � 5 &589�  	 ) +   =0 ;  	 ) +   =0 ;[ ?�> �d               drawpoly            O 89" ? � 58  489�  F J E  J 	 !R F J E J 	 !R J E  J 	 !R J E J 	 !R � � 8;+  	 !R	 !R F J E  J 	 !R F J E J 	 !R �?�>]�d               MoveDown           	  �  �P 	 E �  �P 	 �?�>]�d               MoveUp             I �  �P 	 �  �P 	 E �?�>K�d               Shutter              �P 	 �I�  58IO 89� J�  58JO
 89� JJ I!G 	  JJ I!G !�J� 8;Y   �P	 ��2�I� 8;E ?�>) �d               DrawPoint          ' �  K 58! �  58& �  58&  489	 ( �  58( �  58( ' 489� # �  ' & *!( !658% �  58% O 89� $ � # �#K 58 LC 89i $ 89e  	   !	  !�;�  L 89�  	   !	  !$ �;�  	   !	  !$ �# � # J 58 �   !E 58% � 8;  ( � 8;�  � ! 58	 � 	  !E 58& � 8;� ?