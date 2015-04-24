.class public Lcom/snapchat/android/discover/model/DSnapVideobryo;
.super Lcom/snapchat/android/discover/model/DSnapbryo;
.source "SourceFile"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/model/DSnapVideobryo;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/model/DSnapbryo;-><init>(Lcom/snapchat/android/discover/model/DSnapbryo;)V

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/model/DSnapbryo;-><init>(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/discover/model/DSnapbryo;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapVideobryo;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/model/DSnapVideobryo;-><init>(Lcom/snapchat/android/discover/model/DSnapVideobryo;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/DSnapVideobryo;->c:Z

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x2

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/DSnapVideobryo;->c:Z

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapVideobryo;->a()Lcom/snapchat/android/discover/model/DSnapbryo;

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lorg/apache/commons/lang3/NotImplementedException;

    const-string v1, "Currently we only send the screenshot of the discover video when the user double taps"

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic e()Lcom/snapchat/android/model/AnnotatedMediabryo;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapVideobryo;->a()Lcom/snapchat/android/discover/model/DSnapbryo;

    move-result-object v0

    return-object v0
.end method
