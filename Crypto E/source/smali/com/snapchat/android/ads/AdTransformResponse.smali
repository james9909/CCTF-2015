.class public Lcom/snapchat/android/ads/AdTransformResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ads/AdTransformResponse$1;,
        Lcom/snapchat/android/ads/AdTransformResponse$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Exception;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/snapchat/android/ads/AdTransformResponse;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/snapchat/android/ads/AdTransformResponse;->b:Ljava/lang/Exception;

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/snapchat/android/ads/AdTransformResponse$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ads/AdTransformResponse;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/snapchat/android/ads/AdTransformResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Exception;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ads/AdTransformResponse;->b:Ljava/lang/Exception;

    return-object v0
.end method
