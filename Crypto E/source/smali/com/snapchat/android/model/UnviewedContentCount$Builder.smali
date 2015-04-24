.class public Lcom/snapchat/android/model/UnviewedContentCount$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/UnviewedContentCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field numWithOnlyUnviewedCash:I

.field numWithOnlyUnviewedChats:I

.field numWithUnviewedContent:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/snapchat/android/model/UnviewedContentCount$Builder;
    .locals 0
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/snapchat/android/model/UnviewedContentCount$Builder;->numWithUnviewedContent:I

    .line 41
    return-object p0
.end method

.method public a()Lcom/snapchat/android/model/UnviewedContentCount;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/snapchat/android/model/UnviewedContentCount;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/model/UnviewedContentCount;-><init>(Lcom/snapchat/android/model/UnviewedContentCount$Builder;Lcom/snapchat/android/model/UnviewedContentCount$1;)V

    return-object v0
.end method

.method public b(I)Lcom/snapchat/android/model/UnviewedContentCount$Builder;
    .locals 0
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/snapchat/android/model/UnviewedContentCount$Builder;->numWithOnlyUnviewedChats:I

    .line 46
    return-object p0
.end method

.method public c(I)Lcom/snapchat/android/model/UnviewedContentCount$Builder;
    .locals 0
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/snapchat/android/model/UnviewedContentCount$Builder;->numWithOnlyUnviewedCash:I

    .line 51
    return-object p0
.end method
