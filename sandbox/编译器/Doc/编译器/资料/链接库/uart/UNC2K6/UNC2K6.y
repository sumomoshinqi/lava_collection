�  ��� ��:NC2600

ԭ��:int ComOpen(char BaudRate);
����:�Բ�����BaudRate���򿪴���
˵��:�ɹ��򷵻�0��ʧ�ܷ���-1��BaudRateֻ��ȡ������ֵ��
1:115k bps���ò�����
2:57k bps���ò�����
3:38k bps���ò�����
4:19k bps���ò�����
5:9600 bps���ò�����
6:2400 bps���ò�����

ԭ��:void ComClose();
����:�رմ���

ԭ��:int ComPutc(char c);
����:����1B���ݵ�����
˵��:�ɹ��򷵻�0��ʧ�ܷ���-1���ú����г�ʱ����

ԭ��:int ComWrite(char &data[], int size);
����:����size�����ݵ����ڣ�������data�У��������������data���ݵ����У��ֵ����ʵ�ʷ���size+1�ֽڣ���
˵��:�ɹ��򷵻�ԭֵ0��ʧ�ܷ���-1���ú����г�ʱ����

ԭ��:int ComGetc();
����:�Ӵ��ڽ���1B����
˵��:ʧ�ܷ���-1���ú����г�ʱ����

ԭ��:int ComRead(char &data[], int size);
����:�Ӵ��ڽ���size�����ݣ�������data�У������������������У��ֵ����У�顣
˵��:�ɹ���У����ȷ�򷵻�0��ʧ�ܷ���-1���ú����г�ʱ����

ԭ��:int ComWaitReady();
����:��鷢�ͻ������Ƿ���ɷ��͡�
˵��:���ͻ�����Ϊ�գ���������ϣ��򷵻�0�����򷵻�-1

ԭ��:int ComPutData(char &data[], int size);
����:���ʹ�СΪsize����ַΪdata�����ݰ�����ComWrite��ͬ���Ǹú����������֣�����ֱ����ComGetData��ϴ������ݡ�
˵��:�ɹ���У����ȷ�򷵻�0��ʧ�ܷ���-1���ú����г�ʱ����
����:
#include <uart/UNC2K6.y>

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
#include <uart/UNC2K6.y>

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
}   �>	 �d              ComOpen            A � �����`����������� `�=)��=��=��;� �>�:	�?�:�;	��;�=	�=���:�<�=)�	�=� �;�0�=  �=)��=� �=��=�=)��=�;�`� 	��L"�=)�	�=��)�:�=)��=� �<�=)�	�=� �<�z�=)��=�=)��=�=)�	�=� �<`H�=)��=  �;) � 	�� "hhh`h�:`�� �L��e����e��` �� �������������� �E������������� �� ,�����`�=)��=  �;)� 	��8`�:` )�څ� ��` �� ������������ )����E������������ )��E�Т�=)��=�;)�Д�;)`�`��������� �� )��- �����L"�>��< ��� ��� �L������> �  � ���;)� 	������L"�:�<�۠  )��H� )���h��LO�   58�� 58 � ? ?�>  �d                ComClose           �� �58 ?�>	 �d              ComPutc            �   58�� �58 � ? ?�> �d              ComWrite           �   58�  	 58�� �58 � ? ?�>  �d               ComGetc            �� C58 � ? ?�> �d              ComRead            �   58�  	 58�� O58 � ? ?�>  �d               ComWaitReady       �� �58 � ? ?�> �d              ComPutData         �   58�  	 58�� �58 � ? ?�> �d              ComGetData         �   58�  	 58�� �58 � ? ?