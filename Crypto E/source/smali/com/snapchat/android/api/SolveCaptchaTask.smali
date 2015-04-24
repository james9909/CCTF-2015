.class public Lcom/snapchat/android/api/SolveCaptchaTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;
    }
.end annotation


# static fields
.field private static final CAPTCHA_ID_PARAM:Ljava/lang/String; = "captcha_id"

.field private static final CAPTCHA_SOLUTION_PARAM:Ljava/lang/String; = "captcha_solution"

.field private static final TASK_NAME:Ljava/lang/String; = "SolveCaptchaTask"


# instance fields
.field private mCaptchaId:Ljava/lang/String;

.field private mInterface:Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;

.field private mSelectedCaptchas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 34
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 38
    :cond_2
    iput-object p1, p0, Lcom/snapchat/android/api/SolveCaptchaTask;->mCaptchaId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/snapchat/android/api/SolveCaptchaTask;->mSelectedCaptchas:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lcom/snapchat/android/api/SolveCaptchaTask;->mInterface:Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;

    .line 41
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "/bq/solve_captcha"

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api/RequestTask;->a(Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/api/SolveCaptchaTask;->mInterface:Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;

    if-eqz v0, :cond_0

    .line 83
    const/16 v0, 0x193

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/api/SolveCaptchaTask;->mInterface:Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;

    invoke-interface {v0}, Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;->c()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api/SolveCaptchaTask;->mInterface:Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;

    invoke-interface {v0}, Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;->d()V

    goto :goto_0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    const-string v2, "username"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "captcha_id"

    iget-object v2, p0, Lcom/snapchat/android/api/SolveCaptchaTask;->mCaptchaId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/api/SolveCaptchaTask;->mSelectedCaptchas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_1

    .line 63
    :cond_2
    const-string v0, "captcha_solution"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object v1
.end method

.method public b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/api/SolveCaptchaTask;->mInterface:Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api/SolveCaptchaTask;->mInterface:Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;

    invoke-interface {v0}, Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;->b()V

    .line 77
    :cond_0
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "SolveCaptchaTask"

    return-object v0
.end method
