.class public Lcom/snapchat/android/ads/AdTransformResponse$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ads/AdTransformResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Lcom/snapchat/android/ads/AdTransformResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/snapchat/android/ads/AdTransformResponse$Builder;->b:Ljava/lang/Exception;

    .line 53
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/ads/AdTransformResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/snapchat/android/ads/AdTransformResponse$Builder;->a:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public a()Lcom/snapchat/android/ads/AdTransformResponse;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcom/snapchat/android/ads/AdTransformResponse;

    iget-object v1, p0, Lcom/snapchat/android/ads/AdTransformResponse$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/ads/AdTransformResponse$Builder;->b:Ljava/lang/Exception;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/ads/AdTransformResponse;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/snapchat/android/ads/AdTransformResponse$1;)V

    return-object v0
.end method
