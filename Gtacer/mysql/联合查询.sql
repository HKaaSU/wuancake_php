���ϲ�ѯ	--����β�ѯ(����SELECT���),�ڼ�¼�Ͻ���ƴ��(�ֶβ�������)

	�����﷨	--����SELETCT��乹�ɣ�ÿһ��SELECT����ȡ���ֶ��������ϸ�һ��(�������ֶ������޹�)
		SELECT ���1 UNION[UNIONѡ��] SELECT ���2 ...

			UNIONѡ�
				ALL:��������(��������)
				DISTINCT:ȥ��(�����ظ�)(Ĭ��)

	ORDER BY
		�����ϲ�ѯ��,ORDER BY ����ֱ��ʹ�ã���Ҫ�Բ�ѯ���ʹ�����Ų���
		����Ҫ ORDER BY ��Ч��������� LIMIT �ؼ���;

		(SELECT * FROM test WHERE sex = '��' ORDER BY age ASC LIMIT 9999999)
		UNION
		(SELECT * FROM test WHERE sex = 'Ů' ORDER BY age DESC LIMIT 9999999);



