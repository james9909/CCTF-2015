.class public Lcom/snapchat/android/content/SnapchatCursor;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/content/SnapchatCursor;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/snapchat/android/content/SnapchatCursor;->a:Landroid/os/Bundle;

    .line 36
    :cond_0
    return-object p1
.end method
