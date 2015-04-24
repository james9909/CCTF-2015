.class public Lcom/snapchat/android/model/UnviewedContentCount;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/UnviewedContentCount$1;,
        Lcom/snapchat/android/model/UnviewedContentCount$Builder;
    }
.end annotation


# instance fields
.field private mNumWithOnlyUnreadChats:I

.field private mNumWithOnlyUnviewedCash:I

.field private mNumWithUnviewedContent:I


# direct methods
.method private constructor <init>(Lcom/snapchat/android/model/UnviewedContentCount$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget v0, p1, Lcom/snapchat/android/model/UnviewedContentCount$Builder;->numWithUnviewedContent:I

    iput v0, p0, Lcom/snapchat/android/model/UnviewedContentCount;->mNumWithUnviewedContent:I

    .line 18
    iget v0, p1, Lcom/snapchat/android/model/UnviewedContentCount$Builder;->numWithOnlyUnviewedChats:I

    iput v0, p0, Lcom/snapchat/android/model/UnviewedContentCount;->mNumWithOnlyUnreadChats:I

    .line 19
    iget v0, p1, Lcom/snapchat/android/model/UnviewedContentCount$Builder;->numWithOnlyUnviewedCash:I

    iput v0, p0, Lcom/snapchat/android/model/UnviewedContentCount;->mNumWithOnlyUnviewedCash:I

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/model/UnviewedContentCount$Builder;Lcom/snapchat/android/model/UnviewedContentCount$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/UnviewedContentCount;-><init>(Lcom/snapchat/android/model/UnviewedContentCount$Builder;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/snapchat/android/model/UnviewedContentCount;->mNumWithUnviewedContent:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/snapchat/android/model/UnviewedContentCount;->mNumWithOnlyUnreadChats:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/snapchat/android/model/UnviewedContentCount;->mNumWithOnlyUnviewedCash:I

    return v0
.end method
