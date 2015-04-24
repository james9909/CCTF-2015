.class public Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/chat/Chat;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->values()[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    move-result-object v2

    .line 47
    array-length v3, v2

    .line 48
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 49
    :goto_0
    if-ge v1, v3, :cond_0

    .line 50
    sget-object v4, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->b:Ljava/util/HashMap;

    .line 55
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->values()[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 56
    sget-object v4, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->e:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->e:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    .line 64
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->e:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/chat/Chat;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Lcom/snapchat/android/model/chat/Chat;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/model/chat/Chat;
    .locals 1
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "ChatsReceivedInLastHour"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    .line 112
    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    sub-long/2addr v2, v4

    .line 114
    if-eqz v0, :cond_0

    .line 115
    const-string v1, "ChatsReceivedInLastHour"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->b:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->d:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 74
    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/snapchat/android/model/server/chat/ChatMessage;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConvId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/chat/ChatUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 81
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    sget-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->a:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->b:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    sget-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->c:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "ChatsReceivedInLastHourTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    const-string v2, "ChatsReceivedInLastHour"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 94
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT() from ChatsReceivedInLastHour WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->a:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/User;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/User;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/chat/Chat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    const-string v1, "ChatsReceivedInLastHour"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->a:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->values()[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    move-result-object v2

    .line 175
    array-length v3, v2

    .line 176
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 177
    aget-object v4, v2, v0

    .line 178
    if-lez v0, :cond_0

    .line 179
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->a(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->b(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 184
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->values()[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    move-result-object v0

    return-object v0
.end method
