.class public Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog;
.super Lcom/snapchat/android/ui/dialog/TwoButtonDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog$PostToStoryDialogCallback;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog$PostToStoryDialogCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/PostToStory;Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog$PostToStoryDialogCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 23
    const/4 v0, 0x0

    const v1, 0x7f0c0142

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c003d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p3, p0, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog;->a:Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog$PostToStoryDialogCallback;

    .line 27
    invoke-virtual {p2}, Lcom/snapchat/android/model/PostToStory;->d()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {p2}, Lcom/snapchat/android/model/PostToStory;->h()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {p2}, Lcom/snapchat/android/model/PostToStory;->g()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {p2}, Lcom/snapchat/android/model/PostToStory;->k()Ljava/lang/String;

    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    const v0, 0x7f0c0168

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/model/PostToStory;->l()Ljava/lang/String;

    move-result-object v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    const v1, 0x7f0c0167

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v6

    aput-object v2, v5, v7

    const/4 v4, 0x2

    aput-object v2, v5, v4

    const/4 v4, 0x3

    aput-object v3, v5, v4

    const/4 v4, 0x4

    aput-object v2, v5, v4

    const/4 v2, 0x5

    aput-object v3, v5, v2

    invoke-static {v1, v5}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    :cond_1
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog;->a:Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog$PostToStoryDialogCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog$PostToStoryDialogCallback;->a(Z)V

    .line 55
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog;->a:Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog$PostToStoryDialogCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog$PostToStoryDialogCallback;->a(Z)V

    .line 50
    return-void
.end method
