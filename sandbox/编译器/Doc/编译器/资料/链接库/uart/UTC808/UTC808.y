�  ��� ��:TC808

ԭ��:void CodeLoad();
����:���봮�ڻ�����
˵��:��ִ��uart_open֮��ִ�иú������Ϳ��Ե������º����������޷�ʹ�ã�

ԭ��:int ComPutc(char c);
����:����1B���ݵ�����
˵��:�ɹ��򷵻�0��ʧ�ܷ���-1���ú����г�ʱ����

ԭ��:int ComWrite(char &data[], int size);
����:����size�����ݵ����ڣ�������data�У��������������data���ݵ����У��ֵ����ʵ�ʷ���size+1�ֽڣ���
˵��:�ɹ��򷵻�0��ʧ�ܷ���-1���ú����г�ʱ����

ԭ��:int ComGetc();
����:�Ӵ��ڽ���1B����
˵��:ʧ�ܷ���-1���ú����г�ʱ����

ԭ��:int ComRead(char &data[], int size);
����:�Ӵ��ڽ���size�����ݣ�������data�У������������������У��ֵ����У�顣
˵��:�ɹ���У����ȷ�򷵻�0��ʧ�ܷ���-1���ú����г�ʱ����

ԭ��:int ComPutData(char &data[], int size);
����:���ʹ�СΪsize����ַΪdata�����ݰ�����ComWrite��ͬ���Ǹú����������֣�����ֱ����ComGetData��ϴ������ݡ�
˵��:�ɹ���У����ȷ�򷵻�0��ʧ�ܷ���-1���ú����г�ʱ����
����:
#include <uart/UTC808.y>

int size;
char data[2048] = "��ã����յ����ţ�";

void main()
{
 int t;

 SetScreen(1);
 printf(">����ͨ��...\n");
 ComOpen(1);
 size = strlen(data) + 1;
 do {
  t = ComPutData(data, size);
  if (Inkey() == 27) break;//������
 } while (t);
 ComClose();
 if (t)
 {
  printf(">����ʧ�ܣ�\n");
 }
 else
 {
  printf(">���ͳɹ���\n");
 }
 getchar();
}

ԭ��:int ComGetData(char &data[], int &size);
����:�Ӵ��ڽ������ݰ������ݱ�����data�У���С������size�У���ComRead��ͬ���Ǹú����������֣�����ֱ����ComPutData��ϴ������ݡ�
˵��:�ɹ���У����ȷ�򷵻�0��ʧ�ܷ���-1���ú����г�ʱ����
����:
#include <uart/UTC808.y>

int size;
char data[2048];

void main()
{
 int t;

 SetScreen(1);
 printf(">����ͨ��...\n");
 ComOpen(1);
 do {
  t = ComGetData(data, &size);
  if (Inkey() == 27) break;//������
 } while (t);
 ComClose();
 if (t)
 {
  printf(">û���źţ�\n");
 }
 else
 {
  printf(">�յ��źţ�\n");
  printf(">��С: %d\n", size);
  printf(">����: %s", data);
 }
 getchar();
}   �>  �d                CodeLoad           A A� ��� ��`����������� `H  �;) � � 	�� xhhh`h�:`�� Lu��e����e��` <� �������������� E������������� � ,�����`  �<)� 	��8`�:` ���� ��` <� ������������ ����E������������ ��E�Ш𣩀��� �� ��- ����Lx�>��< �� �� LJ�����>   � ���<)� 	������Lx�:�<�۠  ��H� ���h��L�?�>	 �d              ComPutc            �   58ۊ 458 � ? ?�> �d              ComWrite           �   58�  	 58ۊ J58 � ? ?�>  �d               ComGetc            ۊ �58 � ? ?�> �d              ComRead            �   58�  	 58ۊ �58 � ? ?�> �d              ComPutData         �   58�  	 58ۊ �58 � ? ?�> �d              ComGetData         �   58�  	 58ۊ 58 � ? ?