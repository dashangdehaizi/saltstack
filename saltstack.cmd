1. salt -N aybid cmd.script salt://adduser.sh  #��һ����� ͬʱ���һ���û�#

2. salt -N baidubid_B state.sls baidubid_B     #��һ����� �����ļ�����#

[root@alitemplate salt]# tree
.
������ adduser.sh
������ aybid
��?? ������ config.properties
��?? ������ init.sls
������ ayng
��?? ������ init.sls
��?? ������ nginx.conf

[root@alitemplate salt]# more aybid/init.sls 
/srv/websites/Bidder/WEB-INF/config/config.properties:
  file.managed:
    - source: salt://aybid/config.properties
    - user: root
    - group: root
    - mode: 644
3. ##