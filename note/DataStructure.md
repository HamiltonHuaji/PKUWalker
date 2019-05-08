# Data Structure

## Details

创建database的sql语句如下:

```sql
    CREATE TABLE android_metadata (locale TEXT)
    CREATE TABLE "partial_record" ( "id" INTEGER PRIMARY KEY AUTOINCREMENT, "date" INTEGER ,"distance" INTEGER ,"duration" INTEGER ,"step" INTEGER )
    CREATE TABLE "partial_track" ( "id" INTEGER PRIMARY KEY AUTOINCREMENT, "latitude" REAL ,"longitude" REAL ,"recordDbId" INTEGER ,"sequence" INTEGER ,"status" INTEGER )
    CREATE TABLE "record" ( "id" INTEGER PRIMARY KEY AUTOINCREMENT, "date" INTEGER ,"detailed" INTEGER ,"distance" INTEGER ,"duration" INTEGER ,"invalidReason" INTEGER ,"photoName" TEXT ,"photoRemotePath" TEXT ,"placeHint" TEXT ,"recordId" INTEGER ,"step" INTEGER ,"uploaded" INTEGER ,"userId" TEXT ,"verified" INTEGER )
    CREATE TABLE sqlite_sequence(name,seq)
    CREATE TABLE "track" ( "id" INTEGER PRIMARY KEY AUTOINCREMENT, "latitude" REAL ,"longitude" REAL ,"recordDbId" INTEGER ,"sequence" INTEGER ,"status" INTEGER )
    CREATE TABLE "user" ( "id"TEXT PRIMARY KEY, "PESpecialty" INTEGER ,"department" TEXT ,"gender" INTEGER ,"name" TEXT ,"offline" INTEGER ,"token" TEXT )
```

对于不会sql并且不想眼瞎的同学:

```sql
    "record"
        "id" INTEGER PRIMARY KEY AUTOINCREMENT,
        "date" INTEGER ,
        "detailed" INTEGER ,
        "distance" INTEGER ,
        "duration" INTEGER ,
        "invalidReason" INTEGER ,
        "photoName" TEXT ,
        "photoRemotePath" TEXT ,
        "placeHint" TEXT ,
        "recordId" INTEGER ,
        "step" INTEGER ,
        "uploaded" INTEGER ,
        "userId" TEXT ,
        "verified" INTEGER
    "track"
        "id" INTEGER PRIMARY KEY AUTOINCREMENT,
        "latitude" REAL ,
        "longitude" REAL ,
        "recordDbId" INTEGER ,
        "sequence" INTEGER ,
        "status" INTEGER
    "user"
        "id"TEXT PRIMARY KEY, 
        "PESpecialty" INTEGER ,
        "department" TEXT ,
        "gender" INTEGER ,
        "name" TEXT ,
        "offline" INTEGER ,
        "token" TEXT
```

`partial_track`与`partial_record`猜测为运行时暂存数据所用.
需关注的表只有`track`与`record`.
`record`的字段为

```json
{
    "date": "-1368864000000",
    "detailed": "1",
    "distance": "5000",
    "duration": "59",
    "id": "1",
    "invalidReason": "0",
    "photoName": "",
    "photoRemotePath": "",
    "placeHint": "西方的每一个国家",
    "recordId": "-1",
    "step": "89",
    "uploaded": "0",
    "userId": "1926081764",
    "verified": "0"
}
```

写成人话就是

```json
{
    "时间(ms,Unix时间戳)":"1926.08.17:00:00:00",
    "detailed":"1",
    "倒车距离(m)":"十里山路",
    "倒车时间(s)":"59",
    "第几个记录":"1",
    "invalidReason":"0",
    "photoName":"",
    "photoRemotePath":"",
    "去了哪些地方":"西方的每一个国家",
    "recordId":"-1",
    "步数":"89",
    "uploaded":"0",
    "学号":"1926081764",
    "verified":"0"
}
```

其中,使用嘤文写的字段可以不用关心.
而`track`的字段为

```json
{
    "id": "1",
    "latitude": "31.2022319260817",
    "longitude": "121.4576319260817",
    "recordDbId": "1",
    "sequence": "0",
    "status": "0"
}
```

`id`每一个track唯一,从1开始自增(废话,整数主键).
`latitude`,`longtitude`为该数据点经纬度.
`recordDbId`是该track所属于的record的id.
`sequence`是该track处于该record的序号,从0开始.
`status`为0.
在原有表的基础上添加数据,即可制造跑步记录.