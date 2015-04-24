.class public Lcom/snapchat/android/database/table/FriendTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/FriendTable$FriendSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/snapchat/android/database/table/FriendTable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized f()Lcom/snapchat/android/database/table/FriendTable;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/snapchat/android/database/table/FriendTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/FriendTable;->a:Lcom/snapchat/android/database/table/FriendTable;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/FriendTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable;->a:Lcom/snapchat/android/database/table/FriendTable;

    .line 28
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/FriendTable;->a:Lcom/snapchat/android/database/table/FriendTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/Friend;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 101
    :cond_0
    new-instance v0, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    .line 102
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->a:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 103
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 104
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->c:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 105
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->d:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->r()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 106
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->e:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/FriendTable;->a(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 107
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->f:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->y()Z

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/FriendTable;->a(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 108
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->h:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->e()Z

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/FriendTable;->a(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 109
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->i:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->i()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 110
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->j:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 111
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->k:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/FriendTable;->a(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 112
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->l:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 113
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->m:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->k()Z

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/FriendTable;->a(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 115
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->n:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 116
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->o:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 117
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->p:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->J()Z

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/FriendTable;->a(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 118
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->q:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->M()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 119
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->r:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->K()Z

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/FriendTable;->a(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 120
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->s:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->L()Z

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/FriendTable;->a(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 121
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->t:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->P()Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend$Direction;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 122
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->u:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 123
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->v:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->S()Lcom/snapchat/android/model/Friend$AddSourceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend$AddSourceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 124
    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/FriendTable;->a(Lcom/snapchat/android/model/Friend;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/model/Friend;
    .locals 4
    .parameter

    .prologue
    .line 137
    new-instance v0, Lcom/snapchat/android/model/Friend;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->a:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->e(Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->d(Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->c:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->f(Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->d:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(I)V

    .line 143
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->e:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/FriendTable;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->d(Z)V

    .line 144
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->f:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/FriendTable;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->e(Z)V

    .line 145
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->h:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/FriendTable;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->b(Z)V

    .line 147
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->i:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/Friend;->a(J)V

    .line 148
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->j:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/Friend;->b(J)V

    .line 149
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->k:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/FriendTable;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->h(Z)V

    .line 150
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->l:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->c(Ljava/lang/String;)V

    .line 151
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->m:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/FriendTable;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Z)V

    .line 153
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->n:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Ljava/lang/String;)V

    .line 154
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->o:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->b(Ljava/lang/String;)V

    .line 155
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->p:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/FriendTable;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->i(Z)V

    .line 156
    invoke-static {}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->values()[Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->q:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)V

    .line 158
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->r:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/FriendTable;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->j(Z)V

    .line 159
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->s:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/FriendTable;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->k(Z)V

    .line 160
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->t:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/model/Friend$Direction;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$Direction;)V

    .line 162
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->u:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->g(Ljava/lang/String;)V

    .line 163
    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->v:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/model/Friend$AddSourceType;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$AddSourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$AddSourceType;)V

    .line 165
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "Friends"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/FriendTable;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/User;->d(Ljava/util/List;)V

    .line 93
    return-void
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/FriendTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/Friend;

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
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->s()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 73
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 74
    invoke-static {}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->values()[Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->a(Lcom/snapchat/android/database/table/FriendTable$FriendSchema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b(Lcom/snapchat/android/database/table/FriendTable$FriendSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-object v1
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->values()[Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/FriendTable;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/database/table/FriendTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->e:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", (CASE WHEN length("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") = 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->a:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "COLLATE NOCASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
