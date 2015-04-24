.class public Lcom/snapchat/android/util/IdentityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/model/UserPrefs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/IdentityUtils;-><init>(Lcom/snapchat/android/model/UserPrefs;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/UserPrefs;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/util/IdentityUtils;->a:Lcom/snapchat/android/model/UserPrefs;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/snapchat/android/util/IdentityUtils;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/util/IdentityUtils;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/IdentityUtils;->a:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aJ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/IdentityUtils;->a:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
