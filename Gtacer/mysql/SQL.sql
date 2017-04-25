-- �������ݿ⣺
	CREATE{DATABASE | SCHEMA}      [IF NOT EXISTS]        db_name   [DEFAULT] CHARACTER SET[=] charset_name;   
				  ������ݿ���ڣ����Դ���    ���ݿ���      �������ݿ�ı��뷽ʽ


-- �鿴��ǰ�������µ����ݱ��б�
	SHOW{DATABASES | SCHEMAS} [LIKE 'pattern' | WHERE expr];


-- �鿴���ݿⴴ����䣺
	SHOW CREATE DATABASE db_name;


-- �鿴ָ�����ֵ����ݿ⣨ģ����ѯ����
	SHOW DATABASES LIKE 'pattern';	-- pattern��ƥ��ģʽ
	%����ʾ����ַ�
	_����ʾ�����ַ�


-- �޸����ݿ⣺
	ALTER {DATABASE | SCHEMA} [db_name] [DEFAULT] CHARACTER SET [=] charset_name;


-- ɾ�����ݿ⣺
	DROP {DATABASE | SCHEMA} [IF EXISTS] db_name;


-- �����ݿ⣺1
	USE db_name;


-- �鿴��ǰ���ݿ⣺
	SELECT DATABASE();


-- �������ݱ�
	CREATE TABLE[IF NOT EXISTS] table_name(
		column_name data_type,		--������ ��������
		����
	)ENGINE=MYISAM;		--���ݱ�����INNODB����֧�ָ߼���������ʹ��ȫ����������ʹ��MYISAM


--ɾ�����ݱ�
	DROP TABLE table_name1,table_name2,����;	--����ͬʱɾ���������ݱ�;




--�޸����ݱ�����
	RENAME TABLE �ɱ��� TO �±���;


--�޸����ݱ�ѡ�
	ALTER TABLE table_name charset=GBK;	--�޸��ַ���


-- �鿴���ݱ�
	SHOW TABLES[FROM db_name][LIKE 'pattern' | WHERE expr];
		/*   SHOW TABLES;		        -- �鿴��ǰ���ݿ�����ݱ�
		 *   SHOW TABLES FROM mysql;  */	-- �鿴�������ݿ��е����ݱ�;


-- �鿴���ݱ�ṹ��
	SHOW COLUMNS FROM tbl_name;


--�鿴���ݱ�����䣺
	SHOW CREATE TABLE tbl_name;


-- �����¼��
	INSERT[INTO]tbl_name[(col_name,����)]VALUES(val,����);


-- ��¼���ң�
	SELECT expr,���� FROM tbl_name;


--�����ֶΣ�
	ALTER TABLE table_name add[column]�ֶ��� �������� [������][λ��];	
									--λ�ã�FIRST�����ڵ�һ���ֶ�
									--	AFTER��AFTER �ֶ�����	--Ĭ�Ϸ������һ���ֶ�֮��


--�޸��ֶΣ�
	ALTER TABLE table_name MODIFY �ֶ��� �������� [����][λ��];


--�������ֶΣ�
	ALTER TABLE ���� CHANGE ���ֶ� ���ֶ��� ��������[����][λ��];


--ɾ���ֶΣ�
	ALTER TABLE table_name DROP �ֶ���;


--�鿴ָ���ֶΣ�ָ�����������ݣ�
	SELECT id,number,���� FROM table_name WHERE id=1;		--�鿴����IDΪ1��ѧ����Ϣ


-- �޸����ݱ������ݼ�¼:
	UPDATE db_name SET age=18 where username="jone";	-- �����ݱ�tb1�У�jone�������޸�Ϊ18


--ɾ������
	DELETE FROM table_name WHERE sex='man';			--ɾ���Ա�Ϊ�е�����


-- �Զ���ţ��������������ʹ��,Ĭ������£���ʼֵΪ1��ÿ�ε�����Ϊ1����
	AUTO_INCREMENT;


-- ������ÿһ�����ݱ�ֻ����һ����������
	PRIMARY KEY	-- �����б�ʱд����������֮��


-- ΨһԼ����
	UNIQUE KEY	-- �����б�ʱд����������֮��


-- Ĭ��ֵ��
	DEFAULT ֵ	-- 


-- ��ֹΪ�գ�
	NOT NULL	-- 


--����
	ORDER BY DESC(����)/ASC(����)


--ö������
	--����ö�ٱ�
		CREATE TABLE my_enum(
		gender enum('��','Ů','����')	--���壺enum(���ܳ��ֵ�Ԫ���б�)
		);

	--��������	��������ݱ����ǹ涨�������е�һ��(Ҳ���Բ�����ֵ)
		INSERT INTO my_enum VALUES('��'),('����');


--�����ַ���
	--����	set(Ԫ���б�)
	CREATE TABLE my_set(
	hobby set('����','����','ƹ����','��ë��','̨��','����')
	)charset utf8;

	--��������  ����ʹ���б��е�Ԫ��(���)��ʹ��,�ָ�
	INSERT INTO my_set VALUES('����,̨��,����');