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
	WHERE�Ӿ�
		���ؽ��0����1��0����FALSE,1����TRUE
		�ж�������
			�Ƚ������ >,<,<=,>=,!=,<>,=,like,between and,in/not in
			�߼������ &&(and)  ||(or)   !(not)

		SELECT * FROM test WHERE id IN(1,2,3)	--�ҳ�IDΪ1��2��3��ѧ��

		SELECT * FROM test WHERE id BETWEEN 1 AND 3;	--�ҳ�ID��1-3֮���ѧ����between�Ǳ����䣬����ߵ�ֵ����С���ұߵ�ֵ��


	GROUP BY(����)
		�����﷨:GROUP BY �ֶ���;

		 COUNT():ͳ�Ʒ����ļ�¼����ÿһ���ж��ټ�¼
		 MAX():ͳ��ÿ��������ֵ
		 MIN():ͳ����Сֵ
		 AVG():ͳ��ƽ��ֵ
		 SUM():ͳ�ƺ�

		SELECT test,COUNT(*),MAX(height),... FROM table_name GROUP BY test;

	���ֶη���
		--�Ȱ��հ༶���飬�ٰ�����Ů����
		SELECT class,sex,COUNT(*) FROM table_name GROUP BY class,sex;

		group_concat(�ֶ���)	--���ֶ��е����ݵ����ַ�����������

		����ͳ��:WITH ROLLUP


	HAVING �Ӿ�	--��WHERE�Ӿ�һ���������жϵ�
		HAVING ����ʹ�ñ������� WHERE ����
		HAVING ���ԶԷ������ݽ���ɸѡ���� WHERE ����

	ORDER BY �Ӿ�	--����
		ORDER BY �ֶ��� ASC/DESC	����/����
		
	LIMIT �Ӿ�
		LIMIT�Ӿ���һ�����ƽ�������

		���Ƴ��ȣ�����������LIMIT ������;

		������ʼλ�ã�����������LIMIT ��ʼλ�ã�����;
