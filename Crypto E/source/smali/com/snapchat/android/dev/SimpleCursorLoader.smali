.class public Lcom/snapchat/android/dev/SimpleCursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/database/Cursor;

.field private final b:Lcom/snapchat/android/database/table/DbTable;

.field private final c:Lcom/snapchat/android/database/vtable/DbVirtualTable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/database/table/DbTable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->b:Lcom/snapchat/android/database/table/DbTable;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->c:Lcom/snapchat/android/database/vtable/DbVirtualTable;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/database/vtable/DbVirtualTable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->b:Lcom/snapchat/android/database/table/DbTable;

    .line 31
    iput-object p2, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->c:Lcom/snapchat/android/database/vtable/DbVirtualTable;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/snapchat/android/dev/SimpleCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->b:Lcom/snapchat/android/database/table/DbTable;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->b:Lcom/snapchat/android/database/table/DbTable;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/DbTable;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->b:Lcom/snapchat/android/database/table/DbTable;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/DbTable;->i()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->c:Lcom/snapchat/android/database/vtable/DbVirtualTable;

    invoke-virtual {v1}, Lcom/snapchat/android/database/vtable/DbVirtualTable;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->c:Lcom/snapchat/android/database/vtable/DbVirtualTable;

    invoke-virtual {v2}, Lcom/snapchat/android/database/vtable/DbVirtualTable;->d()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/snapchat/android/dev/SimpleCursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->a:Landroid/database/Cursor;

    .line 56
    iput-object p1, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->a:Landroid/database/Cursor;

    .line 58
    invoke-virtual {p0}, Lcom/snapchat/android/dev/SimpleCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 62
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_0
    return-void
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/dev/SimpleCursorLoader;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/snapchat/android/dev/SimpleCursorLoader;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/dev/SimpleCursorLoader;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 93
    invoke-virtual {p0}, Lcom/snapchat/android/dev/SimpleCursorLoader;->onStopLoading()V

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->a:Landroid/database/Cursor;

    .line 99
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->a:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/dev/SimpleCursorLoader;->a(Landroid/database/Cursor;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/dev/SimpleCursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/dev/SimpleCursorLoader;->a:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/dev/SimpleCursorLoader;->forceLoad()V

    .line 75
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/snapchat/android/dev/SimpleCursorLoader;->cancelLoad()Z

    .line 80
    return-void
.end method
