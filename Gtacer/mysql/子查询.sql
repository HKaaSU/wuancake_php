�Ӳ�ѯ	--��ѯ����ĳ����ѯ���֮�Ͻ��е�(һ��SELECT����ڲ�����������һ��SELECT���)

	��λ�÷���:�Ӳ�ѯ(SELECT���)���ⲿ��ѯ(SELECT���)�г��ֵ�λ��

		FROM �Ӳ�ѯ���Ӳ�ѯ���� FROM ֮��
		WHERE �Ӳ�ѯ���Ӳ�ѯ���� WHERE ������
		EXISTS �Ӳ�ѯ���Ӳ�ѯ������ EXISTS ����


	��������ࣺ�����Ӳ�ѯ�õ������ݽ��з���(�������κ�һ����ѯ�õ��Ľ�����������Ϊ��ά��)

		�����Ӳ�ѯ���Ӳ�ѯ�õ��Ľ����һ��һ��
		���Ӳ�ѯ���Ӳ�ѯ�õ��Ľ����һ�ж���
		���Ӳ�ѯ���Ӳ�ѯ�õ��Ľ���Ƕ���һ��(���ж���)

		--����ļ������ֵ�λ�ö����� WHERE ֮��

		���Ӳ�ѯ���Բ�ѯ�õ��Ľ���Ƕ��ж��еĶ�ά��(������ά������)	--���ֵ�λ��ʵ��FROM֮��


	�����Ӳ�ѯ
		����֪���༶����Ϊ xx�� �����ȡ�ð������ѧ����ѧ����Ͱ༶��Ϣ��Ϊ���ű�

		SELECT * FROM student WHERE class_id = (SELECT id FROM class WHERE c_name = 'xx��');

	���Ӳ�ѯ
		���󣬲�ѯ�����ڶ��༶��ѧ��(�༶���д��ڵİ༶)

		SELECT * FROM stedent WHERE  class_id IN(SELECT id FROM class);

	
	���Ӳ�ѯ
		����Ҫ���ѯ����ѧ���У���������������ߵ�ѧ��

		SELECT * FROM student WHERE (age,height) = (SELECT MAX(age),MAX(height) FROM student);

	���Ӳ�ѯ
		�����ҳ�ÿ������ߵ�һ��ѧ��

		SELECT * FROM (SELECT * FROM student ORDER BY height DESC) AS student GROUP BY class_id;


	
	EXISTS �Ӳ�ѯ	--�Ƿ���ڣ�EXISTS �Ӳ�ѯ���������ж�ĳЩ�����Ƿ�����(���)
			--EXISTS �ǽ��� WHERE ֮�󣬷��ؽ��ֻ�� 0 �� 1
			
		���󣺲�ѯ���е�ѧ����ǰ���ǰ༶����

		SELECT * FROM student WHERE EXISTS(SELECT * from class);