j  c原型:int ChPath(char &path[]);
功能:切换目录。
说明:参数str为目录名，支持多级目录，如果不存在目录则会创建该目录，返回非0则切换失败，否则成功。
举例:
#include <dir.y>
void main()
{
 SetScreen(0);
 if (ChPath("/LavaData/code"))
 {
  printf("切换目录失败！\n");
 }
 else
 {
  printf("切换目录成功！\n");
 }
 getchar();
}

原型:void ChExt(char &str[],char &ext[]);
功能:更改文件名的后缀名。若没有后缀名则添加该后缀名。
说明:参数str为文件名，参数ext为要改成的后缀名。
举例:
#include <dir.y>
char str[] = "he.txt"
void main()
{
 SetScreen(1);
 printf("更改前的文件名为:%s\n", str);
 ChExt(str, "h");
 printf("更改后的文件名为:%s\n", str);
 getchar();
}

原型:int CheckExt(char &str[],char &ext[]);
功能:比较文件名的后缀名。
说明:参数str为文件名，参数ext为要比较的后缀名。相同则返回非0，不同返回0。
举例:
#include <dir.y>

void main()
{
 char name[16];

 ChDir("/");
 for (;;)
 {
  if (!FileList(name)) return;
  if (!strcmp(name,".."))
  {
   ChDir("..");
   continue;
  }
  if (ChDir(name)) continue;
  SetScreen(1);
  if (CheckExt(name, "txt")) printf("该文件是文本文件");
  if (CheckExt(name, "lav")) printf("该文件是LavaX文件");
  if (CheckExt(name, "bas")) printf("该文件是BASIC文件");
  if (CheckExt(name, "dat")) printf("该文件是数据文件");
  getchar();
 }
}

原型:void fnmerge(char &path[], char &dir[], char &fname[], char &ext[]);
功能:将dir,fname,ext组合成完整路径path。
说明:path为绝对路径，dir为目录，fname为文件名，ext为后缀。
举例:
#include <dir.y>

char dir[] = "/LavaData/code";
char fname[] = "mylive";
char ext[] = "txt";

void main()
{
 char path[57];

 SetScreen(1);
 fnmerge(path, dir, fname, ext);
 printf("绝对路径: %s\n", path);
 getchar();
}

原型:void fnsplit(char &path[], char &dir[], char &fname[], char &ext[]);
功能:将完整路径path拆分成dir,fname,ext。
说明:path为绝对路径，dir为目录，fname为文件名，ext为后缀。
举例:
#include <dir.y>

char path[] = "/LavaData/code/mylive.dat";

void main()
{
 char dir[43];
 char fname[16];
 char ext[10];

 SetScreen(1);
 fnsplit(path, dir, fname, ext);
 printf("目录: %s\n文件名: %s\n后缀: %s\n", dir, fname, ext);
 getchar();
}

原型:void PopDir(char &path[]);
功能:将路径的最底层目录删除。
说明:path为绝对路径
举例:
#include <dir.y>
char path[] = "/LavaData/code";
void main()
{
 SetScreen(1);
 printf("目录: %s\n", path);
 PopDir(path);
 printf("执行后: %s\n", path);
 getchar();
}

原型:void PushDir(char &path[], char &dir[]);
功能:将目录加入到绝对路径中。
说明:dir为目录，如:LavaData,文本文件等，path为绝对路径
举例:
#include <dir.y>
char path[] = "/LavaData";
char dir[] = "code";
void main()
{
 SetScreen(1);
 PushDir(path, dir);
 printf("目录:%s\n", path);
 getchar();
}

注意:以下函数对根目录下的文件无效！隐藏文件有效！且只用在文曲星上有效！

原型:int findfile(int from,int num,char &buf[]);
功能:取当前目录下的文件名
说明:from为第一个文件在目录中的序号，num为要取的文件名的个数，buf为内存地址，保存返回的文件名，每16个字节保存一个文件名，返回值为实际取得的文件名数，错误时返回-1

