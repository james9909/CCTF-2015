.class public Lcom/snapchat/android/database/table/ChatTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/ChatTable$ChatSchema;
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

.field private static e:Lcom/snapchat/android/database/table/ChatTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-static {}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->values()[Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    move-result-object v2

    .line 55
    array-length v3, v2

    .line 56
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/ChatTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 57
    :goto_0
    if-ge v1, v3, :cond_0

    .line 58
    sget-object v4, Lcom/snapchat/android/database/table/ChatTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/ChatTable;->b:Ljava/util/HashMap;

    .line 63
    invoke-static {}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->values()[Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 64
    sget-object v4, Lcom/snapchat/android/database/table/ChatTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;
    .locals 9
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Snap$TargetView;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 245
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 247
    const-string v1, "Chat"

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable;->a:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->s:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/snapchat/android/model/Snap$TargetView;->CHAT:Lcom/snapchat/android/model/Snap$TargetView;

    .line 258
    :goto_0
    if-eqz p1, :cond_5

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 275
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_3
    return-object v8

    .line 255
    :cond_4
    :try_start_1
    invoke-static {v0}, Lcom/snapchat/android/model/Snap$TargetView;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$TargetView;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_5
    invoke-static {v1}, Lcom/snapchat/android/database/table/ChatTable;->c(Landroid/database/Cursor;)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_1

    .line 264
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->n:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 266
    if-nez v0, :cond_6

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v4, v5, :cond_7

    .line 271
    invoke-static {v2, v3}, Lcom/snapchat/android/database/table/ChatTable;->a(Lcom/snapchat/android/model/chat/Chat;Ljava/lang/String;)V

    .line 273
    :cond_7
    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 278
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/model/chat/Chat;Lcom/snapchat/android/model/Snap$TargetView;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    if-nez p2, :cond_0

    .line 240
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 199
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->a:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->j:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, ""

    .line 205
    :cond_1
    sget-object v4, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->e:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->d:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_2
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->l:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->ap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->k:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->o:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->p:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->p()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->n:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->I()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->h:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->f:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->g:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->i:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->q:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->s:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/Snap$TargetView;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->t:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->w()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->u:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    instance-of v0, p2, Lcom/snapchat/android/model/chat/ChatText;

    if-eqz v0, :cond_3

    move-object v0, p2

    .line 229
    check-cast v0, Lcom/snapchat/android/model/chat/ChatText;

    .line 230
    sget-object v4, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->r:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatText;->aq()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    :cond_3
    instance-of v0, p2, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v0, :cond_4

    .line 235
    check-cast p2, Lcom/snapchat/android/model/chat/ChatMedia;

    .line 236
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->m:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_4
    const-string v0, "Chat"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 218
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 220
    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 221
    goto/16 :goto_3

    :cond_8
    move v1, v2

    .line 230
    goto :goto_4
.end method

.method private static a(Lcom/snapchat/android/model/chat/Chat;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x4e20

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 286
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 287
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 306
    :goto_0
    return-void

    .line 289
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 290
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$1;

    invoke-direct {v3, p0, p1}, Lcom/snapchat/android/database/table/ChatTable$1;-><init>(Lcom/snapchat/android/model/chat/Chat;Ljava/lang/String;)V

    sub-long v0, v4, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/ChatTable;
    .locals 2

    .prologue
    .line 125
    const-class v1, Lcom/snapchat/android/database/table/ChatTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable;->e:Lcom/snapchat/android/database/table/ChatTable;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/snapchat/android/database/table/ChatTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ChatTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/ChatTable;->e:Lcom/snapchat/android/database/table/ChatTable;

    .line 128
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable;->e:Lcom/snapchat/android/database/table/ChatTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static c(Landroid/database/Cursor;)Lcom/snapchat/android/model/chat/Chat;
    .locals 23
    .parameter

    .prologue
    .line 310
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->a:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 311
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 312
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->e:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 313
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->d:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 315
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->l:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 316
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->u:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 317
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->m:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 318
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->j:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 319
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 320
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->i:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v16

    .line 323
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->h:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    .line 325
    :goto_0
    sget-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->f:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    .line 326
    :goto_1
    sget-object v4, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->g:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v4

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    .line 327
    :goto_2
    sget-object v5, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->o:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 329
    sget-object v5, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->p:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 331
    sget-object v5, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->k:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 332
    sget-object v5, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->q:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 333
    sget-object v5, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->r:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_4

    const/4 v5, 0x1

    .line 335
    :goto_3
    const-string v22, "text"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 336
    new-instance v7, Lcom/snapchat/android/model/chat/ChatText$Builder;

    invoke-direct {v7, v8, v9}, Lcom/snapchat/android/model/chat/ChatText$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Lcom/snapchat/android/model/chat/ChatText$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatText$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/snapchat/android/model/chat/ChatText$Builder;->a(Z)Lcom/snapchat/android/model/chat/ChatText$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatText$Builder;->a()Lcom/snapchat/android/model/chat/ChatText;

    move-result-object v5

    .line 344
    :goto_4
    sget-object v7, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->t:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v7}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b()I

    move-result v7

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 346
    invoke-virtual {v5, v6}, Lcom/snapchat/android/model/chat/Chat;->d(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v5, v13}, Lcom/snapchat/android/model/chat/Chat;->b(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v5, v14, v15}, Lcom/snapchat/android/model/chat/Chat;->c(J)V

    .line 349
    invoke-virtual {v5, v3}, Lcom/snapchat/android/model/chat/Chat;->b(Z)V

    .line 350
    invoke-virtual {v5, v4}, Lcom/snapchat/android/model/chat/Chat;->c(Z)V

    .line 351
    invoke-virtual {v5, v2}, Lcom/snapchat/android/model/chat/Chat;->a(Z)V

    .line 352
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/snapchat/android/model/chat/Chat;->a(I)V

    .line 353
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/snapchat/android/model/chat/Chat;->b(I)V

    .line 354
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 355
    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Lcom/snapchat/android/model/chat/Chat;->b(J)V

    .line 356
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/snapchat/android/model/chat/Chat;->a(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v5, v8, v9}, Lcom/snapchat/android/model/chat/Chat;->d(J)V

    .line 358
    if-eqz v2, :cond_0

    .line 359
    invoke-virtual {v5, v8, v9}, Lcom/snapchat/android/model/chat/Chat;->e(J)V

    .line 361
    :cond_0
    invoke-virtual {v5, v11}, Lcom/snapchat/android/model/chat/Chat;->c(Ljava/lang/String;)V

    .line 363
    return-object v5

    .line 323
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 325
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 326
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 333
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 337
    :cond_5
    const-string v5, "media"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 338
    new-instance v5, Lcom/snapchat/android/model/chat/ChatMedia$Builder;

    invoke-direct {v5, v8, v9}, Lcom/snapchat/android/model/chat/ChatMedia$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Lcom/snapchat/android/model/chat/ChatMedia$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatMedia$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatMedia$Builder;->a()Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v5

    goto :goto_4

    .line 339
    :cond_6
    const-string v5, "screenshot"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 340
    new-instance v5, Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;

    invoke-direct {v5, v8, v9}, Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;->a()Lcom/snapchat/android/model/chat/ChatScreenshot;

    move-result-object v5

    goto :goto_4

    .line 342
    :cond_7
    new-instance v5, Lcom/snapchat/android/model/chat/ChatUnknown$Builder;

    invoke-direct {v5, v8, v9}, Lcom/snapchat/android/model/chat/ChatUnknown$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatUnknown$Builder;->a()Lcom/snapchat/android/model/chat/ChatUnknown;

    move-result-object v5

    goto :goto_4
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/chat/Chat;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 43
    check-cast p1, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/ChatTable;->a(Lcom/snapchat/android/model/chat/Chat;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/model/chat/Chat;
    .locals 1
    .parameter

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "Chat"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    return-void
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/ChatTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/chat/Chat;

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
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-static {}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->values()[Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    move-result-object v2

    .line 140
    array-length v3, v2

    .line 141
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 142
    aget-object v4, v2, v0

    .line 143
    if-lez v0, :cond_0

    .line 144
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->a(Lcom/snapchat/android/database/table/ChatTable$ChatSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b(Lcom/snapchat/android/database/table/ChatTable$ChatSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 149
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->values()[Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method
