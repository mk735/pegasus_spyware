.class public Lcom/lenovo/performancecenter/framework/DatabaseTables;
.super Ljava/lang/Object;
.source "DatabaseTables.java"


# static fields
.field public static final APPLICATIONS_APP_ICON:Ljava/lang/String; = "appIcon"

.field public static final APPLICATIONS_APP_NAME:Ljava/lang/String; = "appName"

.field public static final APPLICATIONS_FLAG:Ljava/lang/String; = "flag"

.field public static final APPLICATIONS_PKG_NAME:Ljava/lang/String; = "pkgName"

.field public static final APPLICATIONS_PROC_NAME:Ljava/lang/String; = "procName"

.field public static final APPLICATIONS_STATE:Ljava/lang/String; = "state"

.field public static final APPLICATIONS_TABLE_NAME:Ljava/lang/String; = "ApplicationsInfo"

.field public static final APP_ID:Ljava/lang/String; = "App_Id"

.field public static final BOOTCOMPLETED_ITEM_APPNAME:Ljava/lang/String; = "appName"

.field public static final BOOTCOMPLETED_ITEM_CLSNAME:Ljava/lang/String; = "clsName"

.field public static final BOOTCOMPLETED_ITEM_CUSTOMER_STATE:Ljava/lang/String; = "customer_state"

.field public static final BOOTCOMPLETED_ITEM_PKGNAME:Ljava/lang/String; = "pkgName"

.field public static final BOOTCOMPLETED_ITEM_PRONAME:Ljava/lang/String; = "proName"

.field public static final BOOTCOMPLETED_ITEM_STATE:Ljava/lang/String; = "state"

.field public static final BOOTCOMPLETED_TABLE_NAME:Ljava/lang/String; = "BootCom"

.field public static final Create_BootCompleted_Table:Ljava/lang/String; = "create table BootCom(_id integer primary key autoincrement,pkgName VARCHAR,clsName VARCHAR,appName VARCHAR,proName VARCHAR,state INTEGER,customer_state INTEGER);"

.field public static final Create_Log_Table:Ljava/lang/String; = "create table LogData(_id integer primary key autoincrement,timestamp DATETIME DEFAULT (datetime(current_timestamp,\'localtime\')), tag integer not null,data_type integer not null,message text not null,notification integer,action text);"

.field public static final Create_UsedAppInfo_Table:Ljava/lang/String; = "create table UsedApplication(App_Id integer primary key autoincrement,Uid integer not null,Package_Name text unique not null,Process_Name text not null,Importance integer,Last_Running_Time text,Last_Foreground text,Exception_Num integer);"

.field public static final Create_WhiteListInfo_Table:Ljava/lang/String; = "create table WhiteList(Package_Name_Id integer primary key autoincrement,Process_Name text unique not null,Process_Type text);"

.field public static final Create_applications_Table:Ljava/lang/String; = "create table ApplicationsInfo(_id integer primary key autoincrement,pkgName varchar(40),appName varchar(60),appIcon integer,procName varchar(60),state integer,flag integer);"

.field public static final ERROR:I = 0xe9

.field public static final EXCEPTION_NUM:Ljava/lang/String; = "Exception_Num"

.field public static final IMPORTANCE:Ljava/lang/String; = "Importance"

.field public static final INFORMATION:I = 0xdd

.field public static final LAST_FOREGROUND:Ljava/lang/String; = "Last_Foreground"

.field public static final LAST_RUNNING_TIME:Ljava/lang/String; = "Last_Running_Time"

.field public static final LOG_ACTION:Ljava/lang/String; = "action"

.field public static final LOG_DATA_TYPE:Ljava/lang/String; = "data_type"

.field public static final LOG_ID:Ljava/lang/String; = "_id"

.field public static final LOG_MESSAGE:Ljava/lang/String; = "message"

.field public static final LOG_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final LOG_TABLE_NAME:Ljava/lang/String; = "LogData"

.field public static final LOG_TAG:Ljava/lang/String; = "tag"

.field public static final LOG_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "Package_Name"

.field public static final PROCESS_NAME:Ljava/lang/String; = "Process_Name"

.field public static final SYSTEM_MARK:Ljava/lang/String; = "1"

.field public static final UID:Ljava/lang/String; = "Uid"

.field public static final USER_MARK:Ljava/lang/String; = "2"

.field public static final UsedAppInfo_TABLE_NAME:Ljava/lang/String; = "UsedApplication"

.field public static final WARNING:I = 0xea

.field public static final WHITE_ID:Ljava/lang/String; = "Package_Name_Id"

.field public static final WHITE_PROCESS_NAME:Ljava/lang/String; = "Process_Name"

.field public static final WHITE_PROCESS_TYPE:Ljava/lang/String; = "Process_Type"

.field public static final WhiteList_TABLE_NAME:Ljava/lang/String; = "WhiteList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