原型:int getfilenum(char &path[]);
功能:取指定目录下的文件数
说明:返回值为该目录下的文件个数，错误时返回-1

原型:int rename(char &old[],char &new[]);
功能:修改当前目录下的文件名（不能包含路径）
说明:old为旧文件名，new为新文件名，失败返回0，成功返回1，存在同名文件返回2

原型:int deletefile(char &path[]);
功能:删除文件（包括僵尸文件）
说明:成功返回非0值，失败返回0（可能会改变当前目录）

举例:
#include <dir.y>

void main()
{
 char path[20];
 char namebuf[5][16];
 int i, num, n;

 strcpy(path, "/LavaData");
 SetScreen(0);
 printf("在%s目录下\n文件总数:%d\n", path, getfilenum(path));
 ChDir(path);
 num = findfile(1, 5, namebuf);
 if (num < 0)
 {
  printf("Error");
  getchar();
  return;
 }
 ClearScreen();
 for (i = 0; i < num; i++)
 {
  TextOut(1, i << 4, namebuf[i], 129);
 }
 Refresh();
 getchar();
}   �> 㩳              ChPath              �  5�)89~  / �8 � 	 �  E 5/�589l   7 58	 �)89`  	 �8	 �)89`   7/58? 7/58;  	 �8	 �)89~  ? ?�> 㩳               ChExt               �  58 �  .�589�   �  E 58;�    389�   	 �;�   . � 	 �?�> 㩳              CheckExt            �  58 �  .�589	  �  E 58;�    389Q  �  58 689>  �   � 6�58;    58 	 �)? ?�> 㩳               fnmerge             	 �	 凬 89� 	 凢 	 !6M/ 89�  / �  �  !6M.   !6'89�  . �  �?�>! 㩳               fnsplit             �  58 �  /�589�  �  E 58;�   389B 	   �   "5� 	 !7 58 N 89>  F 	 !6L/ 89>  F 	 !7 58;M  	 !7 58 �  58 �  .�589y  �  E 58;W   389�    �   "F 5�  !7 58  �;�   �  !7 58?�> 㩳               PopDir              �  �5L 89� ?	 �  F 58	 N  89 	  !6L/ 89 	  !7 58?	 �  8;�  !7 58?�> 㩳               PushDir             凬 89B  / � 	 �?�> 㩳              findfile            �  r �5)89e ��?  J E  �8 �  	 J  癒 58 � )89�  .. � �  58  489�   J !6L� 89�  �  58;�   J !E 7 58 � 8;�  ? ?�>� 㩳              getfilenum          �)89 ��?	 �  r �5)89& ��?	  �  5�8	 �)89�  �	 �8� L� 89� 
 �  58
 O
 89� 
 � J E  L� 89� ;�  � 8;_ ;�  �  E
 58;5 	 � ? ?�>� 㩳              rename              �  r+ �589�  � 	 �5O  '89�  � � � �  55�8 �)89�  � �8 �  58 O� 89� �   !E �� L� 89; ;� 	 � �)89S  �?;s  � �)89s � �   F� �58 �  E 58; ;� � )89�  � ? O 89�  � 8 �  �8	   �89�  �? � ? � ?�>� 㩳              deletefile          �89� ? �) .. �'89� 	 �  r+ �589� 	 � �  5�8	 �)89� 
 �	 �8� �  58� O� 89� � 
 � !E �� L� 89h ;�  � �)89� � � 	 � F� 睩 58;� � � � E 58;> ; 	 � ?	 �)89^ 
 �	 �8	 �  �8� L� 893 � �  58� O� 89 � E 
 L� 89� ; � � � E 58;� 
 � 	 �8� � � � !58;^ ;Z 
 �	 �)89H ;� � � 	 睩 58;� 
 ��	 �  �8� � 
 	 �58	 �� ? ?