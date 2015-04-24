.class public Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/util/system/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->b:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->c:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->d:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->a:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->e:J

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->b:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->c:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->d:Ljava/lang/String;

    .line 45
    iput-wide p4, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->e:J

    .line 46
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->e:J

    return-wide v0
.end method
