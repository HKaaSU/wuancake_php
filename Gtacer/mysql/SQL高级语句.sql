��������
	�����﷨��
		INSERT INTO ����[(�ֶ��б�)] VALUES(ֵ�б�)
		
	������ͻ�����²���
		INSERT INTO ����[(�ֶ���)] VALUES(ֵ�б�) ON DUPLICATE KEY UPDATE �ֶ� = ��ֵ;

	������ͻ���滻
		REPLACE INSERT INTO ����[(�ֶ���:��������)] VALUES(ֵ�б�);



��渴��      --�����е�������ȥ��ȡ���ݣ�Ȼ�������ֽ����������������ݳɱ�������.
	
	�����߼������������б����±�(���Ʊ�ṹ)
	CREATE TABLE ���� LIKE ���ݿ�.����;	

	��渴�ƣ��ֲ�����ݣ�Ȼ�󽫲������������һ��
	INSERT INTO ����[(�ֶ��б�)] SELECT �ֶ��б�/��*�� FROM ���ݱ���;


��������
	�����﷨��
		UPDATE ���� SET �ֶ� = ֵ[WHERE����];

	�߼������﷨
		UPDATE ���� SET �ֶ� = ֵ[WHERE����][LIMT��������];


ɾ������
	DELETE FROM ����[WHERE][LIMIT����];


	��ձ���������������
	TRUNCATE ����;	--��ɾ���ñ��������ñ�


��ѯ����
	�����﷨��
		SELECT �ֶ��б�/��*�� FROM ����[WHERE ����];

	�����﷨��
		SELECT[SELECTѡ��]�ֶ��б�[�ֶα���]/��*�� FROM ����Դ [WHERE�����Ӿ�][GROUP BY �־�]
		[HAVING�Ӿ�][ORDER BY�Ӿ�][LIMIT �Ӿ�];

			SELECTѡ��Բ�����Ľ���Ĵ���ʽ
				ALL��Ĭ�ϵģ��������еĽ��
				DISTINCT��ȥ�أ�������Ľ�������ظ���ȥ���������ֶζ���ͬ��
			
			�ֶα������ֶ��� [AS] ����
				����SELECT name as ���� FROM test;
	
����Դ
	��������Դ
		SELECT * FROM test;
	�������Դ
		SELECT * FROM test,test2,test3...;	--�ѿ��������������ӣ���û���ã�Ӧ�þ������⣩
	�Ӳ�ѯ
		SELECT * FROM(SELECT���)AS ����;