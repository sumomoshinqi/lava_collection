�  �ע��:�ÿ������fptr.y�������޷��Ż������˸ÿ�ĳ���

ԭ��:void qsort(int base, int n, int es, long funadd);
����:�����飨�����ṹ�����飬����������ȣ��������������������ǽ�����funadd��ָ�ĺ�������
˵��:baseΪ���飬nΪ����Ԫ�ظ�����esΪ����Ԫ�ش�С��funaddΪ�ȽϺ�����ַ���ص���������������ʽΪ:int compar(int, int);
����:
#include <sort.y>

long arr[] = {-5,9,1, 100000, 1, 320,0,7,6};

void print()
{
 int i;

 for (i = 0; i < sizeof(arr) / sizeof(arr[0]); i++)
 {
  printf("%d ", arr[i]);
 }
 printf("\n");
 getchar();
}

int cmparr(long &a, long &b)//a,bΪԪ�ص�ַ
{
 if (a < b) return(-1);
 if (a == b) return 0;
 return(1);
 /*
  * ���ϴ������������У����´����ǽ�������:
  * if (a < b) return(1);
  * if (a == b) return 0;
  * return(-1);
  *
  */
}

void main()
{
 SetScreen(1);
 print();
 qsort(arr, sizeof(arr) / sizeof(arr[0]), sizeof(arr[0]), cmparr);
 print();
}

ԭ��:int bsearch(int key, int base, int n, int es, long funadd);
����:ʹ�ö�Ԫ�����㷨�԰��������кõ����飨�����ṹ������ȣ��в������ݣ��ҵ��򷵻ظ����ݵ�ַ�����򷵻�0��
˵��:keyΪҪ���ҵ����ݵ�ַ��baseΪ���飬nΪ����Ԫ�ظ�����esΪ����Ԫ�ش�С��funaddΪ�ȽϺ�����ַ���ص���������������ʽΪ:int compar(int, int);������compar�ĵ�һ��������ָ��Ԫ�����ݴ��ڵڶ���������ָ��Ԫ����������뷵������������򷵻�0��С���򷵻ظ�����
����:
#include <sort.y>

char arr[][10] = {"123", "234", "afwe", "wfgg", "123", "ijgwe", "fwgge"};

void print()
{
 int i;

 for (i = 0; i < sizeof(arr) / sizeof(arr[0]); i++)
 {
  printf("%s ", arr[i]);
 }
 printf("\n");
 getchar();
}

int compar(char &a[], char &b[])
{
 return strcmp(a, b);
}

void main()
{
 int t;
 char a[10];

 SetScreen(1);
 print();
 qsort(arr, sizeof(arr) / sizeof(arr[0]), sizeof(arr[0]), compar);
 print();
 strcpy(a, "wfgg");
 t = bsearch(&a, arr, sizeof(arr) / sizeof(arr[0]), sizeof(arr[0]), compar);
 if (t)
 {
  printf("%s �ҵ���,��%d��\n", a, (t - arr) / sizeof(arr[0]));
 }
 else
 {
  printf("%s û�ҵ�!\n", a);
 }
 getchar();
}

ԭ��:int lfind(int key, int base, int n, int es, long funadd);
����:ʹ�����������㷨�����飨�����ṹ������ȣ��д�ͷ��βһ����������ݣ��ҵ��򷵻ظ����ݵ�ַ�����򷵻�0��
˵��:keyΪҪ���ҵ����ݵ�ַ��baseΪ���飬nΪ����Ԫ�ظ�����esΪ����Ԫ�ش�С��funaddΪ�ȽϺ�����ַ���ص���������������ʽΪ:int compar(int, int);������compar�����������ȽϺ���ͬ�򷵻�0�����򷵻ط�0.
����:
#include <sort.y>

char arr[][10] = {"123", "234", "afwe", "wfgg", "123", "ijgwe", "fwgge"};

void print()
{
 int i;

 for (i = 0; i < sizeof(arr) / sizeof(arr[0]); i++)
 {
  printf("%s ", arr[i]);
 }
 printf("\n");
 getchar();
}

int compar(char &a[], char &b[])
{
 return strcmp(a, b);
}

void main()
{
 int t;
 char a[10];

 SetScreen(1);
 print();
 strcpy(a, "wfgg");
 t = lfind(&a, arr, sizeof(arr) / sizeof(arr[0]), sizeof(arr[0]), compar);
 if (t)
 {
  printf("%s �ҵ���,��%d��\n", a, (t - arr) / sizeof(arr[0]));
 }
 else
 {
  printf("%s û�ҵ�!\n", a);
 }
 getchar();
}   �>	 � �  85   �   �  5 ?�> � 	 489.  �  58 � 	 58  489    =  P  89�   �   "58  289�  ; ;X     �   �   �   =  Q  89�   �   !58  289�  ;�  ;�     �   �   �;L     "  =(    !	   =(  ?�> �d               qsort                	 F  *!  =(  ?�>! �d              bsearch             �  � 	 5 F  *!58  189�  �   �   !K 5 =  58 O  89�  �   "58;�  N  89�  �   !58;�  ?;p  ?�> �d              lfind               � 	   *!58 � 	 58  4898    =  )89&  ? �   !58;  ?