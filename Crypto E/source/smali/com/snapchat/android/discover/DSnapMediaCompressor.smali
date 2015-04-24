.class public Lcom/snapchat/android/discover/DSnapMediaCompressor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static b:Lcom/snapchat/android/discover/DSnapMediaCompressor;


# instance fields
.field protected a:Lcom/snapchat/android/util/GsonWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static a()Lcom/snapchat/android/discover/DSnapMediaCompressor;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/snapchat/android/discover/DSnapMediaCompressor;->b:Lcom/snapchat/android/discover/DSnapMediaCompressor;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/snapchat/android/discover/DSnapMediaCompressor;

    invoke-direct {v0}, Lcom/snapchat/android/discover/DSnapMediaCompressor;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/DSnapMediaCompressor;->b:Lcom/snapchat/android/discover/DSnapMediaCompressor;

    .line 57
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/DSnapMediaCompressor;->b:Lcom/snapchat/android/discover/DSnapMediaCompressor;

    return-object v0
.end method
