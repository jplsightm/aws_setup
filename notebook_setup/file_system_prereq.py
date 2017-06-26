# This is a rather hacky script that is used to accomidate strong assumptions that
# are made in docker-compose.yml. These are:
# 1. A directory called /var/notebooks exists
# 2. That directory is not owned by an administrative user

# TODO: arguments to set _path, _user, _group
# TODO: arguments to override behavior - what is someone wants to run this as root
# TODO: remove print statements... use logging you lazy jerk

import os.path as path
import os
import grp
import pwd

_path = '/var/notebooks'
_user = 'parallels'
_group = 'parallels'

if not path.isdir(_path):i
    print '{} does not exist. Creating it'.format(_path)
    os.makedirs(_path)

stat_info = os.stat(_path)
uid = stat_info.st_uid
gid = stat_info.st_gid
print uid, gid

user = pwd.getpwuid(uid)[0]
group = grp.getgrgid(gid)[0]

if user == 'root' or group in ['root', 'wheel']:
    print 'user or group of {} is owned by a highly privilaged account. modifying to {}:{}'.format(_path, _user, _group)
    uid = pwd.getpwnami(_user).pw_uid
    gid = grp.getgrnam(_group).gr_gid
    os.chown(_path, uid, gid)
