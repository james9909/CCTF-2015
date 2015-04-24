.class public abstract Lcom/snapchat/android/database/table/HasSeenDialogTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/database/HasSeenDialogLog$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/snapchat/android/database/HasSeenDialogLog;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/snapchat/android/database/HasSeenDialogLog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/snapchat/android/database/table/HasSeenDialogTable;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/snapchat/android/database/table/HasSeenDialogTable;->b:Lcom/snapchat/android/database/HasSeenDialogLog;

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/database/HasSeenDialogLog$Entry;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 56
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :cond_1
    new-instance v0, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    .line 61
    sget-object v1, Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;->a:Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 62
    sget-object v1, Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;->b:Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 63
    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 15
    check-cast p1, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/HasSeenDialogTable;->a(Lcom/snapchat/android/database/HasSeenDialogLog$Entry;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/database/HasSeenDialogLog$Entry;
    .locals 4
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;

    sget-object v1, Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;->a:Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;->b:Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;->b()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/database/table/HasSeenDialogTable;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/database/table/HasSeenDialogTable;->b:Lcom/snapchat/android/database/HasSeenDialogLog;

    invoke-virtual {p0, v1, v1}, Lcom/snapchat/android/database/table/HasSeenDialogTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/database/HasSeenDialogLog;->a(Ljava/util/List;)V

    .line 52
    return-void
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/HasSeenDialogTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/database/HasSeenDialogLog$Entry;

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
            "Lcom/snapchat/android/database/HasSeenDialogLog$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/database/table/HasSeenDialogTable;->b:Lcom/snapchat/android/database/HasSeenDialogLog;

    invoke-virtual {v0}, Lcom/snapchat/android/database/HasSeenDialogLog;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 32
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 33
    invoke-static {}, Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;->values()[Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;->a(Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;->b(Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-object v1
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;->values()[Lcom/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema;

    move-result-object v0

    return-object v0
.end method
