��¼mysql��
	   mysql.exe -hlocalhost -P3306 -uroot -p --prompt
	             ����������  �˿ں� �û��� ���� ��ʾ��


MySql��ʾ��������
		\p	����������
		\d	��ǰ���ݿ�
		\h	����������
		\u	��ǰ�û�


�Ͽ����ӣ��˳�mysql��:
			exit
			quit
			\q


��ʾ��ǰ�������汾��	SELECT VERSION();
��ʾ��ǰ����ʱ�䣺	SELECT NOW();
��ʾ��ǰ�û���		SELECT USER();


�ؼ����뺯������ȫ����д
���ݿ����ơ������ơ��ֶ�����ȫ��Сд
SQL�������ԷֺŽ�β


�鿴������ʶ����Щ�ַ�����
	SHOW CHARACTER SET;

�鿴������Ĭ�ϵĶ��⴦����ַ�����
	SHOW VARIABLES LIKE 'CHARACTER_SET%';

�ı������Ĭ�ϵĽ����ַ���ΪGBK��
	SET CHARACTER_SET_CLIENT=GBK;		--��ǰ�ͻ��ˣ�����������Ч

�޸ķ��������ͻ��˵������ַ���ΪGBK
	SET CHARACTER_SET_RESULTS=GBK;		--��ǰ�ͻ��ˣ�����������Ч

��������ַ������޸�client,connection,results���ַ�������
	SET NAMES GBK;

�鿴���ݿ���֧�ֵ�У�Լ���
	SHOW COLLATION;

�ı��Զ��ύ��
set autocommit=0;	--0Ϊ�رգ�1Ϊ����

��������
	START TRANSACTION;
���ñ����
	SAVEPOINT save_name;
�ع������
	ROLLBACK TO save_name;
�ύ����
	COMMIT;


-- �鿴�����ͣ��洢���棩
SHOW TABLE STATUS FROM db_name;

-- �޸����ݱ�����  
ALTER TABLE table_name ENGINE=INNODB;		--INNODB����֧�ָ߼���������ʹ��ȫ����������ʹ��MYISAM