a  Z作者:gameghost
原型:void SetRange(int MRangeStart, int MRangeSize);
功能:设置动态内存起始地址和大小。
说明:使用free或malloc函数前必须先调用该函数设置动态内存起始地址，否则动态内存起始地址默认为0x5000，大小为0x2000（自顶向下分配内存空间）。lava 20k（pc2000,nc2000,nc3000,tc1000(s),tc808）的机型的动态内存起始地址最大为0x7000。lava 8k（pc1000c,pc1300,pc2300,nc1020,CC800,CC880,CC980）的机型的动态内存起始地址最大为0x4000。TC800的动态内存起始地址最大为0x8000。

原型:int malloc(int size);
功能:申请变量空间。
说明:size为要申请的空间的大小，成功则返回地址，否则返回0。
注意:malloc和free函数要成对出现（申请的变量空间在不使用后，要用free函数释放申请的空间），否则会造成内存泄漏！

原型:void free(int pointer);
功能:释放pointer指向的内存空间。
说明:在释放以后最好将pointer初始化为0，以防被再次使用！

举例:
#include <stdio.y>
#include <malloc.y>

struct student
{
 char name[20];
 int score;
 struct student &next;
};

void main()
{
 int i, n;
 struct student& p, q, head = 0;

 SetRange(0x4000, 0x2000);//以0x4000向下作为动态内存，大小为0x2000
 SetScreen(0);
 scanf("Input member:","%2d", &n);
 for (i = 0; i < n; i++)
 {
  &p = malloc(sizeof(struct student));
  if (!&p)
  {
   printf("内存分配失败！\n");
   getchar();
   return;
  }
  scanf("name:", "%20s", p.name);
  scanf("score:", "%2d", &p.score);
  if (!&head)//建立链表
  {
   &head = &p;
  }
  else
  {
   &q.next = &p;
  }
  &q = &p;
  &p.next = NULL;
 }
 &p = &head;
 while (&p != NULL)
 {
  printf("name:%s score:%d\n", p.name, p.score);
  getchar();
  &q = &p;
  &p = p.next;
  free(&q);//释放空间
 }
}  A    PA    A    �> 㩳               SetRange               58  	 58   58?�> 㩳              malloc              �   58  489    N  89 ;~     N    4'89�           !E 58 �     !E 58;P      289     389�   �  	 �  E 5!58      	 "58    58       �  $58 E ? �     �#!E 58;2    !   !3896  ?    �   $58    !E 58 E ? ?�>	 㩳               free                �  F 58      �#58?