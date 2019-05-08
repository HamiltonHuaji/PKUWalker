#!/usr/bin/env python3

import sys, os
import importlib

try:
    import sqlite3
except Exception as e:
    print("sqlite3 required. execute 'pip install sqlite3' to install.")
    os._exit(0)

dbm = importlib.import_module("dbm")
fake = importlib.import_module("fake")

if len(sys.argv) < 2:
    print("usage: generator.py database.db")
    print("usage: generator.py database.db time_utc")
    print("time_utc should be 13-digit int")
    os._exit(0)


db = sqlite3.connect(sys.argv[1])
cur = db.cursor()
# init output
dbm.init(cur)
# get user info
usr = dbm.get_users(cur)
if len(usr)==1:
    keys = list(usr.keys())
    uid=keys[0]
else:
    print("name\t\tdepartment\t\tuserId")
    for i in usr:
        print(usr[i][0] + "\t\t" + usr[i][1] + "\t\t" + i)
    while True:
        uid = input("select a user to walk:\t")
        if uid in usr:
            break
# make record
""" 
    duration            int      总跑步时间/s
    date                str      结束时间（时间戳）
    step                int      总步数
    detail              list     跑步路径 GPS 数据， 1 point/s （一秒一个点）
    distance            float    跑步距离/km
    pace                float    跑步速度/(min/km)
            stride_frequncy     int      步频/(step/min)
"""
""" 由距离、速度、步频来生成一次跑步记录
    Args:
        distance           float   跑步距离/km
        pace               float   跑步速度/(min/km)
        stride_frequncy    int     步频/(step/min)
"""
if len(sys.argv)==3:
    dateUTC = int(sys.argv[2])
    distance = 6.0
    velocity = 8.0
    frequncy = 120
else:
    dateUTC  =   int(input("input time ( UTC, ms )     :\t"))
    distance = float(input("input distance ( km )      :\t"))
    velocity = float(input("input velocity ( min/km )  :\t"))
    frequncy = float(input("input stride frequncy (bpm):\t"))
tracks = fake.Record(distance, velocity, frequncy)

rid = dbm.append_record(cur, uid, dateUTC, tracks.distance*1000, tracks.duration, tracks.step)

dbm.append_track(cur,rid,tracks.detail)

db.commit()
db.close()
print("done")